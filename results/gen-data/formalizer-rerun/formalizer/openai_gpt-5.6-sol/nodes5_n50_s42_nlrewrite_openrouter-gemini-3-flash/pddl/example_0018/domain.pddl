(define (domain make-orange)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (yellow_paint_poured)
    (stirring_stick_located)
    (workspace_prepared)
    (orange_made)
    (primary_paints_purchased)
  )

  (:durative-action pour_yellow_paint
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step1))
      (at start (primary_paints_purchased))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (yellow_paint_poured))
    )
  )

  (:durative-action locate_stirring_stick
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (stirring_stick_located))
    )
  )

  (:durative-action prepare_workspace
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step3))
      (at start (stirring_stick_located))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (workspace_prepared))
    )
  )

  (:durative-action add_red_pigment
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step4))
      (at start (yellow_paint_poured))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (orange_made))
    )
  )

  (:durative-action purchase_primary_paints
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (primary_paints_purchased))
    )
  )
)