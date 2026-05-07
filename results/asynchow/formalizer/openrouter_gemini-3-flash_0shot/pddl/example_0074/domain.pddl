(define (domain computer_startup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_desk)
    (seated)
    (hand_at_pc_button)
    (hand_at_monitor_button)
    (pc_powered)
    (monitor_powered)
  )

  (:durative-action approach_desk
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_desk)))
  )

  (:durative-action sit_down
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (at_desk)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seated)))
  )

  (:durative-action move_hand_pc
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (seated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hand_at_pc_button)))
  )

  (:durative-action reach_monitor
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (seated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hand_at_monitor_button)))
  )

  (:durative-action hold_pc_button
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (hand_at_pc_button)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pc_powered)))
  )

  (:durative-action press_monitor_button
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (hand_at_monitor_button)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monitor_powered)))
  )
)