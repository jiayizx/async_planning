(define (domain get_new_tv)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (researched_done)
    (measured_done)
    (drove_done)
    (purchased_done)
    (withdrew_done)
  )

  (:durative-action do_step1_research
    :duration (= ?duration 10800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (researched_done))
    )
  )

  (:durative-action do_step2_measure
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (researched_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (measured_done))
    )
  )

  (:durative-action do_step3_drive
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (withdrew_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (drove_done))
    )
  )

  (:durative-action do_step4_purchase
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (drove_done)) (at start (researched_done)) (at start (measured_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (purchased_done))
    )
  )

  (:durative-action do_step5_withdraw
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (withdrew_done))
    )
  )
)
