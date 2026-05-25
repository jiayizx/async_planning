(define (domain halloween-decor)
  (:requirements :durative-actions :typing)
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
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (s2_finished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_finished)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (s10_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_finished)))
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (s5_finished)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_finished)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (s8_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_finished)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_finished)))
  )

  (:durative-action do_step6
    :duration (= ?duration 2400)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_finished)))
  )

  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (s3_finished)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_finished)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s9_finished)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_finished)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step9)) (at start (s5_finished)) (at start (s6_finished)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_finished)))
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_finished)))
  )
)
