(define (domain apple-pie-turnovers)
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
    (is_step19 ?s - step) (is_step20 ?s - step)
    (apples_sauteed) (counters_cleaned) (pastry_rolled)
    (pastry_thawed) (apples_peeled) (egg_wash_prepared)
    (oven_preheated) (apples_bought) (apples_diced)
    (butter_browned) (turnovers_assembled) (turnovers_baked)
    (turnovers_cooled) (turnovers_glazed) (butter_mixed)
    (surface_floured) (sheets_lined) (supplies_gathered)
    (parchment_greased) (ingredients_organized)
  )

  (:durative-action saute_apples
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (apples_peeled)) (at start (apples_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apples_sauteed))))

  (:durative-action clean_counters
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counters_cleaned))))

  (:durative-action roll_pastry
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (surface_floured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pastry_rolled))))

  (:durative-action thaw_pastry
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pastry_thawed))))

  (:durative-action peel_apples
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (apples_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apples_peeled))))

  (:durative-action prepare_egg_wash
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_wash_prepared))))

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated))))

  (:durative-action buy_apples
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (ingredients_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apples_bought))))

  (:durative-action dice_apples
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (apples_peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apples_diced))))

  (:durative-action brown_butter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_browned))))

  (:durative-action assemble_turnovers
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (pastry_rolled)) (at start (pastry_thawed)) (at start (egg_wash_prepared)) (at start (butter_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnovers_assembled))))

  (:durative-action bake_turnovers
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (sheets_lined)) (at start (parchment_greased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnovers_baked))))

  (:durative-action cool_turnovers
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (turnovers_baked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnovers_cooled))))

  (:durative-action glaze_turnovers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (turnovers_cooled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnovers_glazed))))

  (:durative-action mix_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (butter_browned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_mixed))))

  (:durative-action flour_surface
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (pastry_thawed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surface_floured))))

  (:durative-action line_sheets
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sheets_lined))))

  (:durative-action gather_supplies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered))))

  (:durative-action grease_parchment
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (apples_sauteed)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parchment_greased))))

  (:durative-action organize_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (sheets_lined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_organized))))
)