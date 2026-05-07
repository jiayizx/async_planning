(define (domain shoulder_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assistant_available)
    (slap_test_done)
    (impingement_test_done)
    (ac_joint_test_done)
    (bicep_test_done)
    (frozen_shoulder_test_done)
  )

  (:durative-action step1_ask_assistant
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assistant_available)))
  )

  (:durative-action step2_slap_test
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (assistant_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slap_test_done)))
  )

  (:durative-action step3_impingement_test
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (assistant_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (impingement_test_done)))
  )

  (:durative-action step4_ac_joint_test
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (assistant_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ac_joint_test_done)))
  )

  (:durative-action step5_bicep_test
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (assistant_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bicep_test_done)))
  )

  (:durative-action step6_frozen_shoulder_test
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (assistant_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frozen_shoulder_test_done)))
  )
)