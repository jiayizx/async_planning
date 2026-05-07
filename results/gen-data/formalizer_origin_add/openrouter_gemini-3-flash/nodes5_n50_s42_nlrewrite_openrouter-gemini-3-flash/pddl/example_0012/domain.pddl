(define (domain school_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (alarm_off)
    (shower_taken)
    (dressed)
    (lunch_packed)
    (at_bus_stop)
  )

  (:durative-action wake_up
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alarm_off)))
  )

  (:durative-action take_shower
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (alarm_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_taken)))
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shower_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action pack_lunch
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lunch_packed)))
  )

  (:durative-action walk_to_bus
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (dressed)) (at start (lunch_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_bus_stop)))
  )
)