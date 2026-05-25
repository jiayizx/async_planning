(define (domain try_tea)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (tried_tea)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (s9_complete)) (at start (s3_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (s8_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (s1_complete)) (at start (s3_complete)) (at start (s6_complete)) (at start (s9_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step8)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step9)) (at start (s3_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (s5_complete)) (at start (s1_complete)) (at start (s3_complete)) (at start (s6_complete)) (at start (s9_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)) (at end (tried_tea)))
  )
)
