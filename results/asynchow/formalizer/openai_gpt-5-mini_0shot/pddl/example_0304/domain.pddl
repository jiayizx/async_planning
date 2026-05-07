(define (domain corned-beef-hash)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gather_done)
    (combine_done)
    (toast_done)
    (spread_done)
  )

  (:durative-action do_step1_gather_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (gather_done))
    )
  )

  (:durative-action do_step2_combine_ingredients
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (gather_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (combine_done))
    )
  )

  (:durative-action do_step3_toast_bread
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (toast_done))
    )
  )

  (:durative-action do_step4_spread_mixture
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (combine_done)) (at start (toast_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (spread_done))
    )
  )
)
