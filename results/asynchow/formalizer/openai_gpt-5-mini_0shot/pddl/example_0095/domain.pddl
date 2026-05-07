(define (domain rollerblade_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (a1_done)
    (a2_done)
    (a3_done)
    (a4_done)
    (a5_done)
    (a6_done)
    (learned_skating)
  )

  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (a1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (a1_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (a2_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (a2_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (a3_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (a3_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (a4_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (a3_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (a5_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (a4_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (a6_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (a5_done)) (at start (a6_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (learned_skating))
    )
  )
)
