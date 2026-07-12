(define (domain hang-picture)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (wire_distance_measured)
    (wall_spot_marked)
    (nail_hammered)
    (drywall_dust_cleaned)
    (tools_and_frame_gathered)
    (drop_cloth_laid)
    (ladder_stored)
    (desired_height_determined)
    (adhesive_bumpers_applied)
    (alignment_checked)
    (finished_work_admired)
    (frame_glass_cleaned)
    (wall_stud_found)
    (frame_hung)
    (drop_cloth_stored)
  )

  (:durative-action measure_wire_distance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (tools_and_frame_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wire_distance_measured))))

  (:durative-action mark_wall_spot
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (desired_height_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wall_spot_marked))))

  (:durative-action hammer_nail
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (wall_spot_marked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nail_hammered))))

  (:durative-action clean_drywall_dust
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (tools_and_frame_gathered))
      (at start (drop_cloth_laid))
      (at start (drop_cloth_stored)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drywall_dust_cleaned))))

  (:durative-action gather_tools_and_frame
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tools_and_frame_gathered))))

  (:durative-action lay_drop_cloth
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drop_cloth_laid))))

  (:durative-action store_ladder
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (drop_cloth_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ladder_stored))))

  (:durative-action determine_desired_height
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (tools_and_frame_gathered))
      (at start (wall_stud_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (desired_height_determined))))

  (:durative-action apply_adhesive_bumpers
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (frame_glass_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (adhesive_bumpers_applied))))

  (:durative-action check_alignment
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (wire_distance_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (alignment_checked))))

  (:durative-action admire_finished_work
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (frame_hung)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finished_work_admired))))

  (:durative-action clean_frame_glass
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (desired_height_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (frame_glass_cleaned))))

  (:durative-action find_wall_stud
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wall_stud_found))))

  (:durative-action hang_frame
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (adhesive_bumpers_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (frame_hung))))

  (:durative-action fold_and_store_drop_cloth
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (ladder_stored)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drop_cloth_stored))))
)