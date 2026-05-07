(define (domain strengthen_hips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (stretch_timed)
    (itb_stretched)
    (piriformis_stretched)
    (leg_to_chest_done)
    (hamstring_stretched)
  )

  (:durative-action step1_stretch_timing
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stretch_timed)))
  )

  (:durative-action step2_itb_stretch
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (stretch_timed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (itb_stretched)))
  )

  (:durative-action step3_piriformis_stretch
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (stretch_timed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piriformis_stretched)))
  )

  (:durative-action step4_leg_to_chest
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (stretch_timed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leg_to_chest_done)))
  )

  (:durative-action step5_hamstring_stretch
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (stretch_timed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hamstring_stretched)))
  )
)