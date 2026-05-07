(define (domain care_oily_skin)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mask_tried_done)
    (blotting_done)
    (astringent_done)
    (talk_done)
  )

  (:durative-action do_step1_try_masks
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (talk_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (mask_tried_done))
            )
  )

  (:durative-action do_step2_blotting
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (talk_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (blotting_done))
            )
  )

  (:durative-action do_step3_astringent
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (talk_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (astringent_done))
            )
  )

  (:durative-action do_step4_talk_professional
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (talk_done))
            )
  )
)
