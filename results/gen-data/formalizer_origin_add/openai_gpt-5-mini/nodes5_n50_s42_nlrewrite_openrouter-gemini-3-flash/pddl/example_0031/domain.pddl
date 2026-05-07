(define (domain starfish_acclimation)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (float_done)
    (drip_done)
    (prepare_done)
    (transfer_done)
    (net_done)
  )

  (:durative-action do_step1_float_bag
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (prepare_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (float_done))
            )
  )

  (:durative-action do_step2_drip_acclimate
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (float_done)) (at start (prepare_done)) (at start (transfer_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (drip_done))
            )
  )

  (:durative-action do_step3_prepare_bucket
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (prepare_done))
            )
  )

  (:durative-action do_step4_transfer_starfish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (float_done)) (at start (prepare_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (transfer_done))
            )
  )

  (:durative-action do_step5_net_and_place
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (float_done)) (at start (drip_done)) (at start (prepare_done)) (at start (transfer_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (net_done))
            )
  )
)
