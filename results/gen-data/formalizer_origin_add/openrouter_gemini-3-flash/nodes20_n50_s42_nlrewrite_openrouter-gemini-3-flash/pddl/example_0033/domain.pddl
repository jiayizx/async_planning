(define (domain orchid_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (placed_in_sunlight)
    (mix_purchased)
    (requirements_researched)
    (leaves_wiped)
    (pot_cleaned)
    (repotted)
    (curtain_installed)
    (fertilizer_applied)
    (air_misted)
    (spikes_trimmed)
    (shears_sterilized)
    (medium_flushed)
    (shears_purchased)
    (moisture_checked)
    (roots_inspected)
    (pests_monitored)
    (tray_filled)
    (pot_soaked)
    (sunburn_checked)
    (neem_oil_applied)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (requirements_researched)) (at start (pot_cleaned)) (at start (curtain_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (placed_in_sunlight)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mix_purchased)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (requirements_researched)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (fertilizer_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leaves_wiped)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_cleaned)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (mix_purchased)) (at start (pot_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (repotted)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (requirements_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (curtain_installed)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (medium_flushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fertilizer_applied)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (moisture_checked)) (at start (tray_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (air_misted)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (repotted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spikes_trimmed)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shears_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_sterilized)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (moisture_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medium_flushed)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_purchased)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moisture_checked)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (mix_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roots_inspected)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (sunburn_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pests_monitored)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tray_filled)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (neem_oil_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pot_soaked)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (leaves_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunburn_checked)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pests_monitored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (neem_oil_applied)))
  )
)