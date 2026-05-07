(define (domain comic_creation)
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
    (s11_finished)
    (s12_finished)
    (s13_finished)
    (s14_finished)
    (s15_finished)
  )

  (:durative-action do_step1
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step1)) (at start (s9_finished)) (at start (s2_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_finished)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_finished)))
  )

  (:durative-action do_step3
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (s5_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_finished)))
  )

  (:durative-action do_step4
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step4)) (at start (s1_finished)) (at start (s10_finished)) (at start (s9_finished)) (at start (s2_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_finished)))
  )

  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_finished)))
  )

  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step6)) (at start (s5_finished)) (at start (s13_finished)) (at start (s15_finished)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_finished)))
  )

  (:durative-action do_step7
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step7)) (at start (s3_finished)) (at start (s5_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_finished)))
  )

  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (s6_finished)) (at start (s12_finished)) (at start (s5_finished)) (at start (s13_finished)) (at start (s15_finished)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_finished)))
  )

  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (s2_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_finished)))
  )

  (:durative-action do_step10
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step10)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_finished)))
  )

  (:durative-action do_step11
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step11)) (at start (s13_finished)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_finished)))
  )

  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (s6_finished)) (at start (s5_finished)) (at start (s13_finished)) (at start (s15_finished)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_finished)))
  )

  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_finished)))
  )

  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_finished)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_finished)))
  )
)
