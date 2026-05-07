(define (domain acnl_screenshot)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hold_L_done)
    (hold_R_done)
    (picture_taken)
    (applicable_hold_L ?s - step)
    (applicable_hold_R ?s - step)
    (applicable_take_picture ?s - step)
  )

  (:durative-action do_hold_L
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (applicable_hold_L ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hold_L_done))))

  (:durative-action do_hold_R
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (applicable_hold_R ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hold_R_done))))

  (:durative-action do_take_picture
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (applicable_take_picture ?s)) (at start (hold_L_done)) (at start (hold_R_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (picture_taken)))))
