(define (domain bottle_wall)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (sealant_applied) (bottles_sorted_color_size) (weight_dist_calculated) (led_installed) (bottles_soaked)
    (patterns_researched) (residue_scrubbed) (bottles_dried) (brushes_purchased) (glass_polished)
    (first_course_laid) (wall_length_measured) (bottles_sourced) (bottles_rinsed) (blueprint_draft)
    (transparent_selected) (bottles_crated_height) (workspace_cleared) (footprint_marked) (trench_dug)
    (sand_sifted) (cement_bought) (bottles_inspepected) (support_frame_setup) (rebar_installed)
    (mortar_test_batch) (footer_poured) (inventory_photo) (mortar_applied_bases) (ground_levelled)
    (mixing_trough_built) (mixer_lubricated) (safety_goggles_purchased) (bottles_arranged_tarp)
    (labels_scraped) (necks_cut) (second_course_laid) (gaps_filled) (top_plate_installed) (mixer_rented)
    (cleaning_solution_bought) (first_row_height_measured) (cement_transport) (raincap_designed)
    (third_course_laid) (string_line_setup) (gravel_subbase_poured) (fourth_course_laid) (openings_taped)
    (raincap_attached) (mixer_inspepected) (soil_compacted) (cardboard_collected) (joints_grouted)
    (trowel_purchased) (chisel_sharpened) (labels_heat_removed) (workspace_cleaned) (mortar_cured)
    (bottles_sorted_thickness) (adhesive_removed) (bottles_wiped) (edges_derimmed) (sand_pallet_bought)
    (corners_staked) (foundation_levelled) (dry_mortar_brushed) (load_points_sketched) (tools_washed)
    (bottles_sorted_gradient) (location_scouted) (bottles_sanitized) (brands_inventoried)
    (second_mortar_applied) (neck_diameter_measured) (joints_pointed) (labels_vinegar_soaked)
    (mortar_consistency_tested) (spirit_level_bought) (foundation_wetted) (bottles_dry_fitted)
    (scaffolding_assembled) (gravel_tamped) (laser_level_calibrated) (bottles_grouped_height)
    (water_bought) (mortar_mixed_main) (rebar_cut) (fifth_course_laid) (sixth_course_laid)
    (joints_smoothed) (canopy_built) (corners_reinforced) (wall_plumbness_checked) (interiors_filled_sand)
    (bottoms_buffed) (air_bubbles_inspepected) (glass_saw_purchased) (van_rented) (utility_checked))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (trench_dug)) (at start (cardboard_collected)) (at start (joints_grouted)) (at start (interiors_filled_sand)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sealant_applied))))
  
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (bottles_sanitized)) (at start (water_bought)) (at start (van_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sorted_color_size))))
  
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (trowel_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_dist_calculated))))
  
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_wiped)) (at start (interiors_filled_sand)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (led_installed))))
  
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_soaked))))
  
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patterns_researched))))
  
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (adhesive_removed)) (at start (labels_vinegar_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (residue_scrubbed))))
  
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (bottles_grouped_height)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_dried))))
  
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (location_scouted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brushes_purchased))))
  
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_rinsed)) (at start (labels_scraped)) (at start (tools_washed)) (at start (bottles_sanitized)) (at start (bottles_dry_fitted)) (at start (interiors_filled_sand)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (glass_polished))))
  
  (:durative-action do_step11
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (sand_pallet_bought)) (at start (spirit_level_bought)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_course_laid))))
  
  (:durative-action do_step12
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wall_length_measured))))
  
  (:durative-action do_step13
    :parameters (?s - step)
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sourced))))
  
  (:durative-action do_step14
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (labels_vinegar_soaked)) (at start (canopy_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_rinsed))))
  
  (:durative-action do_step15
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blueprint_draft))))
  
  (:durative-action do_step16
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (foundation_levelled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transparent_selected))))
  
  (:durative-action do_step17
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_arranged_tarp)) (at start (bottles_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_crated_height))))
  
  (:durative-action do_step18
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))
  
  (:durative-action do_step19
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (footprint_marked))))
  
  (:durative-action do_step20
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (footprint_marked)) (at start (soil_compacted)) (at start (foundation_levelled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trench_dug))))
  
  (:durative-action do_step21
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (safety_goggles_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sand_sifted))))
  
  (:durative-action do_step22
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (glass_saw_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cement_bought))))
  
  (:durative-action do_step23
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_sourced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_inspepected))))
  
  (:durative-action do_step24
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (residue_scrubbed)) (at start (load_points_sketched)) (at start (scaffolding_assembled)) (at start (canopy_built)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (support_frame_setup))))
  
  (:durative-action do_step25
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (scaffolding_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rebar_installed))))
  
  (:durative-action do_step26
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortar_test_batch))))
  
  (:durative-action do_step27
    :parameters (?s - step)
    :duration 21600
    :condition (and (at start (step_pending ?s)) (at start (sand_sifted)) (at start (support_frame_setup)) (at start (mixing_trough_built)) (at start (gaps_filled)) (at start (mixer_rented)) (at start (gravel_subbase_poured)) (at start (laser_level_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (footer_poured))))
  
  (:durative-action do_step28
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_color_size)) (at start (brands_inventoried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inventory_photo))))
  
  (:durative-action do_step29
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)) (at start (wall_length_measured)) (at start (trench_dug)) (at start (labels_scraped)) (at start (bottles_sorted_gradient)) (at start (neck_diameter_measured)) (at start (fifth_course_laid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortar_applied_bases))))
  
  (:durative-action do_step30
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_rinsed)) (at start (corners_staked)) (at start (air_bubbles_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ground_levelled))))
  
  (:durative-action do_step31
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (labels_heat_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixing_trough_built))))
  
  (:durative-action do_step32
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (bottles_dried)) (at start (sand_pallet_bought)) (at start (glass_saw_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixer_lubricated))))
  
  (:durative-action do_step33
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (location_scouted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_goggles_purchased))))
  
  (:durative-action do_step34
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_arranged_tarp))))
  
  (:durative-action do_step35
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (adhesive_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_scraped))))
  
  (:durative-action do_step36
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (bottles_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (necks_cut))))
  
  (:durative-action do_step37
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (fourth_course_laid)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (second_course_laid))))
  
  (:durative-action do_step38
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (bottles_sourced)) (at start (trench_dug)) (at start (neck_diameter_measured)) (at start (sixth_course_laid)) (at start (canopy_built)) (at start (glass_saw_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gaps_filled))))
  
  (:durative-action do_step39
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (weight_dist_calculated)) (at start (raincap_designed)) (at start (load_points_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (top_plate_installed))))
  
  (:durative-action do_step40
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixer_rented))))
  
  (:durative-action do_step41
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaning_solution_bought))))
  
  (:durative-action do_step42
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (sand_pallet_bought)) (at start (bottles_sanitized)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_row_height_measured))))
  
  (:durative-action do_step43
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (cement_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cement_transport))))
  
  (:durative-action do_step44
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (raincap_designed))))
  
  (:durative-action do_step45
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (bottles_arranged_tarp)) (at start (cement_transport)) (at start (string_line_setup)) (at start (trowel_purchased)) (at start (scaffolding_assembled)) (at start (mortar_mixed_main)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (third_course_laid))))
  
  (:durative-action do_step46
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (string_line_setup))))
  
  (:durative-action do_step47
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (sand_sifted)) (at start (chisel_sharpened)) (at start (bottles_grouped_height)) (at start (sixth_course_laid)) (at start (canopy_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gravel_subbase_poured))))
  
  (:durative-action do_step48
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (rebar_installed)) (at start (scaffolding_assembled)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fourth_course_laid))))
  
  (:durative-action do_step49
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_arranged_tarp)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (openings_taped))))
  
  (:durative-action do_step50
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (raincap_designed)) (at start (bottles_sorted_gradient)) (at start (mortar_consistency_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (raincap_attached))))
  
  (:durative-action do_step51
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (mixer_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixer_inspepected))))
  
  (:durative-action do_step52
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_thickness)) (at start (tools_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soil_compacted))))
  
  (:durative-action do_step53
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (location_scouted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cardboard_collected))))
  
  (:durative-action do_step54
    :parameters (?s - step)
    :duration 21600
    :condition (and (at start (step_pending ?s)) (at start (raincap_designed)) (at start (openings_taped)) (at start (trowel_purchased)) (at start (water_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (joints_grouted))))
  
  (:durative-action do_step55
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (sand_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trowel_purchased))))
  
  (:durative-action do_step56
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (string_line_setup)) (at start (glass_saw_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chisel_sharpened))))
  
  (:durative-action do_step57
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)) (at start (bottles_sourced)) (at start (brands_inventoried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_heat_removed))))
  
  (:durative-action do_step58
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (blueprint_draft)) (at start (transparent_selected)) (at start (trench_dug)) (at start (second_course_laid)) (at start (top_plate_installed)) (at start (bottles_grouped_height)) (at start (canopy_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned))))
  
  (:durative-action do_step59
    :parameters (?s - step)
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (mortar_test_batch)) (at start (mortar_applied_bases)) (at start (labels_scraped)) (at start (cardboard_collected)) (at start (corners_staked)) (at start (labels_vinegar_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortar_cured))))
  
  (:durative-action do_step60
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_crated_height)) (at start (bottles_arranged_tarp)) (at start (location_scouted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sorted_thickness))))
  
  (:durative-action do_step61
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_soaked)) (at start (brushes_purchased)) (at start (location_scouted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adhesive_removed))))
  
  (:durative-action do_step62
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_color_size)) (at start (bottles_soaked)) (at start (first_row_height_measured)) (at start (labels_vinegar_soaked)) (at start (spirit_level_bought)) (at start (sixth_course_laid)) (at start (bottoms_buffed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_wiped))))
  
  (:durative-action do_step63
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)) (at start (bottles_crated_height)) (at start (openings_taped)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edges_derimmed))))
  
  (:durative-action do_step64
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (cement_bought)) (at start (glass_saw_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sand_pallet_bought))))
  
  (:durative-action do_step65
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_thickness)) (at start (utility_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corners_staked))))
  
  (:durative-action do_step66
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (necks_cut)) (at start (corners_staked)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foundation_levelled))))
  
  (:durative-action do_step67
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (patterns_researched)) (at start (residue_scrubbed)) (at start (bottles_rinsed)) (at start (cleaning_solution_bought)) (at start (openings_taped)) (at start (workspace_cleaned)) (at start (foundation_levelled)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dry_mortar_brushed))))
  
  (:durative-action do_step68
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (load_points_sketched))))
  
  (:durative-action do_step69
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (bottles_rinsed)) (at start (rebar_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_washed))))
  
  (:durative-action do_step70
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_color_size)) (at start (van_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sorted_gradient))))
  
  (:durative-action do_step71
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (location_scouted))))
  
  (:durative-action do_step72
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (van_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sanitized))))
  
  (:durative-action do_step73
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brands_inventoried))))
  
  (:durative-action do_step74
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (necks_cut)) (at start (third_course_laid)) (at start (string_line_setup)) (at start (neck_diameter_measured)) (at start (sixth_course_laid)) (at start (corners_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (second_mortar_applied))))
  
  (:durative-action do_step75
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (transparent_selected)) (at start (labels_heat_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neck_diameter_measured))))
  
  (:durative-action do_step76
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (bottles_inspepected)) (at start (mortar_applied_bases)) (at start (gravel_tamped)) (at start (corners_reinforced)) (at start (wall_plumbness_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (joints_pointed))))
  
  (:durative-action do_step77
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (necks_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_vinegar_soaked))))
  
  (:durative-action do_step78
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (mixer_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortar_consistency_tested))))
  
  (:durative-action do_step79
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spirit_level_bought))))
  
  (:durative-action do_step80
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (first_course_laid)) (at start (mortar_consistency_tested)) (at start (scaffolding_assembled)) (at start (van_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foundation_wetted))))
  
  (:durative-action do_step81
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (rebar_installed)) (at start (necks_cut)) (at start (labels_vinegar_soaked)) (at start (air_bubbles_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_dry_fitted))))
  
  (:durative-action do_step82
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (brands_inventoried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scaffolding_assembled))))
  
  (:durative-action do_step83
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (trench_dug)) (at start (mixing_trough_built)) (at start (gravel_subbase_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gravel_tamped))))
  
  (:durative-action do_step84
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laser_level_calibrated))))
  
  (:durative-action do_step85
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (bottles_sorted_thickness)) (at start (van_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_grouped_height))))
  
  (:durative-action do_step86
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_bought))))
  
  (:durative-action do_step87
    :parameters (?s - step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (first_course_laid)) (at start (cement_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortar_mixed_main))))
  
  (:durative-action do_step88
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (bottles_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rebar_cut))))
  
  (:durative-action do_step89
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (wall_length_measured)) (at start (sand_sifted)) (at start (first_row_height_measured)) (at start (brands_inventoried)) (at start (canopy_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fifth_course_laid))))
  
  (:durative-action do_step90
    :parameters (?s - step)
    :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (cardboard_collected)) (at start (edges_derimmed)) (at start (neck_diameter_measured)) (at start (corners_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sixth_course_laid))))
  
  (:durative-action do_step91
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (weight_dist_calculated)) (at start (bottles_soaked)) (at start (wall_length_measured)) (at start (bottles_sourced)) (at start (ground_levelled)) (at start (necks_cut)) (at start (sand_pallet_bought)) (at start (laser_level_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (joints_smoothed))))
  
  (:durative-action do_step92
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (patterns_researched)) (at start (bottles_sourced)) (at start (foundation_levelled)) (at start (corners_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (canopy_built))))
  
  (:durative-action do_step93
    :parameters (?s - step)
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (cement_transport)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corners_reinforced))))
  
  (:durative-action do_step94
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (brushes_purchased)) (at start (wall_length_measured)) (at start (load_points_sketched)) (at start (second_mortar_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wall_plumbness_checked))))
  
  (:durative-action do_step95
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (weight_dist_calculated)) (at start (cardboard_collected)) (at start (spirit_level_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interiors_filled_sand))))
  
  (:durative-action do_step96
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (residue_scrubbed)) (at start (brushes_purchased)) (at start (soil_compacted)) (at start (location_scouted)) (at start (bottles_grouped_height)) (at start (air_bubbles_inspepected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottoms_buffed))))
  
  (:durative-action do_step97
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (transparent_selected)) (at start (bottles_crated_height)) (at start (safety_goggles_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (air_bubbles_inspepected))))
  
  (:durative-action do_step98
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (glass_saw_purchased))))
  
  (:durative-action do_step99
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (van_rented))))
  
  (:durative-action do_step100
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (utility_checked))))
)