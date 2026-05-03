(define (problem diagnose_shoulder)
  (:domain shoulder_diagnosis)
  
  (:init
    (ask_assistant_pending)
    (slap_test_pending)
    (impingement_test_pending)
    (ac_joint_test_pending)
    (bicep_test_pending)
    (frozen_shoulder_test_pending)
  )

  (:goal (and
    (ask_assistant_done)
    (slap_test_done)
    (impingement_test_done)
    (ac_joint_test_done)
    (bicep_test_done)
    (frozen_shoulder_test_done)
  ))
)