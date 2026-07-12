(define (domain healthy-breakfast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (ingredients_shopped)
    (oats_soaked)
    (fruit_sliced)
    (bowl_arranged)
    (oats_cooked)
    (tea_brewed)
    (seated_at_table)
    (oats_rinsed)
    (meal_consumed)
    (honey_drizzled)
    (tea_poured)
    (table_set)
    (kettle_preheated)
    (groceries_unpacked)
    (bowl_at_table)
  )

  (:durative-action shop_for_ingredients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_shopped)))
  )

  (:durative-action soak_oats
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oats_soaked)))
  )

  (:durative-action slice_fruit
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (oats_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fruit_sliced)))
  )

  (:durative-action arrange_bowl
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (fruit_sliced)) (at start (oats_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_arranged)))
  )

  (:durative-action cook_oats
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (groceries_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oats_cooked)))
  )

  (:durative-action brew_green_tea
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (oats_rinsed)) (at start (kettle_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tea_brewed)))
  )

  (:durative-action sit_at_table
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (bowl_at_table)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seated_at_table)))
  )

  (:durative-action rinse_oats
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (oats_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oats_rinsed)))
  )

  (:durative-action consume_meal
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (seated_at_table)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_consumed)))
  )

  (:durative-action drizzle_honey
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (bowl_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (honey_drizzled)))
  )

  (:durative-action pour_tea
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (tea_brewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tea_poured)))
  )

  (:durative-action set_table
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (oats_cooked)) (at start (tea_poured)) (at start (kettle_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_set)))
  )

  (:durative-action preheat_kettle
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_preheated)))
  )

  (:durative-action unpack_groceries
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (ingredients_shopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groceries_unpacked)))
  )

  (:durative-action carry_bowl_to_table
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (bowl_arranged)) (at start (honey_drizzled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_at_table)))
  )
)