(define (domain cervical_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_1)
    (completed_2)
    (completed_3)
    (completed_4)
    (completed_5)
    (completed_6)
    (completed_7)
    (completed_8)
    (completed_9)
    (completed_10)
  )

  (:durative-action do_step1
    :duration (= ?duration 259200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (completed_1))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step2)) (at start (completed_10)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (completed_2))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (completed_7)) (at start (completed_1)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (completed_3))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step4)) (at start (completed_3)) (at start (completed_5)) (at start (completed_7)) (at start (completed_1)) (at start (completed_2)) (at start (completed_10)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (completed_4))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (completed_2)) (at start (completed_10)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (completed_5))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step6)) (at start (completed_4)) (at start (completed_3)) (at start (completed_5)) (at start (completed_7)) (at start (completed_1)) (at start (completed_2)) (at start (completed_10)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (completed_6))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)) (at start (completed_1)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (completed_7))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 302400)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (completed_8))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step9)) (at start (completed_8)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (completed_9))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 2700)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (completed_10))
    )
  )
)
