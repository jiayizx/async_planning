(define (domain dental_assistant_tx)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
  )

  (:durative-action do_step1_submit_registration
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step1_pending)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_enroll_program
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_bls_cpr
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_formal_training
    :parameters ()
    :duration (= ?duration 23328000)
    :condition (and (at start (step4_pending)) (at start (step2_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5_jurisprudence_exam
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)
