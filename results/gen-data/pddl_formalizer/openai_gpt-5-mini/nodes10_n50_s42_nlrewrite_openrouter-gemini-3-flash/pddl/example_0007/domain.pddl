(define (domain piano_acquisition)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (done_s10)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step5)) (at start (done_s7)) (at start (done_s10)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (done_s3)) (at start (done_s10)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (done_s2)) (at start (done_s5)) (at start (done_s7)) (at start (done_s10)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (done_s5)) (at start (done_s10)) (at start (done_s7)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (done_s4)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )
)
