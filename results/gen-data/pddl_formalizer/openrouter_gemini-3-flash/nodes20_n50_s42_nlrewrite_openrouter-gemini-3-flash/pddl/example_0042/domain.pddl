(define (domain batter_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
  )

  (:durative-action clean_mixing_station
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action melt_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action gentle_stir
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action sift_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action gather_tools
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action preheat_griddle
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action pour_liquids
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action measure_flour
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action rest_mixture
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action measure_milk
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action measure_powder_salt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action check_expiration
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action fold_components
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action sanitize_countertop
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )

  (:durative-action lay_out_bowls
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done)))
  )

  (:durative-action add_vanilla
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done)))
  )

  (:durative-action whisk_melted_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s14_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done)))
  )

  (:durative-action separate_egg_whites
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done)))
  )

  (:durative-action clean_whisk_spatula
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done)))
  )
)