(define (domain kumquat_eating)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ripe_chosen)
    (washed_dried)
    (rubbed)
    (seeds_removed)
    (eaten)
    (stored)
  )

  (:durative-action choose_ripe
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ripe_chosen)))
  )

  (:durative-action wash_dry
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (ripe_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed_dried)))
  )

  (:durative-action rub_fruit
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (washed_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rubbed)))
  )

  (:durative-action remove_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (washed_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seeds_removed)))
  )

  (:durative-action eat_kumquat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (rubbed)) (at start (seeds_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eaten)))
  )

  (:durative-action store_extra
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stored)))
  )
)