(define (domain jacket-size)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (sleeve_length_measured) (waist_measured) (back_width_measured)
    (dimensions_recorded) (jacket_size_measured) (neck_measured)
    (chest_shoulders_checked) (torso_length_measured) (back_center_identified)
    (chest_measured) (tape_found) (bicep_measured) (outer_layers_removed)
    (standing_correctly) (alignment_noted) (tape_positioned)
    (nape_to_waist_measured) (shoulders_measured) (hip_bone_located)
    (friend_assisting) (shirt_worn) (arm_neck_noted) (mirror_space_cleared)
    (notebook_gathered) (average_calculated) (wrist_measured)
    (brand_instructions_read) (positioned_at_mirror) (tape_calibrated)
    (overarm_measured)
  )

  (:durative-action measure_sleeve_length
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (back_width_measured)) (at start (tape_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sleeve_length_measured))))

  (:durative-action measure_waist
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (chest_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_measured))))

  (:durative-action measure_back_width
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (tape_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (back_width_measured))))

  (:durative-action record_dimensions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (sleeve_length_measured)) (at start (chest_measured)) (at start (overarm_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_recorded))))

  (:durative-action compare_size_guide
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (wrist_measured)) (at start (overarm_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jacket_size_measured))))

  (:durative-action measure_neck
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (standing_correctly)) (at start (shirt_worn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neck_measured))))

  (:durative-action double_check_chest_shoulders
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (tape_found)) (at start (nape_to_waist_measured)) (at start (notebook_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chest_shoulders_checked))))

  (:durative-action measure_torso_length
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (hip_bone_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (torso_length_measured))))

  (:durative-action identify_back_center
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (standing_correctly)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (back_center_identified))))

  (:durative-action measure_chest
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (outer_layers_removed)) (at start (positioned_at_mirror)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chest_measured))))

  (:durative-action find_measuring_tape
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_found))))

  (:durative-action measure_bicep
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (notebook_gathered)) (at start (positioned_at_mirror)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bicep_measured))))

  (:durative-action remove_outer_layers
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (mirror_space_cleared)) (at start (brand_instructions_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outer_layers_removed))))

  (:durative-action stand_correctly
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (standing_correctly))))

  (:durative-action note_alignment
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (back_center_identified)) (at start (tape_found)) (at start (tape_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alignment_noted))))

  (:durative-action position_tape
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (friend_assisting)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_positioned))))

  (:durative-action measure_nape_to_waist
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (overarm_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nape_to_waist_measured))))

  (:durative-action measure_shoulders
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (shirt_worn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoulders_measured))))

  (:durative-action locate_hip_bone
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hip_bone_located))))

  (:durative-action ask_friend
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friend_assisting))))

  (:durative-action put_on_shirt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (notebook_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_worn))))

  (:durative-action note_arm_neck
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (neck_measured)) (at start (bicep_measured)) (at start (shirt_worn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arm_neck_noted))))

  (:durative-action clear_mirror_space
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_space_cleared))))

  (:durative-action gather_notebook
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (notebook_gathered))))

  (:durative-action calculate_average
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (waist_measured)) (at start (torso_length_measured)) (at start (chest_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (average_calculated))))

  (:durative-action measure_wrist
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (dimensions_recorded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wrist_measured))))

  (:durative-action read_brand_instructions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (notebook_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brand_instructions_read))))

  (:durative-action position_at_mirror
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (outer_layers_removed)) (at start (mirror_space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (positioned_at_mirror))))

  (:durative-action calibrate_tape
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_calibrated))))

  (:durative-action measure_overarm
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (shoulders_measured)) (at start (shirt_worn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (overarm_measured))))
)