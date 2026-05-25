(define (domain cocoa_substitute)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cocoa_measured)
    (shortening_melted)
    (oil_retrieved)
    (fat_measured)
    (cocoa_combined)
    (butter_softened)
    (butter_stored)
    (paste_cooled)
    (recipe_checked)
    (mixture_whisked)
  )

  (:durative-action step2_measure_cocoa
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cocoa_measured)))
  )

  (:durative-action step1_whisk_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (cocoa_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_whisked)))
  )

  (:durative-action step4_retrieve_oil
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_retrieved)))
  )

  (:durative-action step10_check_recipe
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (oil_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recipe_checked)))
  )

  (:durative-action step5_measure_fat
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (recipe_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fat_measured)))
  )

  (:durative-action step6_combine_cocoa
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (fat_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cocoa_combined)))
  )

  (:durative-action step3_melt_shortening
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cocoa_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shortening_melted)))
  )

  (:durative-action step9_cool_paste
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shortening_melted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paste_cooled)))
  )

  (:durative-action step7_soften_butter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (fat_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_softened)))
  )

  (:durative-action step8_store_butter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (butter_softened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_stored)))
  )
)