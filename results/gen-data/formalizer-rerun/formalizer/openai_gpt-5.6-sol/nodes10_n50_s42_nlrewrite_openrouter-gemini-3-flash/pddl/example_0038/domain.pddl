(define (domain giant-pancake)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_slot ?s - step)
    (step2_slot ?s - step)
    (step3_slot ?s - step)
    (step4_slot ?s - step)
    (step5_slot ?s - step)
    (step6_slot ?s - step)
    (step7_slot ?s - step)
    (step8_slot ?s - step)
    (step9_slot ?s - step)
    (step10_slot ?s - step)
    (batter_poured)
    (bowl_and_whisk_gathered)
    (pancake_flipped)
    (ingredients_mixed)
    (compote_prepared)
    (table_set)
    (butter_melted)
    (eggs_and_buttermilk_whisked)
    (griddle_preheated)
    (flour_and_baking_powder_sifted)
  )

  (:durative-action pour_batter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (step1_slot ?s))
      (at start (griddle_preheated))
      (at start (flour_and_baking_powder_sifted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (batter_poured))
    )
  )

  (:durative-action gather_bowl_and_whisk
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (step2_slot ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bowl_and_whisk_gathered))
    )
  )

  (:durative-action flip_pancake
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (step3_slot ?s))
      (at start (batter_poured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pancake_flipped))
    )
  )

  (:durative-action mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (step4_slot ?s))
      (at start (eggs_and_buttermilk_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_mixed))
    )
  )

  (:durative-action prepare_compote
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (step5_slot ?s))
      (at start (flour_and_baking_powder_sifted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (compote_prepared))
    )
  )

  (:durative-action set_table
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (step6_slot ?s))
      (at start (butter_melted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (table_set))
    )
  )

  (:durative-action melt_butter
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (step7_slot ?s))
      (at start (bowl_and_whisk_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_melted))
    )
  )

  (:durative-action whisk_eggs_and_buttermilk
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (step8_slot ?s))
      (at start (butter_melted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_and_buttermilk_whisked))
    )
  )

  (:durative-action preheat_griddle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (step9_slot ?s))
      (at start (compote_prepared))
      (at start (eggs_and_buttermilk_whisked))
      (at start (flour_and_baking_powder_sifted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (griddle_preheated))
    )
  )

  (:durative-action sift_flour_and_baking_powder
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (step10_slot ?s))
      (at start (ingredients_mixed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_and_baking_powder_sifted))
    )
  )
)