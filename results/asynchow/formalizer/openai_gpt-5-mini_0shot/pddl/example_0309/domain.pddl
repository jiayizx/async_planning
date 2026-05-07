(define (domain read-palms)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_hand_done)
    (identify_lines_done)
    (interpret_heart_done)
    (examine_head_done)
    (evaluate_life_done)
    (study_fate_done)
    (determine_handshape_done)
    (look_mounts_done)
    (examine_size_done)
  )

  ;; Step 1: Choose a hand (1 minute = 60 seconds)
  (:durative-action do_step1_choose_hand
     :parameters (?s - step)
     :duration (= ?duration 60)
     :condition (and (at start (step_pending ?s)) (at start (determine_handshape_done)) (at start (look_mounts_done)) (at start (examine_size_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (choose_hand_done)))
  )

  ;; Step 2: Identify the four major lines (2 minutes = 120 seconds)
  (:durative-action do_step2_identify_lines
     :parameters (?s - step)
     :duration (= ?duration 120)
     :condition (and (at start (step_pending ?s)) (at start (choose_hand_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (identify_lines_done)))
  )

  ;; Step 3: Interpret the heart line (3 minutes = 180 seconds)
  (:durative-action do_step3_interpret_heart
     :parameters (?s - step)
     :duration (= ?duration 180)
     :condition (and (at start (step_pending ?s)) (at start (identify_lines_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interpret_heart_done)))
  )

  ;; Step 4: Examine the head line (2 minutes = 120 seconds)
  (:durative-action do_step4_examine_head
     :parameters (?s - step)
     :duration (= ?duration 120)
     :condition (and (at start (step_pending ?s)) (at start (identify_lines_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (examine_head_done)))
  )

  ;; Step 5: Evaluate the life line (2 minutes = 120 seconds)
  (:durative-action do_step5_evaluate_life
     :parameters (?s - step)
     :duration (= ?duration 120)
     :condition (and (at start (step_pending ?s)) (at start (identify_lines_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (evaluate_life_done)))
  )

  ;; Step 6: Study the fate line (3 minutes = 180 seconds)
  (:durative-action do_step6_study_fate
     :parameters (?s - step)
     :duration (= ?duration 180)
     :condition (and (at start (step_pending ?s)) (at start (identify_lines_done)))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (study_fate_done)))
  )

  ;; Step 7: Determine the hand shape (2 minutes = 120 seconds)
  (:durative-action do_step7_determine_handshape
     :parameters (?s - step)
     :duration (= ?duration 120)
     :condition (at start (step_pending ?s))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (determine_handshape_done)))
  )

  ;; Step 8: Look at the mounts (3 minutes = 180 seconds)
  (:durative-action do_step8_look_mounts
     :parameters (?s - step)
     :duration (= ?duration 180)
     :condition (at start (step_pending ?s))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (look_mounts_done)))
  )

  ;; Step 9: Examine the hand and finger size (2 minutes = 120 seconds)
  (:durative-action do_step9_examine_size
     :parameters (?s - step)
     :duration (= ?duration 120)
     :condition (at start (step_pending ?s))
     :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (examine_size_done)))
  )
)
