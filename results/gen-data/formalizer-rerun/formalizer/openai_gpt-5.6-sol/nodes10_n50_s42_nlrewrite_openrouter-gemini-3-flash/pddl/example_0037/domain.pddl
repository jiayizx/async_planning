(define (domain hold-pick)
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
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (pick_aligned)
    (hand_relaxed)
    (pick_angle_adjusted)
    (thumb_pressure_applied)
    (plectrum_picked_up)
    (grip_tested)
    (index_finger_positioned)
    (thumb_placed)
    (pick_held)
    (pick_cleaned)
  )

  (:durative-action align_pick
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (hand_relaxed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pick_aligned))
    )
  )

  (:durative-action relax_hand
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (plectrum_picked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hand_relaxed))
    )
  )

  (:durative-action adjust_pick_angle
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (index_finger_positioned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pick_angle_adjusted))
    )
  )

  (:durative-action apply_thumb_pressure
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (thumb_placed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (thumb_pressure_applied))
    )
  )

  (:durative-action pick_up_plectrum
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plectrum_picked_up))
    )
  )

  (:durative-action test_grip
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (pick_angle_adjusted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grip_tested))
    )
  )

  (:durative-action position_index_finger
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (plectrum_picked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (index_finger_positioned))
    )
  )

  (:durative-action place_thumb
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (pick_aligned))
      (at start (pick_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (thumb_placed))
    )
  )

  (:durative-action check_wrist_tension
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (thumb_pressure_applied))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pick_held))
    )
  )

  (:durative-action clean_pick
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pick_cleaned))
    )
  )
)