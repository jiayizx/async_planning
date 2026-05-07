(define (domain remove_caulking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (slow_work_done)
    (putty_knife_done)
    (pliers_done)
    (scraping_done)
  )

  (:durative-action work_slowly
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slow_work_done)))
  )

  (:durative-action use_putty_knife
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (putty_knife_done)))
  )

  (:durative-action scrape_remnants
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (putty_knife_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scraping_done)))
  )

  (:durative-action use_pliers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (scraping_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pliers_done)))
  )
)