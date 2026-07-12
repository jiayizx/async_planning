(define (domain leche-flan)
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
    (yolks_separated) (sugar_measured) (condensed_milk_opened)
    (yolks_and_milks_whisked) (flan_removed_to_cool) (caramel_created)
    (measuring_cups_washed) (lemon_zested) (counter_wiped)
    (milks_mixed) (sugar_sifted) (vanilla_measured)
    (vanilla_added) (mixture_strained) (flans_refrigerated)
    (ingredients_purchased) (utensils_sanitized) (sugar_dissolved)
    (custard_poured) (yolks_combined) (steamer_preheated)
    (molds_covered) (steamer_prepared) (flan_steamed)
    (center_checked) (plates_organized) (molds_rested)
    (leftovers_stored) (liners_cut) (fridge_cleared)
  )

  (:durative-action separate_yolks
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yolks_separated))))

  (:durative-action measure_sugar
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (ingredients_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_measured))))

  (:durative-action open_condensed_milk
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (condensed_milk_opened))))

  (:durative-action whisk_yolks_and_milks
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (yolks_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yolks_and_milks_whisked))))

  (:durative-action remove_flan_to_cool
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (molds_covered)) (at start (plates_organized)) (at start (liners_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flan_removed_to_cool))))

  (:durative-action create_caramel
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (steamer_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (caramel_created))))

  (:durative-action wash_measuring_cups
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (vanilla_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measuring_cups_washed))))

  (:durative-action zest_lemon
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_zested))))

  (:durative-action wipe_counter
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (ingredients_purchased)) (at start (sugar_dissolved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_wiped))))

  (:durative-action mix_milks
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (condensed_milk_opened)) (at start (utensils_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milks_mixed))))

  (:durative-action sift_sugar
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (sugar_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_sifted))))

  (:durative-action measure_vanilla
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_measured))))

  (:durative-action add_vanilla
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (milks_mixed)) (at start (utensils_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_added))))

  (:durative-action strain_mixture
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (milks_mixed)) (at start (sugar_dissolved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_strained))))

  (:durative-action refrigerate_flans
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (plates_organized)) (at start (fridge_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flans_refrigerated))))

  (:durative-action purchase_ingredients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_purchased))))

  (:durative-action sanitize_utensils
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (utensils_sanitized))))

  (:durative-action dissolve_sugar
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (sugar_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_dissolved))))

  (:durative-action pour_custard
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (yolks_and_milks_whisked)) (at start (steamer_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (custard_poured))))

  (:durative-action combine_yolks
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (yolks_separated)) (at start (lemon_zested)) (at start (steamer_prepared)) (at start (liners_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yolks_combined))))

  (:durative-action preheat_steamer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (sugar_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steamer_preheated))))

  (:durative-action cover_molds
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (sugar_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (molds_covered))))

  (:durative-action prepare_steamer
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (utensils_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steamer_prepared))))

  (:durative-action steam_flan
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (custard_poured)) (at start (steamer_preheated)) (at start (steamer_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flan_steamed))))

  (:durative-action check_center
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (steamer_preheated)) (at start (molds_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (center_checked))))

  (:durative-action organize_plates
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (utensils_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plates_organized))))

  (:durative-action rest_molds
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (steamer_preheated)) (at start (plates_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (molds_rested))))

  (:durative-action store_leftovers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (caramel_created)) (at start (ingredients_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leftovers_stored))))

  (:durative-action cut_liners
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (steamer_prepared)) (at start (plates_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (liners_cut))))

  (:durative-action clear_fridge
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fridge_cleared))))
)