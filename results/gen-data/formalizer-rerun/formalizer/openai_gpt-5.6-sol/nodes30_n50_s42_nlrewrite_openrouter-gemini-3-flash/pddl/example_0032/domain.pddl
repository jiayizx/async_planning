(define (domain salad-nicoise)
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
    (vinaigrette_whisked) (water_boiled) (components_arranged)
    (vegetables_refreshed) (vegetables_dried) (potatoes_sliced)
    (eggs_removed_from_fridge) (eggs_peeled) (eggs_quartered)
    (eggs_shocked) (eggs_cooked) (beans_drained)
    (beans_trimmed) (tomatoes_prepared) (onions_sliced)
    (oil_vinegar_measured) (shallots_garlic_minced) (olives_prepared)
    (beans_rinsed) (potatoes_cooked) (beans_tossed)
    (tuna_drained) (beans_sorted) (egg_timer_set)
    (eggs_removed_from_heat) (eggs_rinsed) (lettuce_prepared)
    (vinaigrette_drizzled) (platter_garnished) (beans_blanched)
  )

  (:durative-action whisk_vinaigrette
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (shallots_garlic_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vinaigrette_whisked))))

  (:durative-action boil_salted_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled))))

  (:durative-action arrange_components
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (potatoes_sliced)) (at start (beans_tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (components_arranged))))

  (:durative-action refresh_vegetables
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_refreshed))))

  (:durative-action dry_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (water_boiled)) (at start (beans_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_dried))))

  (:durative-action slice_potatoes
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (vegetables_refreshed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_sliced))))

  (:durative-action remove_eggs_from_fridge
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_removed_from_fridge))))

  (:durative-action peel_eggs
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (eggs_shocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_peeled))))

  (:durative-action quarter_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (potatoes_cooked)) (at start (eggs_removed_from_heat)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_quartered))))

  (:durative-action shock_eggs
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (potatoes_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_shocked))))

  (:durative-action cook_eggs
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (eggs_removed_from_fridge)) (at start (eggs_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_cooked))))

  (:durative-action drain_beans
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (vegetables_refreshed)) (at start (beans_blanched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_drained))))

  (:durative-action trim_beans
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (beans_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_trimmed))))

  (:durative-action prepare_tomatoes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_prepared))))

  (:durative-action slice_onions
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (shallots_garlic_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_sliced))))

  (:durative-action measure_oil_vinegar
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_vinegar_measured))))

  (:durative-action mince_shallots_garlic
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (oil_vinegar_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shallots_garlic_minced))))

  (:durative-action prepare_olives
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (eggs_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (olives_prepared))))

  (:durative-action rinse_beans
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (beans_trimmed)) (at start (tomatoes_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_rinsed))))

  (:durative-action cook_potatoes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_cooked))))

  (:durative-action toss_beans
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (beans_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_tossed))))

  (:durative-action drain_tuna
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (egg_timer_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuna_drained))))

  (:durative-action sort_beans
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_sorted))))

  (:durative-action set_egg_timer
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (eggs_removed_from_fridge)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_timer_set))))

  (:durative-action remove_eggs_from_heat
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (eggs_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_removed_from_heat))))

  (:durative-action rinse_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_rinsed))))

  (:durative-action prepare_lettuce
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettuce_prepared))))

  (:durative-action drizzle_vinaigrette
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (platter_garnished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vinaigrette_drizzled))))

  (:durative-action garnish_platter
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (vinaigrette_whisked)) (at start (olives_prepared)) (at start (lettuce_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platter_garnished))))

  (:durative-action blanch_beans
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (beans_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_blanched))))
)