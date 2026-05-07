(define (domain go-to-walmart)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (puton_done ?s - step)
    (list_done ?s - step)
    (incar_done ?s - step)
    (driven_done ?s - step)
    (parked_done ?s - step)
  )

  (:durative-action put_on_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (puton_done step1))
    )
  )

  (:durative-action make_grocery_list
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (list_done step2))
    )
  )

  (:durative-action get_in_car
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (puton_done step1)) (at start (list_done step2)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (incar_done step3))
    )
  )

  (:durative-action drive_to_walmart
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (incar_done step3)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (driven_done step4))
    )
  )

  (:durative-action find_parking_spot
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (driven_done step4)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (parked_done step5))
    )
  )
)
