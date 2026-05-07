(define (domain cook_ground_turkey)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheated_done)
    (mixed_done)
    (formed_done)
    (cooked_done)
  )

  (:durative-action preheat_oven_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (preheated_done))
            )
  )

  (:durative-action mix_ingredients_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (mixed_done))
            )
  )

  (:durative-action form_meatballs_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (mixed_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (formed_done))
            )
  )

  (:durative-action cook_meatballs_step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (preheated_done)) (at start (formed_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (cooked_done))
            )
  )
)
