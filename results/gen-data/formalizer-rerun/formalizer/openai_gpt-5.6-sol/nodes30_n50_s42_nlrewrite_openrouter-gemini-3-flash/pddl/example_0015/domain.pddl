(define (domain beef-tongue)
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
    (tongue_purchased) (tongue_scrubbed) (tongue_in_stockpot)
    (tongue_rested) (pot_filled) (seasonings_added)
    (pot_boiled) (heat_reduced) (onions_prepared)
    (fat_trimmed) (vegetables_chopped) (tongue_brined)
    (salt_cloves_measured) (spices_toasted) (dutch_oven_retrieved)
    (parsley_garnish_prepared) (tongue_defrosted) (tongue_simmered)
    (tongue_peeled) (vegetables_sauteed) (mustard_sauce_prepared)
    (temperature_checked) (foam_skimmed) (knives_sharpened)
    (onions_added) (lid_positioned) (timer_set)
    (tongue_carved) (spice_rack_organized) (workspace_cleaned)
  )

  (:durative-action purchase_tongue
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_purchased))))

  (:durative-action scrub_tongue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (fat_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_scrubbed))))

  (:durative-action place_in_stockpot
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (dutch_oven_retrieved)) (at start (knives_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_in_stockpot))))

  (:durative-action rest_meat
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (tongue_peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_rested))))

  (:durative-action fill_pot
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (tongue_in_stockpot)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_filled))))

  (:durative-action add_seasonings
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (tongue_defrosted)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasonings_added))))

  (:durative-action bring_to_boil
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (seasonings_added)) (at start (foam_skimmed)) (at start (knives_sharpened)) (at start (timer_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_boiled))))

  (:durative-action reduce_heat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (temperature_checked)) (at start (lid_positioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heat_reduced))))

  (:durative-action prepare_onions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_prepared))))

  (:durative-action trim_fat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (tongue_defrosted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fat_trimmed))))

  (:durative-action chop_vegetables
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_chopped))))

  (:durative-action brine_tongue
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (tongue_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_brined))))

  (:durative-action measure_spices
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (spice_rack_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_cloves_measured))))

  (:durative-action toast_spices
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (salt_cloves_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spices_toasted))))

  (:durative-action retrieve_dutch_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dutch_oven_retrieved))))

  (:durative-action prepare_parsley
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_garnish_prepared))))

  (:durative-action defrost_tongue
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (tongue_purchased)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_defrosted))))

  (:durative-action simmer_tongue
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (pot_boiled)) (at start (onions_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_simmered))))

  (:durative-action peel_tongue
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (parsley_garnish_prepared)) (at start (tongue_simmered)) (at start (onions_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_peeled))))

  (:durative-action saute_vegetables
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_sauteed))))

  (:durative-action prepare_mustard_sauce
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (salt_cloves_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mustard_sauce_prepared))))

  (:durative-action check_temperature
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (knives_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temperature_checked))))

  (:durative-action skim_foam
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (heat_reduced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foam_skimmed))))

  (:durative-action sharpen_knives
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knives_sharpened))))

  (:durative-action add_onions
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (onions_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_added))))

  (:durative-action position_lid
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (tongue_in_stockpot)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lid_positioned))))

  (:durative-action set_timer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_set))))

  (:durative-action carve_tongue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (heat_reduced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_carved))))

  (:durative-action organize_spice_rack
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spice_rack_organized))))

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned))))
)