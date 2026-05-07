(define (domain run_5k)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (signed_up_done)
    (practice_done)
    (eat_well_done)
    (rest_done)
    (arrived_done)
  )

  (:durative-action do_step1_sign_up
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
             (at start (not (step_pending step1)))
             (at end (step_done step1))
             (at end (signed_up_done))
            )
  )

  (:durative-action do_step2_practice
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step2)) (at start (signed_up_done)))
    :effect (and
             (at start (not (step_pending step2)))
             (at end (step_done step2))
             (at end (practice_done))
            )
  )

  (:durative-action do_step3_eat_well
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step3)) (at start (signed_up_done)))
    :effect (and
             (at start (not (step_pending step3)))
             (at end (step_done step3))
             (at end (eat_well_done))
            )
  )

  (:durative-action do_step4_rest
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step4)) (at start (practice_done)) (at start (eat_well_done)))
    :effect (and
             (at start (not (step_pending step4)))
             (at end (step_done step4))
             (at end (rest_done))
            )
  )

  (:durative-action do_step5_arrive
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (rest_done)))
    :effect (and
             (at start (not (step_pending step5)))
             (at end (step_done step5))
             (at end (arrived_done))
            )
  )
)
