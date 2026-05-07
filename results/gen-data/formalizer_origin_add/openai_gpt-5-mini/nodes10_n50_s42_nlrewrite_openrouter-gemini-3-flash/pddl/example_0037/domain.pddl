(define (domain hold-pick)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (s5_completed)
    (s6_completed)
    (s7_completed)
    (s8_completed)
    (s9_completed)
    (s10_completed)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step1)) (at start (s2_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_completed))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step2)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_completed))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (step_pending step3)) (at start (s7_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_completed))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step4)) (at start (s8_completed)) (at start (s1_completed)) (at start (s10_completed)) (at start (s2_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_completed))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1)
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_completed))
            )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step6)) (at start (s3_completed)) (at start (s4_completed)) (at start (s8_completed)) (at start (s1_completed)) (at start (s7_completed)) (at start (s2_completed)) (at start (s10_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (s6_completed))
            )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step7)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (s7_completed))
            )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step8)) (at start (s1_completed)) (at start (s10_completed)) (at start (s2_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (s8_completed))
            )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step9)) (at start (s4_completed)) (at start (s8_completed)) (at start (s1_completed)) (at start (s10_completed)) (at start (s2_completed)) (at start (s7_completed)) (at start (s3_completed)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (s9_completed))
            )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step10))
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (s10_completed))
            )
  )
)
