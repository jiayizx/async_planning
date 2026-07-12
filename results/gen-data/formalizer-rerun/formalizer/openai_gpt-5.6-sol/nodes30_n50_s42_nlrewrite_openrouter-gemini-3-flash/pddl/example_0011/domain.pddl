(define (domain pillowcase-pet-bed)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type
    step21_type step22_type step23_type step24_type step25_type
    step26_type step27_type step28_type step29_type step30_type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (patches_purchased)
    (pillowcase_washed)
    (opening_measured)
    (foam_cut)
    (batting_purchased)
    (thread_selected)
    (zipper_stitched)
    (workspace_cleared)
    (fabric_sprayed)
    (supplies_gathered)
    (wrinkles_ironed)
    (batting_strips_cut)
    (bed_placed)
    (corners_reinforced)
    (batting_rolled)
    (roll_circumference_measured)
    (design_sketched)
    (bed_aired_out)
    (pillowcase_checked)
    (cedar_shavings_bought)
    (fabric_edges_pinned)
    (name_template_printed)
    (cedar_mixed)
    (batting_cylinder_stuffed)
    (cedar_pouch_filled)
    (final_seams_sewn)
    (designs_researched)
    (outer_surface_treated)
    (machine_needle_threaded)
    (pillowcase_found))

  (:durative-action purchase_patches
    :parameters (?s - step1_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patches_purchased))))

  (:durative-action wash_and_dry_pillowcase
    :parameters (?s - step2_type)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_washed))))

  (:durative-action measure_opening
    :parameters (?s - step3_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (opening_measured))))

  (:durative-action cut_memory_foam
    :parameters (?s - step4_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (opening_measured)) (at start (thread_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foam_cut))))

  (:durative-action purchase_batting
    :parameters (?s - step5_type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (opening_measured)) (at start (pillowcase_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_purchased))))

  (:durative-action select_thread
    :parameters (?s - step6_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thread_selected))))

  (:durative-action stitch_main_zipper
    :parameters (?s - step7_type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (batting_rolled)) (at start (batting_cylinder_stuffed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zipper_stitched))))

  (:durative-action clear_workspace
    :parameters (?s - step8_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))

  (:durative-action spray_fabric
    :parameters (?s - step9_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (design_sketched)) (at start (pillowcase_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_sprayed))))

  (:durative-action gather_supplies
    :parameters (?s - step10_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered))))

  (:durative-action iron_wrinkles
    :parameters (?s - step11_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wrinkles_ironed))))

  (:durative-action cut_batting_strips
    :parameters (?s - step12_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (roll_circumference_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_strips_cut))))

  (:durative-action place_finished_bed
    :parameters (?s - step13_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (zipper_stitched)) (at start (outer_surface_treated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bed_placed))))

  (:durative-action reinforce_corners
    :parameters (?s - step14_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (fabric_edges_pinned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corners_reinforced))))

  (:durative-action roll_batting
    :parameters (?s - step15_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (batting_purchased)) (at start (batting_strips_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_rolled))))

  (:durative-action measure_batting_roll
    :parameters (?s - step16_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roll_circumference_measured))))

  (:durative-action sketch_design
    :parameters (?s - step17_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_sketched))))

  (:durative-action air_out_bed
    :parameters (?s - step18_type)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (cedar_pouch_filled)) (at start (final_seams_sewn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bed_aired_out))))

  (:durative-action check_pillowcase
    :parameters (?s - step19_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (opening_measured)) (at start (design_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_checked))))

  (:durative-action buy_cedar_shavings
    :parameters (?s - step20_type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_shavings_bought))))

  (:durative-action pin_fabric_edges
    :parameters (?s - step21_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (opening_measured)) (at start (zipper_stitched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_edges_pinned))))

  (:durative-action print_name_template
    :parameters (?s - step22_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (name_template_printed))))

  (:durative-action mix_cedar_into_stuffing
    :parameters (?s - step23_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (cedar_shavings_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_mixed))))

  (:durative-action stuff_batting_cylinder
    :parameters (?s - step24_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (batting_rolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_cylinder_stuffed))))

  (:durative-action fill_cedar_pouch
    :parameters (?s - step25_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (cedar_shavings_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_pouch_filled))))

  (:durative-action sew_final_seams
    :parameters (?s - step26_type)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (thread_selected)) (at start (corners_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_seams_sewn))))

  (:durative-action research_designs
    :parameters (?s - step27_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (designs_researched))))

  (:durative-action apply_outer_repellent
    :parameters (?s - step28_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (fabric_sprayed)) (at start (cedar_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outer_surface_treated))))

  (:durative-action thread_machine_needle
    :parameters (?s - step29_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_needle_threaded))))

  (:durative-action find_pillowcase
    :parameters (?s - step30_type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_found))))
)