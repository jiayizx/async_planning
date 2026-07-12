(define (domain grape-insect-protection)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bags_purchased)
    (neem_solution_mixed)
    (sticky_barriers_applied)
    (foliage_pruned)
    (clusters_inspected)
    (migration_patterns_researched)
    (perimeter_grass_cleared)
    (pheromone_traps_installed)
    (protection_data_recorded)
    (field_kit_purchased)
    (neighbors_coordinated)
    (specialist_consulted)
    (control_insects_ordered)
    (shears_sanitized)
    (insect_species_identified)
    (brush_mower_sharpened)
    (storage_crates_sterilized)
    (clusters_sprayed)
    (clusters_bagged)
    (ph_equipment_calibrated)
  )

  (:durative-action purchase_bags
    :parameters (?s - step1_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bags_purchased)))
  )

  (:durative-action mix_neem_solution
    :parameters (?s - step2_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (clusters_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neem_solution_mixed)))
  )

  (:durative-action apply_sticky_barriers
    :parameters (?s - step3_type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (control_insects_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sticky_barriers_applied)))
  )

  (:durative-action prune_foliage
    :parameters (?s - step4_type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (clusters_sprayed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foliage_pruned)))
  )

  (:durative-action inspect_clusters
    :parameters (?s - step5_type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (perimeter_grass_cleared)) (at start (field_kit_purchased)) (at start (control_insects_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_inspected)))
  )

  (:durative-action research_migration_patterns
    :parameters (?s - step6_type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (specialist_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (migration_patterns_researched)))
  )

  (:durative-action clear_perimeter_grass
    :parameters (?s - step7_type)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (brush_mower_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (perimeter_grass_cleared)))
  )

  (:durative-action install_pheromone_traps
    :parameters (?s - step8_type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pheromone_traps_installed)))
  )

  (:durative-action record_protection_data
    :parameters (?s - step9_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (clusters_bagged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protection_data_recorded)))
  )

  (:durative-action purchase_field_kit
    :parameters (?s - step10_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (field_kit_purchased)))
  )

  (:durative-action coordinate_neighbors
    :parameters (?s - step11_type)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (migration_patterns_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neighbors_coordinated)))
  )

  (:durative-action consult_specialist
    :parameters (?s - step12_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (insect_species_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (specialist_consulted)))
  )

  (:durative-action order_control_insects
    :parameters (?s - step13_type)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (ph_equipment_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (control_insects_ordered)))
  )

  (:durative-action sanitize_shears
    :parameters (?s - step14_type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_sanitized)))
  )

  (:durative-action identify_insect_species
    :parameters (?s - step15_type)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insect_species_identified)))
  )

  (:durative-action sharpen_brush_mower
    :parameters (?s - step16_type)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brush_mower_sharpened)))
  )

  (:durative-action sterilize_storage_crates
    :parameters (?s - step17_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (storage_crates_sterilized)))
  )

  (:durative-action spray_clusters
    :parameters (?s - step18_type)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (neem_solution_mixed)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_sprayed)))
  )

  (:durative-action bag_clusters
    :parameters (?s - step19_type)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (bags_purchased)) (at start (pheromone_traps_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_bagged)))
  )

  (:durative-action calibrate_ph_equipment
    :parameters (?s - step20_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (field_kit_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ph_equipment_calibrated)))
  )
)