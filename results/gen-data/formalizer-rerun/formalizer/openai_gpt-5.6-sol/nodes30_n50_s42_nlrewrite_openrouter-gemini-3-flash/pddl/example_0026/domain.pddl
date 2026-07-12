(define (domain rose-cutting-growth)
  (:requirements :typing :durative-actions)
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
    (hormone_solution_prepared) (shears_cleaned) (compost_mixed)
    (pots_sterilized) (cuttings_watered) (parent_bush_selected)
    (cut_ends_dipped) (rooting_powder_purchased) (vigorous_stems_identified)
    (cuttings_taken) (blades_sharpened) (shears_alcohol_wiped)
    (pots_filled) (humidity_dome_set_up) (pots_moved_to_shade)
    (thermometer_calibrated) (pots_labeled) (source_bush_checked)
    (workbench_cleared) (species_requirements_researched) (drainage_holes_poked)
    (soil_sifted) (containers_gathered) (nodes_inspected)
    (roots_established) (temperature_monitored) (rose_bush_grown)
    (handbook_bought) (start_date_logged) (cuttings_placed)
  )

  (:durative-action prepare_rooting_hormone_solution
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (cut_ends_dipped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hormone_solution_prepared))))

  (:durative-action clean_garden_shears
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_cleaned))))

  (:durative-action mix_organic_compost
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compost_mixed))))

  (:durative-action sterilize_planting_pots
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_sterilized))))

  (:durative-action water_new_cuttings
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cuttings_watered))))

  (:durative-action select_healthy_parent_bush
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (species_requirements_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parent_bush_selected))))

  (:durative-action dip_cut_ends
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (rooting_powder_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cut_ends_dipped))))

  (:durative-action purchase_rooting_powder
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rooting_powder_purchased))))

  (:durative-action identify_vigorous_stems
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (species_requirements_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vigorous_stems_identified))))

  (:durative-action take_cuttings
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (parent_bush_selected)) (at start (blades_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cuttings_taken))))

  (:durative-action sharpen_cutting_blades
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blades_sharpened))))

  (:durative-action wipe_shears_with_alcohol
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (shears_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_alcohol_wiped))))

  (:durative-action fill_pots
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (pots_sterilized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_filled))))

  (:durative-action set_up_humidity_dome
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (humidity_dome_set_up))))

  (:durative-action move_pots_to_shade
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (pots_labeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_moved_to_shade))))

  (:durative-action calibrate_thermometer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thermometer_calibrated))))

  (:durative-action label_pots
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_labeled))))

  (:durative-action check_source_bush_for_pests
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (parent_bush_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (source_bush_checked))))

  (:durative-action clear_workbench
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (rooting_powder_purchased)) (at start (handbook_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workbench_cleared))))

  (:durative-action research_species_requirements
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (handbook_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (species_requirements_researched))))

  (:durative-action poke_drainage_holes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (pots_sterilized)) (at start (containers_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drainage_holes_poked))))

  (:durative-action sift_garden_soil
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soil_sifted))))

  (:durative-action gather_recycled_containers
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (containers_gathered))))

  (:durative-action inspect_stem_nodes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (parent_bush_selected)) (at start (vigorous_stems_identified)) (at start (pots_labeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nodes_inspected))))

  (:durative-action wait_for_roots
    :parameters (?s - step)
    :duration (= ?duration 4838400)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (cuttings_watered)) (at start (pots_moved_to_shade)) (at start (pots_labeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roots_established))))

  (:durative-action monitor_ambient_temperature
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (humidity_dome_set_up)) (at start (thermometer_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temperature_monitored))))

  (:durative-action transplant_rooted_cuttings
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (compost_mixed)) (at start (soil_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rose_bush_grown))))

  (:durative-action buy_gardening_handbook
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (handbook_bought))))

  (:durative-action log_start_date
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (cut_ends_dipped)) (at start (species_requirements_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (start_date_logged))))

  (:durative-action place_cuttings_in_soil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (hormone_solution_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cuttings_placed))))
)