(define (domain flavored-hummus)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (for_step1 ?s - step) (for_step2 ?s - step) (for_step3 ?s - step) (for_step4 ?s - step)
  (for_step5 ?s - step) (for_step6 ?s - step) (for_step7 ?s - step) (for_step8 ?s - step)
  (for_step9 ?s - step) (for_step10 ?s - step) (for_step11 ?s - step) (for_step12 ?s - step)
  (for_step13 ?s - step) (for_step14 ?s - step) (for_step15 ?s - step) (for_step16 ?s - step)
  (for_step17 ?s - step) (for_step18 ?s - step) (for_step19 ?s - step) (for_step20 ?s - step)
  (for_step21 ?s - step) (for_step22 ?s - step) (for_step23 ?s - step) (for_step24 ?s - step)
  (for_step25 ?s - step) (for_step26 ?s - step) (for_step27 ?s - step) (for_step28 ?s - step)
  (for_step29 ?s - step) (for_step30 ?s - step) (for_step31 ?s - step) (for_step32 ?s - step)
  (for_step33 ?s - step) (for_step34 ?s - step) (for_step35 ?s - step) (for_step36 ?s - step)
  (for_step37 ?s - step) (for_step38 ?s - step) (for_step39 ?s - step) (for_step40 ?s - step)
  (smooth_mixture) (garnishes_arranged) (chickpeas_sorted) (processor_bowl_clean)
  (hummus_transferred) (seasoning_adjusted) (parsley_minced) (chickpeas_soaked)
  (chickpeas_peeled) (tahini_measured) (lemon_juice_squeezed) (olive_oil_measured)
  (tahini_lemon_whisked) (cooking_liquid_drained) (oil_tahini_emulsified) (salt_cumin_added)
  (garlic_added) (peppers_roasted) (juicer_found) (chickpeas_in_processor)
  (garlic_peeled) (ice_cubes_added) (tahini_mixture_added) (herbs_washed)
  (oven_preheated) (ingredients_bought) (pepper_skins_removed) (pot_ready)
  (pot_filled) (processor_set_out) (chickpeas_boiled) (soaked_chickpeas_rinsed)
  (peppers_pureed) (ice_bath_prepared) (chickpeas_inspected) (chickpeas_simmered)
  (peppers_diced) (processor_blades_assembled) (counter_sanitized) (chickpeas_high_heat_cooked)
 )
 (:durative-action pulse_mixture
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step1 ?s)) (at start (chickpeas_peeled)) (at start (ice_cubes_added)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smooth_mixture))))
 (:durative-action arrange_garnishes
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (for_step2 ?s)) (at start (garlic_peeled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garnishes_arranged))))
 (:durative-action sort_chickpeas
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (for_step3 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_sorted))))
 (:durative-action clean_processor_bowl
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (for_step4 ?s)) (at start (pot_filled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (processor_bowl_clean))))
 (:durative-action transfer_hummus
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step5 ?s)) (at start (seasoning_adjusted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hummus_transferred))))
 (:durative-action taste_adjust
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step6 ?s)) (at start (chickpeas_simmered)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoning_adjusted))))
 (:durative-action mince_parsley
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (for_step7 ?s)) (at start (herbs_washed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_minced))))
 (:durative-action soak_chickpeas
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (step_pending ?s)) (at start (for_step8 ?s)) (at start (chickpeas_sorted)) (at start (soaked_chickpeas_rinsed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_soaked))))
 (:durative-action peel_chickpeas
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (for_step9 ?s)) (at start (chickpeas_high_heat_cooked)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_peeled))))
 (:durative-action measure_tahini
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step10 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tahini_measured))))
 (:durative-action squeeze_lemon
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step11 ?s)) (at start (juicer_found)) (at start (garlic_peeled)) (at start (pot_filled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_juice_squeezed))))
 (:durative-action measure_olive_oil
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step12 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (olive_oil_measured))))
 (:durative-action whisk_tahini_lemon
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (for_step13 ?s)) (at start (lemon_juice_squeezed)) (at start (tahini_mixture_added)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tahini_lemon_whisked))))
 (:durative-action drain_cooking_liquid
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step14 ?s)) (at start (pot_filled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cooking_liquid_drained))))
 (:durative-action emulsify_oil_tahini
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step15 ?s)) (at start (tahini_measured)) (at start (olive_oil_measured)) (at start (counter_sanitized)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_tahini_emulsified))))
 (:durative-action add_salt_cumin
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (for_step16 ?s)) (at start (chickpeas_peeled)) (at start (peppers_diced)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_cumin_added))))
 (:durative-action add_garlic
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step17 ?s)) (at start (chickpeas_peeled)) (at start (garlic_peeled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_added))))
 (:durative-action roast_peppers
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (for_step18 ?s)) (at start (oven_preheated)) (at start (pot_filled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peppers_roasted))))
 (:durative-action find_juicer
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step19 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (juicer_found))))
 (:durative-action place_chickpeas_in_processor
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step20 ?s)) (at start (chickpeas_peeled)) (at start (oven_preheated)) (at start (counter_sanitized)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_in_processor))))
 (:durative-action peel_garlic
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step21 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_peeled))))
 (:durative-action add_ice_cubes
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (for_step22 ?s)) (at start (chickpeas_in_processor)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ice_cubes_added))))
 (:durative-action add_tahini_mixture
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step23 ?s)) (at start (juicer_found)) (at start (oven_preheated)) (at start (soaked_chickpeas_rinsed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tahini_mixture_added))))
 (:durative-action wash_herbs
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (for_step24 ?s)) (at start (counter_sanitized)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herbs_washed))))
 (:durative-action preheat_oven
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (for_step25 ?s)) (at start (ingredients_bought)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated))))
 (:durative-action buy_ingredients
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (for_step26 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_bought))))
 (:durative-action remove_pepper_skins
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (for_step27 ?s)) (at start (peppers_roasted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pepper_skins_removed))))
 (:durative-action take_out_pot
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step28 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_ready))))
 (:durative-action fill_pot
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step29 ?s)) (at start (pot_ready)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_filled))))
 (:durative-action set_out_processor
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step30 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (processor_set_out))))
 (:durative-action boil_chickpeas
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (for_step31 ?s)) (at start (chickpeas_soaked)) (at start (processor_set_out)) (at start (peppers_pureed)) (at start (processor_blades_assembled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_boiled))))
 (:durative-action rinse_soaked_chickpeas
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (for_step32 ?s)) (at start (chickpeas_peeled)) (at start (counter_sanitized)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soaked_chickpeas_rinsed))))
 (:durative-action puree_peppers
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (for_step33 ?s)) (at start (pepper_skins_removed)) (at start (processor_blades_assembled)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peppers_pureed))))
 (:durative-action prepare_ice_bath
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (for_step34 ?s)) (at start (pot_ready)) (at start (soaked_chickpeas_rinsed)) (at start (chickpeas_inspected)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ice_bath_prepared))))
 (:durative-action inspect_chickpeas
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (for_step35 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_inspected))))
 (:durative-action simmer_chickpeas
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (for_step36 ?s)) (at start (chickpeas_sorted)) (at start (chickpeas_inspected)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_simmered))))
 (:durative-action dice_peppers
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (for_step37 ?s)) (at start (peppers_roasted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peppers_diced))))
 (:durative-action assemble_processor_blades
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (for_step38 ?s)) (at start (ingredients_bought)) (at start (processor_set_out)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (processor_blades_assembled))))
 (:durative-action sanitize_counter
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (for_step39 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_sanitized))))
 (:durative-action cook_chickpeas_high_heat
  :parameters (?s - step) :duration (= ?duration 3000)
  :condition (and (at start (step_pending ?s)) (at start (for_step40 ?s)) (at start (cooking_liquid_drained)) (at start (pot_ready)) (at start (counter_sanitized)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_high_heat_cooked))))
)