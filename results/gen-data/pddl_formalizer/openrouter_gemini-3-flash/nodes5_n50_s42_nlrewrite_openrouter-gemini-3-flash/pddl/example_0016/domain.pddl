(define (domain fishing_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (regulations_researched)
    (license_renewed)
    (bait_purchased)
    (gear_loaded)
    (line_cast)
  )

  (:durative-action research_regulations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (regulations_researched)))
  )

  (:durative-action renew_license
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (regulations_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (license_renewed)))
  )

  (:durative-action purchase_bait
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (license_renewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bait_purchased)))
  )

  (:durative-action load_gear
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (license_renewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_loaded)))
  )

  (:durative-action cast_line
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (license_renewed)) (at start (gear_loaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (line_cast)))
  )
)