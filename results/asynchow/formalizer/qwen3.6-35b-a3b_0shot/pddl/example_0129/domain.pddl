(define (domain get_up_couch)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (decide_done)
               (space_found)
               (left_foot_out)
               (right_foot_out)
               (body_up))
  (:durative-action decide_to_stand_up
    :duration 1
    :condition (at start (step_pending step1))
    :effect (at start (not (step_pending step1))
                (at end (step_done step1))
                (at end decide_done)))
  (:durative-action find_open_space
    :duration 1
    :condition (and (at start (step_pending step2))
                    (at start decide_done))
    :effect (at start (not (step_pending step2))
                (at end (step_done step2))
                (at end space_found)))
  (:durative-action stick_left_foot_out
    :duration 1
    :condition (and (at start (step_pending step3))
                    (at start space_found))
    :effect (at start (not (step_pending step3))
                (at end (step_done step3))
                (at end left_foot_out)))
  (:durative-action stick_right_foot_out
    :duration 1
    :condition (and (at start (step_pending step4))
                    (at start space_found))
    :effect (at start (not (step_pending step4))
                (at end (step_done step4))
                (at end right_foot_out)))
  (:durative-action move_body_upwards
    :duration 1
    :condition (and (at start (step_pending step5))
                    (at start left_foot_out)
                    (at start right_foot_out))
    :effect (at start (not (step_pending step5))
                (at end (step_done step5))
                (at end body_up))))