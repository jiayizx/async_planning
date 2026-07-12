(define (domain grill-asparagus)
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
    (asparagus_plated)
    (grill_preheated)
    (asparagus_placed_on_grill)
    (asparagus_seasoned)
    (asparagus_retrieved)
    (asparagus_garnished)
    (packaging_disposed)
    (grill_grates_cleaned)
    (asparagus_removed_from_heat)
    (asparagus_rinsed)
    (woody_ends_removed)
    (asparagus_dried)
    (asparagus_seared)
    (serving_platter_prepared)
    (grill_temperature_steady)
  )

  (:durative-action plate_grilled_spears
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (asparagus_placed_on_grill))
      (at start (grill_temperature_steady)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_plated)))
  )

  (:durative-action preheat_grill
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (grill_grates_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grill_preheated)))
  )

  (:durative-action place_asparagus_on_grill
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (asparagus_seasoned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_placed_on_grill)))
  )

  (:durative-action season_asparagus
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (asparagus_rinsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_seasoned)))
  )

  (:durative-action retrieve_asparagus
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_retrieved)))
  )

  (:durative-action garnish_with_lemon
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (asparagus_removed_from_heat)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_garnished)))
  )

  (:durative-action dispose_packaging
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (asparagus_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (packaging_disposed)))
  )

  (:durative-action clean_grill_grates
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grill_grates_cleaned)))
  )

  (:durative-action remove_asparagus_from_heat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (asparagus_seared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_removed_from_heat)))
  )

  (:durative-action rinse_asparagus
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_rinsed)))
  )

  (:durative-action remove_woody_ends
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (asparagus_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (woody_ends_removed)))
  )

  (:durative-action dry_asparagus
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (asparagus_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_dried)))
  )

  (:durative-action sear_asparagus
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (grill_preheated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (asparagus_seared)))
  )

  (:durative-action prepare_serving_platter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (asparagus_dried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (serving_platter_prepared)))
  )

  (:durative-action monitor_grill_temperature
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (asparagus_placed_on_grill)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grill_temperature_steady)))
  )
)