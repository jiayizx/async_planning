(define (domain cook_steak)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (seasoned)
    (rested)
    (unpacked)
    (patted)
    (seared)
  )

  (:durative-action do_step1_season
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (unpacked)) (at start (patted)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (seasoned))
            )
  )

  (:durative-action do_step2_rest
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (unpacked)) (at start (patted)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (rested))
            )
  )

  (:durative-action do_step3_remove_packaging
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (unpacked))
            )
  )

  (:durative-action do_step4_pat_dry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (unpacked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (patted))
            )
  )

  (:durative-action do_step5_sear
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (seasoned)) (at start (unpacked)) (at start (patted)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (seared))
            )
  )
)
