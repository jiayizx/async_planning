(define (domain school-morning)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (shower_completed)
    (dressed_for_school)
    (alarm_turned_off)
    (lunch_packed)
    (bus_stop_reached)
  )

  (:durative-action take_morning_shower
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (alarm_turned_off))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shower_completed))
    )
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (shower_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dressed_for_school))
    )
  )

  (:durative-action wake_up_and_turn_off_alarm
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (alarm_turned_off))
    )
  )

  (:durative-action pack_healthy_lunch
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lunch_packed))
    )
  )

  (:durative-action walk_to_bus_stop
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (dressed_for_school))
      (at start (lunch_packed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bus_stop_reached))
    )
  )
)