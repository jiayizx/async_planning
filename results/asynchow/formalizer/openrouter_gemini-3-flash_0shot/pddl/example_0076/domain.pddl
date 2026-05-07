(define (domain dressing_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shirt_on)
    (underwear_on)
    (pants_on)
    (socks_on)
    (shoes_on)
    (appearance_checked)
  )

  (:durative-action put_on_shirt
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_on)))
  )

  (:durative-action put_on_underwear
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (underwear_on)))
  )

  (:durative-action put_on_pants
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (shirt_on)) (at start (underwear_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pants_on)))
  )

  (:durative-action put_on_socks
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_on)))
  )

  (:durative-action put_on_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (socks_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on)))
  )

  (:durative-action check_appearance
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (pants_on)) (at start (shoes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (appearance_checked)))
  )
)