(define (domain prison_tattoo_ink)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (powder_contained)
    (water_added)
    (ink_mixed)
  )

  (:durative-action put_powder
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (powder_contained)))
  )

  (:durative-action add_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_added)))
  )

  (:durative-action finish_mixing
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (powder_contained)) (at start (water_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ink_mixed)))
  )
)