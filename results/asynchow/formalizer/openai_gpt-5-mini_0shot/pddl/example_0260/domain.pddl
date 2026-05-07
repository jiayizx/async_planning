(define (domain diagnose-shoulder)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assist_arranged_done)
    (slap_test_done)
    (impingement_test_done)
    (ac_test_done)
    (bicep_test_done)
    (frozen_shoulder_test_done)
  )

  (:durative-action do_step1_ask_assist
    :parameters ()
    :duration (= ?duration 300)  ;; 5 minutes = 300 seconds
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (assist_arranged_done))
    )
  )

  (:durative-action do_step2_slap_test
    :parameters ()
    :duration (= ?duration 600)  ;; 10 minutes = 600 seconds
    :condition (and (at start (step_pending step2)) (at start (assist_arranged_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (slap_test_done))
    )
  )

  (:durative-action do_step3_impingement_test
    :parameters ()
    :duration (= ?duration 300)  ;; 5 minutes = 300 seconds
    :condition (and (at start (step_pending step3)) (at start (assist_arranged_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (impingement_test_done))
    )
  )

  (:durative-action do_step4_ac_test
    :parameters ()
    :duration (= ?duration 300)  ;; 5 minutes = 300 seconds
    :condition (and (at start (step_pending step4)) (at start (assist_arranged_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (ac_test_done))
    )
  )

  (:durative-action do_step5_bicep_test
    :parameters ()
    :duration (= ?duration 300)  ;; 5 minutes = 300 seconds
    :condition (and (at start (step_pending step5)) (at start (assist_arranged_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (bicep_test_done))
    )
  )

  (:durative-action do_step6_frozen_shoulder_test
    :parameters ()
    :duration (= ?duration 600)  ;; 10 minutes = 600 seconds
    :condition (and (at start (step_pending step6)) (at start (assist_arranged_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (frozen_shoulder_test_done))
    )
  )
)
