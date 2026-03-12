(define (domain wimbledon_tickets)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
  )

  (:durative-action do_step1_pay_balance
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step1_pending) (step8_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_download_app
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step2_pending) (step10_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_create_account
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_submit_application
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step4_pending) (step9_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5_sign_up_waitlist
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step5_pending) (step9_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6_access_tickets
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step6_pending) (step8_done) (step10_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action do_step7_wait_ballot_drawing
    :parameters ()
    :duration (= ?duration 15552000)
    :condition (at start (and (step7_pending) (step10_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action do_step8_receive_accept_offer
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (step8_pending) (step4_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action do_step9_verify_identity
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (step9_pending) (step7_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action do_step10_opt_in_marketing
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step10_pending) (step3_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
