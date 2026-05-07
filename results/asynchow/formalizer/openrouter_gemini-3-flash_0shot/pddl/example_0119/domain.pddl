(define (domain laundry_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (softener_available)
    (detergent_available)
    (clothes_ready)
    (machine_ready)
    (clothes_loaded)
    (detergent_loaded)
    (laundry_complete)
  )

  (:durative-action buy_softener
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (softener_available)))
  )

  (:durative-action buy_detergent
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (detergent_available)))
  )

  (:durative-action gather_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (softener_available)) (at start (detergent_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_ready)))
  )

  (:durative-action open_washing_machine
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (clothes_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_ready)))
  )

  (:durative-action put_clothes_in
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (machine_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_loaded)))
  )

  (:durative-action add_detergent
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (machine_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (detergent_loaded)))
  )

  (:durative-action turn_on_machine
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (clothes_loaded)) (at start (detergent_loaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laundry_complete)))
  )
)