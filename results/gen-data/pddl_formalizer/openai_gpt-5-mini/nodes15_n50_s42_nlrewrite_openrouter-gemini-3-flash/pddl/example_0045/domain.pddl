(define (domain pancakes)
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
    (s11_completed)
    (s12_completed)
    (s13_completed)
    (s14_completed)
    (s15_completed)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (s2_completed)) (at start (s8_completed)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_completed)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2)) (at start (s8_completed)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_completed)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step3)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_completed)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_completed)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s9_completed)) (at start (s14_completed)) (at start (s10_completed)) (at start (s12_completed)) (at start (s1_completed)) (at start (s2_completed)) (at start (s8_completed)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_completed)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s7_completed)) (at start (s13_completed)) (at start (s3_completed)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_completed)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (s13_completed)) (at start (s3_completed)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_completed)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_completed)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (s14_completed)) (at start (s10_completed)) (at start (s12_completed)) (at start (s1_completed)) (at start (s2_completed)) (at start (s8_completed)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_completed)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_completed)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (s8_completed)) (at start (s10_completed)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_completed)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step12)) (at start (s1_completed)) (at start (s15_completed)) (at start (s2_completed)) (at start (s8_completed)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_completed)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s3_completed)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_completed)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (s10_completed)) (at start (s12_completed)) (at start (s15_completed)) (at start (s1_completed)) (at start (s2_completed)) (at start (s8_completed)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_completed)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_completed)))
  )
)
