(define (domain indoor-orchid-care)
  (:requirements :typing :durative-actions)

  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (orchid_positioned)
    (potting_mix_purchased)
    (light_requirements_researched)
    (leaves_wiped)
    (decorative_pot_cleaned)
    (orchid_repotted)
    (sheer_curtain_installed)
    (fertilizer_applied)
    (air_misted)
    (dead_spikes_trimmed)
    (pruning_shears_sterilized)
    (potting_medium_flushed)
    (pruning_shears_purchased)
    (bark_moisture_checked)
    (roots_inspected)
    (pests_monitored)
    (humidity_tray_filled)
    (orchid_pot_soaked)
    (sunburn_spots_checked)
    (neem_oil_applied)
  )

  (:durative-action place_orchid_in_filtered_sunlight
    :parameters (?s - step1_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (decorative_pot_cleaned))
      (at start (sheer_curtain_installed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orchid_positioned)))
  )

  (:durative-action purchase_orchid_potting_mix
    :parameters (?s - step2_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (potting_mix_purchased)))
  )

  (:durative-action research_light_requirements
    :parameters (?s - step3_type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (light_requirements_researched)))
  )

  (:durative-action wipe_orchid_leaves
    :parameters (?s - step4_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (fertilizer_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (leaves_wiped)))
  )

  (:durative-action clean_decorative_pot
    :parameters (?s - step5_type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decorative_pot_cleaned)))
  )

  (:durative-action repot_orchid
    :parameters (?s - step6_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (potting_mix_purchased))
      (at start (orchid_pot_soaked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orchid_repotted)))
  )

  (:durative-action install_sheer_curtain
    :parameters (?s - step7_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (light_requirements_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sheer_curtain_installed)))
  )

  (:durative-action apply_orchid_fertilizer
    :parameters (?s - step8_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (potting_medium_flushed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fertilizer_applied)))
  )

  (:durative-action mist_air
    :parameters (?s - step9_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (bark_moisture_checked))
      (at start (humidity_tray_filled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (air_misted)))
  )

  (:durative-action trim_dead_flower_spikes
    :parameters (?s - step10_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (orchid_repotted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dead_spikes_trimmed)))
  )

  (:durative-action sterilize_pruning_shears
    :parameters (?s - step11_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (pruning_shears_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pruning_shears_sterilized)))
  )

  (:durative-action flush_potting_medium
    :parameters (?s - step12_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (bark_moisture_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (potting_medium_flushed)))
  )

  (:durative-action purchase_pruning_shears
    :parameters (?s - step13_type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pruning_shears_purchased)))
  )

  (:durative-action check_bark_moisture
    :parameters (?s - step14_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bark_moisture_checked)))
  )

  (:durative-action inspect_orchid_roots
    :parameters (?s - step15_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (potting_mix_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (roots_inspected)))
  )

  (:durative-action monitor_orchid_for_pests
    :parameters (?s - step16_type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (sunburn_spots_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pests_monitored)))
  )

  (:durative-action fill_humidity_tray
    :parameters (?s - step17_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (humidity_tray_filled)))
  )

  (:durative-action soak_orchid_pot
    :parameters (?s - step18_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (neem_oil_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orchid_pot_soaked)))
  )

  (:durative-action check_leaves_for_sunburn
    :parameters (?s - step19_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (leaves_wiped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sunburn_spots_checked)))
  )

  (:durative-action apply_neem_oil
    :parameters (?s - step20_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (pests_monitored)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neem_oil_applied)))
  )
)