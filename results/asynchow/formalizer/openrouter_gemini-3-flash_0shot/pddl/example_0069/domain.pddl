(define (domain car_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (out_of_bed)
    (outfit_prepared)
    (bathroom_visited)
    (shower_taken)
    (out_of_shower)
    (clothed)
    (at_car)
  )

  (:durative-action get_out_of_bed
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (out_of_bed)))
  )

  (:durative-action prepare_outfit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (out_of_bed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_prepared)))
  )

  (:durative-action go_to_bathroom
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (outfit_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bathroom_visited)))
  )

  (:durative-action take_shower
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (bathroom_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_taken)))
  )

  (:durative-action get_out_of_shower
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bathroom_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (out_of_shower)))
  )

  (:durative-action put_on_clothes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (shower_taken)) (at start (out_of_shower)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothed)))
  )

  (:durative-action go_to_car
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (clothed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_car)))
  )
)