(define (domain chickpea-salad)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-1)
    (done-2)
    (done-3)
    (done-4)
    (done-5)
    (done-6)
    (done-7)
    (done-8)
    (done-9)
    (done-10)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 43200)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (done-1))
            )
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (done-2))
            )
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (done-2)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (done-3))
            )
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (done-2)) (at start (done-3)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (done-4))
            )
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (done-1)) (at start (done-8)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (done-5))
            )
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (done-1)) (at start (done-2)) (at start (done-3)) (at start (done-4)) (at start (done-5)) (at start (done-7)) (at start (done-8)) (at start (done-9)) (at start (done-10)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (done-6))
            )
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (done-2)) (at start (done-3)) (at start (done-4)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (done-7))
            )
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step8)) (at start (done-1)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (done-8))
            )
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step9)) (at start (done-1)) (at start (done-2)) (at start (done-3)) (at start (done-4)) (at start (done-5)) (at start (done-7)) (at start (done-8)))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (done-9))
            )
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step10))
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (done-10))
            )
  )
)
