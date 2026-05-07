(define (domain put_on_left_sock)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grab_sock_done)
    (sit_down_done)
    (raise_foot_done)
    (pull_over_toes_done)
    (pull_backwards_done))
  
  (:durative-action do_grab_sock
    :parameters ()
    :duration (= ?duration 1)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (grab_sock_done))))
  
  (:durative-action do_sit_down
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (sit_down_done))))
  
  (:durative-action do_raise_foot
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (step_pending step3))
      (at start (grab_sock_done))
      (at start (sit_down_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (raise_foot_done))))
  
  (:durative-action do_pull_over_toes
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (step_pending step4))
      (at start (raise_foot_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (pull_over_toes_done))))
  
  (:durative-action do_pull_backwards
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (step_pending step5))
      (at start (pull_over_toes_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (pull_backwards_done))))
)