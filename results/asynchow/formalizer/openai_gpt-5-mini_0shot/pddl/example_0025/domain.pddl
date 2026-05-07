(define (domain scuba-domain)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchase_done)
    (find_done)
    (dive_done)
    (enter_done)
    (equip_done)
    (explore_done)
    (surface_done)
  )

  (:durative-action purchase_scuba_gear
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (purchase_done)) )
  )

  (:durative-action find_body_of_water
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (find_done)) )
  )

  (:durative-action dive_into_water
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (find_done)) (at start (equip_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (dive_done)) )
  )

  (:durative-action enter_underwater_caves
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (dive_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (enter_done)) )
  )

  (:durative-action put_scuba_gear_on
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (purchase_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (equip_done)) )
  )

  (:durative-action explore_the_caves
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (enter_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (explore_done)) )
  )

  (:durative-action return_to_surface
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (explore_done)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (surface_done)) )
  )
)
