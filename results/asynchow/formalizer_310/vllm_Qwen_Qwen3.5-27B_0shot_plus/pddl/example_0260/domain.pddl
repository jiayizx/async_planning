(define (domain shoulder_diagnosis)
  (:requirements :durative-actions)
  
  (:predicates
    (ask_assistant_pending)
    (ask_assistant_done)
    (slap_test_pending)
    (slap_test_done)
    (impingement_test_pending)
    (impingement_test_done)
    (ac_joint_test_pending)
    (ac_joint_test_done)
    (bicep_test_pending)
    (bicep_test_done)
    (frozen_shoulder_test_pending)
    (frozen_shoulder_test_done)
  )

  (:durative-action ask_assistant
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (ask_assistant_pending))
    :effect (and (at start (not (ask_assistant_pending)))
                 (at end (ask_assistant_done)))
  )

  (:durative-action slap_test
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (slap_test_pending))
                    (at start (ask_assistant_done)))
    :effect (and (at start (not (slap_test_pending)))
                 (at end (slap_test_done)))
  )

  (:durative-action impingement_test
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (impingement_test_pending))
                    (at start (ask_assistant_done)))
    :effect (and (at start (not (impingement_test_pending)))
                 (at end (impingement_test_done)))
  )

  (:durative-action ac_joint_test
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (ac_joint_test_pending))
                    (at start (ask_assistant_done)))
    :effect (and (at start (not (ac_joint_test_pending)))
                 (at end (ac_joint_test_done)))
  )

  (:durative-action bicep_test
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (bicep_test_pending))
                    (at start (ask_assistant_done)))
    :effect (and (at start (not (bicep_test_pending)))
                 (at end (bicep_test_done)))
  )

  (:durative-action frozen_shoulder_test
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (frozen_shoulder_test_pending))
                    (at start (ask_assistant_done)))
    :effect (and (at start (not (frozen_shoulder_test_pending)))
                 (at end (frozen_shoulder_test_done)))
  )
)