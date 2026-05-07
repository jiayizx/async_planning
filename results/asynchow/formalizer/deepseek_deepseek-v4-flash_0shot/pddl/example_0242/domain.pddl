(define (domain make_calzones)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheat_done)
    (roll_dough_done)
    (filling_added)
    (folded_pinched)
    (calzones_made)
  )
  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (preheat_done))
    )
  )
  (:durative-action roll_dough
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (roll_dough_done))
    )
  )
  (:durative-action add_filling
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step3))
      (at start (roll_dough_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (filling_added))
    )
  )
  (:durative-action fold_pinch
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step4))
      (at start (filling_added))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (folded_pinched))
    )
  )
  (:durative-action bake_calzones
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending step5))
      (at start (preheat_done))
      (at start (folded_pinched))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (calzones_made))
    )
  )
)