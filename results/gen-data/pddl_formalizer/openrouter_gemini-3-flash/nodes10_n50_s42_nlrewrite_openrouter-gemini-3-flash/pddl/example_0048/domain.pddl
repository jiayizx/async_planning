(define (domain sunchoke_cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sunchokes_sliced)
    (sunchokes_tossed)
    (sunchokes_dried)
    (sunchokes_scrubbed)
    (sunchokes_arranged)
    (sunchokes_soaked)
    (sunchokes_bought)
    (sunchokes_unpacked)
    (seasoning_prepared)
    (sunchokes_roasted)
  )

  (:durative-action step1_slice
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_sliced)))
  )

  (:durative-action step2_toss
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_tossed)))
  )

  (:durative-action step3_dry
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_soaked)) (at start (seasoning_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_dried)))
  )

  (:durative-action step4_scrub
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_scrubbed)))
  )

  (:durative-action step5_arrange
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_arranged)))
  )

  (:durative-action step6_soak
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_soaked)))
  )

  (:durative-action step7_buy
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_bought)))
  )

  (:durative-action step8_unpack
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_unpacked)))
  )

  (:durative-action step9_prepare_seasoning
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoning_prepared)))
  )

  (:durative-action step10_roast
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (sunchokes_tossed)) (at start (sunchokes_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunchokes_roasted)))
  )
)