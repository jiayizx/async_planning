(define (domain hold_pick)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pick_cleaned)
    (plectrum_picked)
    (hand_relaxed)
    (finger_positioned)
    (pick_aligned)
    (thumb_placed)
    (angle_adjusted)
    (pressure_applied)
    (grip_tested)
    (tension_checked)
  )

  (:durative-action clean_pick
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pick_cleaned)))
  )

  (:durative-action pick_up_plectrum
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plectrum_picked)))
  )

  (:durative-action relax_hand
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (plectrum_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hand_relaxed)))
  )

  (:durative-action position_finger
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (plectrum_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (finger_positioned)))
  )

  (:durative-action align_pick
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (hand_relaxed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pick_aligned)))
  )

  (:durative-action place_thumb
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (pick_aligned)) (at start (pick_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thumb_placed)))
  )

  (:durative-action adjust_angle
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (finger_positioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (angle_adjusted)))
  )

  (:durative-action apply_pressure
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (thumb_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pressure_applied)))
  )

  (:durative-action test_grip
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (angle_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grip_tested)))
  )

  (:durative-action check_tension
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pressure_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tension_checked)))
  )
)