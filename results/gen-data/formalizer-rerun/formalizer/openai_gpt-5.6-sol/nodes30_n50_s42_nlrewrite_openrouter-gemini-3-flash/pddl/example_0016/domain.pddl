(define (domain clean-sunbrella)
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
    (loose_dirt_brushed) (protectant_applied) (cleaning_solution_prepared)
    (soap_residue_rinsed) (mildew_inspected) (fabric_scrubbed)
    (workspace_prepared) (fabric_hosed) (cleaning_solution_applied)
    (upholstery_cleaner_purchased) (soap_solution_tested) (solution_soaked)
    (fabric_blotted) (scrubbing_tools_gathered) (spots_agitated)
    (oil_stains_treated) (bleach_solution_mixed) (deep_stains_scrubbed)
    (treated_areas_rinsed) (cleaning_codes_researched) (fabric_bleach_soaked)
    (fabric_steam_cleaned) (drying_rack_prepared) (fabric_cleaned)
    (covers_removed) (repellent_purchased) (scrubbed_debris_rinsed)
    (fabric_prewashed) (frames_wiped) (seams_checked)
  )

  (:durative-action brush-loose-dirt
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (loose_dirt_brushed))))

  (:durative-action apply-fabric-protectant
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (bleach_solution_mixed)) (at start (fabric_steam_cleaned)) (at start (repellent_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protectant_applied))))

  (:durative-action prepare-cleaning-solution
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaning_solution_prepared))))

  (:durative-action rinse-soap-residue
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)) (at start (fabric_hosed)) (at start (fabric_prewashed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soap_residue_rinsed))))

  (:durative-action inspect-mildew
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mildew_inspected))))

  (:durative-action scrub-fabric
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)) (at start (fabric_bleach_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_scrubbed))))

  (:durative-action set-up-workspace
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (loose_dirt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_prepared))))

  (:durative-action hose-down-fabric
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)) (at start (fabric_prewashed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_hosed))))

  (:durative-action apply-cleaning-solution
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)) (at start (cleaning_solution_prepared)) (at start (fabric_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaning_solution_applied))))

  (:durative-action purchase-upholstery-cleaner
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (upholstery_cleaner_purchased))))

  (:durative-action test-soap-solution
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)) (at start (cleaning_solution_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soap_solution_tested))))

  (:durative-action soak-soapy-solution
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)) (at start (fabric_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solution_soaked))))

  (:durative-action blot-fabric
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s)) (at start (cleaning_solution_applied)) (at start (spots_agitated)) (at start (frames_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_blotted))))

  (:durative-action gather-scrubbing-tools
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrubbing_tools_gathered))))

  (:durative-action agitate-stubborn-spots
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s)) (at start (scrubbed_debris_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spots_agitated))))

  (:durative-action treat-oil-stains
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)) (at start (spots_agitated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_stains_treated))))

  (:durative-action mix-bleach-solution
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)) (at start (cleaning_codes_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bleach_solution_mixed))))

  (:durative-action scrub-deep-stains
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)) (at start (upholstery_cleaner_purchased)) (at start (scrubbing_tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deep_stains_scrubbed))))

  (:durative-action rinse-treated-areas
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s)) (at start (solution_soaked)) (at start (oil_stains_treated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (treated_areas_rinsed))))

  (:durative-action research-cleaning-codes
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaning_codes_researched))))

  (:durative-action soak-in-bleach
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s)) (at start (bleach_solution_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_bleach_soaked))))

  (:durative-action steam-clean-fabric
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s)) (at start (scrubbing_tools_gathered)) (at start (deep_stains_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_steam_cleaned))))

  (:durative-action prepare-drying-rack
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s)) (at start (bleach_solution_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drying_rack_prepared))))

  (:durative-action air-dry-fabric
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)) (at start (mildew_inspected)) (at start (seams_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_cleaned))))

  (:durative-action remove-fabric-covers
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s)) (at start (loose_dirt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (covers_removed))))

  (:durative-action buy-water-repellent
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (repellent_purchased))))

  (:durative-action rinse-scrubbed-debris
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s)) (at start (fabric_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrubbed_debris_rinsed))))

  (:durative-action prewash-fabric
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s)) (at start (loose_dirt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_prewashed))))

  (:durative-action wipe-furniture-frames
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s)) (at start (loose_dirt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frames_wiped))))

  (:durative-action check-seams
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s)) (at start (fabric_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seams_checked))))
)