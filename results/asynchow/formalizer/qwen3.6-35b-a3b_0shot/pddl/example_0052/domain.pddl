(define (domain baja_racing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (step1_done)
               (step2_done)
               (step3_done)
               (step4_done)
               (step5_done))
  (:durative-action get_good_at_racing
    :parameters ()
    :duration 7776000
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (step1_done))))
  (:durative-action apply_to_contest
    :parameters ()
    :duration 86400
    :condition (and (at start (step_pending step2))
                    (at start (step1_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (step2_done))))
  (:durative-action pay_fees
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step3))
                    (at start (step2_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (step3_done))))
  (:durative-action bring_racing_gear
    :parameters ()
    :duration 21600
    :condition (and (at start (step_pending step4))
                    (at start (step3_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (step4_done))))
  (:durative-action bring_friends
    :parameters ()
    :duration 21600
    :condition (and (at start (step_pending step5))
                    (at start (step3_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (step5_done))))
)