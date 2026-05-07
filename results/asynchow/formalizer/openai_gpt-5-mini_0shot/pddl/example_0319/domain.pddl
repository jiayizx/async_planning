(define (domain make-sky-lanterns)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)
    (p2_done)
    (p3_done)
    (p4_done)
    (p5_done)
    (p6_done)
    (p7_done)
    (p8_done)
    (p9_done)
    (p10_done)
    (p11_done)
    (p12_done)
    (p13_done)
    (p14_done)
    (p15_done)
    (p16_done)
    (p17_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step1)) (at start (p10_done)) (at start (p9_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step2)) (at start (p1_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step3)) (at start (p2_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step4)) (at start (p3_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step5)) (at start (p10_done)) (at start (p9_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (p4_done)) (at start (p5_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step7)) (at start (p13_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step8)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step9)) (at start (p8_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step10)) (at start (p8_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step12)) (at start (p11_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step13)) (at start (p12_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step14)) (at start (p6_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step15)) (at start (p14_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step16)) (at start (p15_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step17)) (at start (p16_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17_done)))
  )
)
