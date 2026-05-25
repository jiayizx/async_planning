(define (domain grape_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bags_purchased)
    (mixture_ready)
    (barriers_applied)
    (foliage_pruned)
    (clusters_inspected)
    (patterns_researched)
    (perimeter_cleared)
    (traps_installed)
    (data_recorded)
    (kit_obtained)
    (owners_coordinated)
    (specialist_consulted)
    (insects_ordered)
    (shears_sanitized)
    (species_identified)
    (mower_sharpened)
    (crates_sterilized)
    (clusters_sprayed)
    (clusters_bagged)
    (equipment_calibrated)
  )

  (:durative-action step_1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bags_purchased)))
  )

  (:durative-action step_2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (clusters_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_ready)))
  )

  (:durative-action step_3
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (insects_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (barriers_applied)))
  )

  (:durative-action step_4
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (clusters_sprayed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foliage_pruned)))
  )

  (:durative-action step_5
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (perimeter_cleared)) (at start (kit_obtained)) (at start (insects_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_inspected)))
  )

  (:durative-action step_6
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (specialist_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patterns_researched)))
  )

  (:durative-action step_7
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (mower_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (perimeter_cleared)))
  )

  (:durative-action step_8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (traps_installed)))
  )

  (:durative-action step_9
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (clusters_bagged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_recorded)))
  )

  (:durative-action step_10
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kit_obtained)))
  )

  (:durative-action step_11
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (patterns_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (owners_coordinated)))
  )

  (:durative-action step_12
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (species_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (specialist_consulted)))
  )

  (:durative-action step_13
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (equipment_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insects_ordered)))
  )

  (:durative-action step_14
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_sanitized)))
  )

  (:durative-action step_15
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (species_identified)))
  )

  (:durative-action step_16
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mower_sharpened)))
  )

  (:durative-action step_17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crates_sterilized)))
  )

  (:durative-action step_18
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (mixture_ready)) (at start (shears_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_sprayed)))
  )

  (:durative-action step_19
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (bags_purchased)) (at start (traps_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clusters_bagged)))
  )

  (:durative-action step_20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (kit_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_calibrated)))
  )
)