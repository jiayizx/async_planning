(define (domain fundraiser)
  (:requirements :typing :durative-actions)
  (:types step)
  (:constants step1 step2 step3 step4 step5 step6 step7 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (baked_done)
    (social_setup_done)
    (sent_done)
    (collected_done)
    (repeat_done)
    (table_done)
    (offer_done)
  )

  (:durative-action do_step1_bake
    :duration (= ?duration 18000)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (baked_done))
    )
  )

  (:durative-action do_step2_social_setup
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (social_setup_done))
    )
  )

  (:durative-action do_step3_send
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (social_setup_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (sent_done))
    )
  )

  (:durative-action do_step4_collect
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (sent_done)) (at start (offer_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (collected_done))
    )
  )

  (:durative-action do_step5_repeat
    :duration (= ?duration 1728000)
    :condition (and (at start (step_pending step5)) (at start (collected_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (repeat_done))
    )
  )

  (:durative-action do_step6_table_setup
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (baked_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (table_done))
    )
  )

  (:durative-action do_step7_offer
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (table_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (offer_done))
    )
  )
)
