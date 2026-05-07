(define (domain fruit_punch_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fruit_prepared)
    (mixture_combined)
    (mixture_poured)
    (fruit_infused)
    (punch_ready)
  )

  (:durative-action wash_and_slice_fruit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fruit_prepared))
    )
  )

  (:durative-action combine_juices
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_combined))
    )
  )

  (:durative-action pour_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (mixture_combined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_poured))
    )
  )

  (:durative-action infuse_fruit
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (fruit_prepared))
      (at start (mixture_combined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fruit_infused))
    )
  )

  (:durative-action add_ice_rings
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (fruit_prepared))
      (at start (mixture_poured))
      (at start (mixture_combined))
      (at start (fruit_infused))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (punch_ready))
    )
  )
)