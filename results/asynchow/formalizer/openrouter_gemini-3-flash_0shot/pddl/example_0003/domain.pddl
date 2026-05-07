(define (domain bath_task)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_off)
    (bubble_added)
    (water_off)
    (tub_filled)
    (towel_ready)
  )

  (:durative-action take_off_clothes
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_off)))
  )

  (:durative-action add_bubble_bath
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (clothes_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bubble_added)))
  )

  (:durative-action fill_up_tub
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tub_filled)))
  )

  (:durative-action set_out_towel
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tub_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (towel_ready)))
  )

  (:durative-action turn_off_water
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (bubble_added)) (at start (towel_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_off)))
  )
)