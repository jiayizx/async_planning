(define (domain lemon-poppy-muffins)
  (:requirements :typing :durative-actions)
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
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (lemons_zested)
    (muffin_tin_greased)
    (flour_blend_measured)
    (dry_ingredients_whisked)
    (lemons_juiced)
    (oven_preheated)
    (butter_softened)
    (batter_scooped)
    (butter_and_sugar_creamed)
    (poppy_seeds_soaked)
    (poppy_seeds_drained)
    (muffins_baked)
    (flour_and_baking_powder_sifted)
    (lemon_juice_mixed)
    (batter_combined)
    (almond_flour_bought)
    (poppy_seeds_folded)
    (mixing_bowls_cleaned)
    (muffins_cooled)
    (muffin_tin_lined)
  )

  (:durative-action zest_lemons
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (oven_preheated))
      (at start (flour_and_baking_powder_sifted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemons_zested))))

  (:durative-action grease_muffin_tin
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (muffin_tin_lined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (muffin_tin_greased))))

  (:durative-action measure_flour_blend
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_blend_measured))))

  (:durative-action whisk_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (almond_flour_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dry_ingredients_whisked))))

  (:durative-action juice_lemons
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemons_juiced))))

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))))

  (:durative-action soften_butter
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_softened))))

  (:durative-action scoop_batter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (muffin_tin_greased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (batter_scooped))))

  (:durative-action cream_butter_and_sugar
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (butter_softened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_and_sugar_creamed))))

  (:durative-action soak_poppy_seeds
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (poppy_seeds_soaked))))

  (:durative-action drain_poppy_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (poppy_seeds_soaked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (poppy_seeds_drained))))

  (:durative-action bake_muffins
    :parameters (?s - step)
    :duration (= ?duration 1320)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (batter_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (muffins_baked))))

  (:durative-action sift_flour_and_baking_powder
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (flour_blend_measured))
      (at start (almond_flour_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_and_baking_powder_sifted))))

  (:durative-action mix_lemon_juice
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (lemons_juiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemon_juice_mixed))))

  (:durative-action combine_batter
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (batter_combined))))

  (:durative-action buy_almond_flour
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (almond_flour_bought))))

  (:durative-action fold_poppy_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (poppy_seeds_drained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (poppy_seeds_folded))))

  (:durative-action clean_mixing_bowls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (poppy_seeds_soaked))
      (at start (flour_and_baking_powder_sifted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixing_bowls_cleaned))))

  (:durative-action cool_muffins
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (lemons_juiced))
      (at start (oven_preheated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (muffins_cooled))))

  (:durative-action line_muffin_tin
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s))
      (at start (flour_and_baking_powder_sifted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (muffin_tin_lined))))
)