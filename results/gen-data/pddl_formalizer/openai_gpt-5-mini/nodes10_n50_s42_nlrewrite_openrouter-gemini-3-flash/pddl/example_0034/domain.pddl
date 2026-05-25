(define (domain tuna_patties)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (s5_finished)
    (s6_finished)
    (s7_finished)
    (s8_finished)
    (s9_finished)
    (s10_finished)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_finished))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_finished))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (s1_finished)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_finished))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (s1_finished)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_finished))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step5)) (at start (s4_finished)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_finished))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s2_finished)) (at start (s3_finished)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_finished))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step7)) (at start (s6_finished)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_finished))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (s5_finished)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_finished))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step9)) (at start (s7_finished)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_finished))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (s3_finished)) (at start (s4_finished)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_finished))
    )
  )
)
