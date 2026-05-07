(define (domain put_on_left_sock)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (sock_grabbed)
               (sat_down)
               (foot_raised)
               (sock_over_toes)
               (sock_on_foot))
  (:durative-action do_step1
    :parameters ()
    :duration 1
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (sock_grabbed))))
  (:durative-action do_step2
    :parameters ()
    :duration 5
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (sat_down))))
  (:durative-action do_step3
    :parameters ()
    :duration 1
    :condition (and (at start (step_pending step3))
                    (at start (sock_grabbed))
                    (at start (sat_down)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (foot_raised))))
  (:durative-action do_step4
    :parameters ()
    :duration 1
    :condition (and (at start (step_pending step4))
                    (at start (foot_raised)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (sock_over_toes))))
  (:durative-action do_step5
    :parameters ()
    :duration 1
    :condition (and (at start (step_pending step5))
                    (at start (sock_over_toes)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (sock_on_foot))))
)