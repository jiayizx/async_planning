(define (domain sandwich-making)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (loaf_sliced)
    (lettuce_washed)
    (mayonnaise_spread)
    (meat_layered)
    (pickles_sliced)
    (ingredients_retrieved)
    (tools_retrieved)
    (tomatoes_seasoned)
    (tomatoes_rinsed)
    (sandwiches_closed_cut)
    (tomatoes_sliced)
    (bread_toasted)
    (lettuce_placed)
    (onions_sliced)
    (cheese_added)
  )

  (:durative-action slice_sourdough_loaf
    :parameters (?s - step1_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (tools_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (loaf_sliced))
    )
  )

  (:durative-action wash_lettuce
    :parameters (?s - step2_type)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lettuce_washed))
    )
  )

  (:durative-action spread_mayonnaise
    :parameters (?s - step3_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (bread_toasted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mayonnaise_spread))
    )
  )

  (:durative-action layer_turkey_and_ham
    :parameters (?s - step4_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (cheese_added))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (meat_layered))
    )
  )

  (:durative-action slice_pickles
    :parameters (?s - step5_type)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (ingredients_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pickles_sliced))
    )
  )

  (:durative-action retrieve_ingredients
    :parameters (?s - step6_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_retrieved))
    )
  )

  (:durative-action retrieve_cutting_board_and_knife
    :parameters (?s - step7_type)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tools_retrieved))
    )
  )

  (:durative-action season_tomatoes
    :parameters (?s - step8_type)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (onions_sliced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_seasoned))
    )
  )

  (:durative-action rinse_tomatoes
    :parameters (?s - step9_type)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (ingredients_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_rinsed))
    )
  )

  (:durative-action close_and_cut_sandwiches
    :parameters (?s - step10_type)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (meat_layered))
      (at start (tomatoes_sliced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sandwiches_closed_cut))
    )
  )

  (:durative-action slice_tomatoes
    :parameters (?s - step11_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomatoes_rinsed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_sliced))
    )
  )

  (:durative-action toast_bread
    :parameters (?s - step12_type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (loaf_sliced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bread_toasted))
    )
  )

  (:durative-action place_lettuce
    :parameters (?s - step13_type)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (lettuce_washed))
      (at start (mayonnaise_spread))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lettuce_placed))
    )
  )

  (:durative-action slice_red_onions
    :parameters (?s - step14_type)
    :duration (= ?duration 90)
    :condition (and
      (at start (step_pending ?s))
      (at start (ingredients_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onions_sliced))
    )
  )

  (:durative-action add_provolone_cheese
    :parameters (?s - step15_type)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (mayonnaise_spread))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cheese_added))
    )
  )
)