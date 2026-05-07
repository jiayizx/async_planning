(define (domain look_good_for_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (schedule_done)
    (groom_done)
    (hair_done)
    (travelplan_done)
  )

  ;; Step 1: Groom your hands and feet (3600s)
  (:durative-action do_groom
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (groom_done))
    )
  )

  ;; Step 2: Make a hair appointment (7200s)
  (:durative-action do_hair_appointment
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (schedule_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (hair_done))
    )
  )

  ;; Step 3: Figure out how to get there (1800s)
  (:durative-action do_travel_planning
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (schedule_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (travelplan_done))
    )
  )

  ;; Step 4: Schedule the party in your planner (900s)
  (:durative-action do_schedule
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (schedule_done))
    )
  )
)
