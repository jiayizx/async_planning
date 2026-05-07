(define (domain wear-harem-pants)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wear_crop_top_done)
    (pick_top_done)
    (tuck_shirt_done)
  )

  (:durative-action do_wear_crop_top
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step1))
    :effect (and
               (at start (not (step_pending step1)))
               (at end (step_done step1))
               (at end (wear_crop_top_done))
            )
  )

  (:durative-action do_pick_top
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (step_pending step2))
    :effect (and
               (at start (not (step_pending step2)))
               (at end (step_done step2))
               (at end (pick_top_done))
            )
  )

  (:durative-action do_tuck_shirt
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step3)) (at start (pick_top_done)))
    :effect (and
               (at start (not (step_pending step3)))
               (at end (step_done step3))
               (at end (tuck_shirt_done))
            )
  )
)
