(define (domain cocoa-substitute)
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
    (mixture_whisked)
    (cocoa_measured)
    (shortening_melted)
    (oil_retrieved)
    (fat_measured)
    (cocoa_shortening_combined)
    (butter_softened)
    (butter_stored)
    (cocoa_paste_cooled)
    (ratio_checked)
  )

  (:durative-action whisk_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (cocoa_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_whisked)))
  )

  (:durative-action measure_cocoa
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cocoa_measured)))
  )

  (:durative-action melt_shortening
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (cocoa_shortening_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shortening_melted)))
  )

  (:durative-action retrieve_oil
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oil_retrieved)))
  )

  (:durative-action measure_fat
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (ratio_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fat_measured)))
  )

  (:durative-action combine_cocoa_shortening
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (fat_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cocoa_shortening_combined)))
  )

  (:durative-action soften_butter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (fat_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_softened)))
  )

  (:durative-action store_butter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (butter_softened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_stored)))
  )

  (:durative-action cool_cocoa_paste
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (shortening_melted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cocoa_paste_cooled)))
  )

  (:durative-action check_ratio
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (oil_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ratio_checked)))
  )
)