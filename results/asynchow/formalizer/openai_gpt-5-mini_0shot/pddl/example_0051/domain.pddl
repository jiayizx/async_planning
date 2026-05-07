(define (domain build_fire)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (matches_found)
    (wood_found)
    (wood_placed)
    (newspaper_prepared)
    (fire_lit)
  )

  (:durative-action do_step1_find_matches
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (matches_found))
    )
  )

  (:durative-action do_step2_find_wood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wood_found))
    )
  )

  (:durative-action do_step3_place_wood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (wood_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wood_placed))
    )
  )

  (:durative-action do_step4_prepare_newspaper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (wood_placed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (newspaper_prepared))
    )
  )

  (:durative-action do_step5_ignite
    :parameters (?s - step)
    :duration (= ?duration 780)
    :condition (at start (and (step_pending ?s) (matches_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fire_lit))
    )
  )
)
