(define (domain muffin_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (zest_done)
    (grease_done)
    (measure_done)
    (whisk_done)
    (juice_done)
    (preheat_done)
    (soften_done)
    (scoop_done)
    (cream_done)
    (soak_done)
    (drain_done)
    (bake_done)
    (sift_done)
    (mix_juice_done)
    (combine_done)
    (buy_flour_done)
    (fold_done)
    (clean_done)
    (cool_done)
    (line_done)
  )

  (:durative-action step1_zest_lemons
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (preheat_done)) (at start (sift_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zest_done)))
  )

  (:durative-action step2_grease_tin
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (line_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grease_done)))
  )

  (:durative-action step3_measure_flour
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measure_done)))
  )

  (:durative-action step4_whisk_dry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (buy_flour_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisk_done)))
  )

  (:durative-action step5_juice_lemons
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (juice_done)))
  )

  (:durative-action step6_preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preheat_done)))
  )

  (:durative-action step7_soften_butter
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soften_done)))
  )

  (:durative-action step8_scoop_batter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (grease_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scoop_done)))
  )

  (:durative-action step9_cream_butter
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (soften_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_done)))
  )

  (:durative-action step10_soak_seeds
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soak_done)))
  )

  (:durative-action step11_drain_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (soak_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drain_done)))
  )

  (:durative-action step12_bake_muffins
    :parameters (?s - step)
    :duration (= ?duration 1320)
    :condition (and (at start (step_pending ?s)) (at start (combine_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bake_done)))
  )

  (:durative-action step13_sift_flour
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (measure_done)) (at start (buy_flour_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sift_done)))
  )

  (:durative-action step14_mix_juice
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (juice_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mix_juice_done)))
  )

  (:durative-action step15_combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (combine_done)))
  )

  (:durative-action step16_buy_flour
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (buy_flour_done)))
  )

  (:durative-action step17_fold_seeds
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (drain_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fold_done)))
  )

  (:durative-action step18_clean_bowls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (soak_done)) (at start (sift_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clean_done)))
  )

  (:durative-action step19_cool_muffins
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (juice_done)) (at start (preheat_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cool_done)))
  )

  (:durative-action step20_line_tin
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (sift_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (line_done)))
  )
)