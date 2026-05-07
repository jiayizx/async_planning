(define (domain bathtub_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (solution_mixed)
    (tub_rubbed)
    (tub_rinsed)
    (weekly_cleaning_done)
  )

  (:durative-action mix_solution
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solution_mixed)))
  )

  (:durative-action rub_tub
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (solution_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tub_rubbed)))
  )

  (:durative-action rinse_tub
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tub_rubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tub_rinsed)))
  )

  (:durative-action weekly_cleaning
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weekly_cleaning_done)))
  )
)