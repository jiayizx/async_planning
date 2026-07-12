(define (domain leave-school)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (belongings_packed)
    (classroom_powered_down)
    (assignment_submitted)
    (left_school)
    (classroom_locked)
  )

  (:durative-action pack_belongings
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (assignment_submitted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (belongings_packed))
    )
  )

  (:durative-action power_down_classroom
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (classroom_powered_down))
    )
  )

  (:durative-action submit_assignment
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (assignment_submitted))
    )
  )

  (:durative-action walk_to_parking_lot
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (belongings_packed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (left_school))
    )
  )

  (:durative-action lock_classroom
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (classroom_powered_down))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (classroom_locked))
    )
  )
)