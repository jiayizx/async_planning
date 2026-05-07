(define (domain cook-mushrooms)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (heat_done)
    (prep_done)
    (add_done)
    (cook_done)
    (served)
  )

  (:durative-action heat_oil_or_butter
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (heat_done))
            )
  )

  (:durative-action prepare_mushrooms
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (prep_done))
            )
  )

  (:durative-action add_shiitake_to_oil
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (heat_done)) (at start (prep_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (add_done))
            )
  )

  (:durative-action cook_for_10_minutes
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (add_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (cook_done))
            )
  )

  (:durative-action season_and_serve
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (cook_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (served))
            )
  )
)
