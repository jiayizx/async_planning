(define (domain morning_routine)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shower_done)
    (dressed_done)
    (alarm_done)
    (lunch_done)
    (walk_done)
  )

  (:durative-action do_shower
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (alarm_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (shower_done))
            )
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)) (at start (alarm_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (dressed_done))
            )
  )

  (:durative-action turn_off_alarm
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (alarm_done))
            )
  )

  (:durative-action pack_lunch
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (lunch_done))
            )
  )

  (:durative-action walk_to_bus_stop
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)) (at start (dressed_done)) (at start (alarm_done)) (at start (lunch_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (walk_done))
            )
  )
)
