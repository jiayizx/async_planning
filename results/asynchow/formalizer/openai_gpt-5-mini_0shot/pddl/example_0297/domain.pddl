(define (domain cook_ground_turkey)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mix_done)
    (shape_done)
    (heat_done)
    (cook_done)
    (serve_done)
  )

  (:durative-action do_mix
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mix_done))
    )
  )

  (:durative-action do_shape
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (mix_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shape_done))
    )
  )

  (:durative-action do_heat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (heat_done))
    )
  )

  (:durative-action do_cook
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (shape_done) (heat_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cook_done))
    )
  )

  (:durative-action do_serve
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (cook_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (serve_done))
    )
  )
)
