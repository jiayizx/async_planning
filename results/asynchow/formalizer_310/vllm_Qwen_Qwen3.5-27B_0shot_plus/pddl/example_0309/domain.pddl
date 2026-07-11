(define (domain read_palms)
  (:requirements :durative-actions)
  
  (:predicates
    (choose_hand_pending)
    (choose_hand_done)
    (identify_lines_pending)
    (identify_lines_done)
    (interpret_heart_pending)
    (interpret_heart_done)
    (examine_head_pending)
    (examine_head_done)
    (evaluate_life_pending)
    (evaluate_life_done)
    (study_fate_pending)
    (study_fate_done)
    (determine_shape_pending)
    (determine_shape_done)
    (look_mounts_pending)
    (look_mounts_done)
    (examine_size_pending)
    (examine_size_done)
  )

  (:durative-action choose_hand
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (choose_hand_pending))
                    (at start (determine_shape_done))
                    (at start (look_mounts_done))
                    (at start (examine_size_done)))
    :effect (and (at start (not (choose_hand_pending)))
                 (at end (choose_hand_done)))
  )

  (:durative-action identify_lines
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (identify_lines_pending))
                    (at start (choose_hand_done)))
    :effect (and (at start (not (identify_lines_pending)))
                 (at end (identify_lines_done)))
  )

  (:durative-action interpret_heart
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (interpret_heart_pending))
                    (at start (identify_lines_done)))
    :effect (and (at start (not (interpret_heart_pending)))
                 (at end (interpret_heart_done)))
  )

  (:durative-action examine_head
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (examine_head_pending))
                    (at start (identify_lines_done)))
    :effect (and (at start (not (examine_head_pending)))
                 (at end (examine_head_done)))
  )

  (:durative-action evaluate_life
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (evaluate_life_pending))
                    (at start (identify_lines_done)))
    :effect (and (at start (not (evaluate_life_pending)))
                 (at end (evaluate_life_done)))
  )

  (:durative-action study_fate
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (study_fate_pending))
                    (at start (identify_lines_done)))
    :effect (and (at start (not (study_fate_pending)))
                 (at end (study_fate_done)))
  )

  (:durative-action determine_shape
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (determine_shape_pending))
    :effect (and (at start (not (determine_shape_pending)))
                 (at end (determine_shape_done)))
  )

  (:durative-action look_mounts
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (look_mounts_pending))
    :effect (and (at start (not (look_mounts_pending)))
                 (at end (look_mounts_done)))
  )

  (:durative-action examine_size
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (examine_size_pending))
    :effect (and (at start (not (examine_size_pending)))
                 (at end (examine_size_done)))
  )
)
