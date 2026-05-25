(define (domain ovarian_reserve_testing)
  (:requirements :typing :durative-actions)
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
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
    (s16_complete)
    (s17_complete)
    (s18_complete)
    (s19_complete)
    (s20_complete)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (s4_complete)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (s6_complete)) (at start (s7_complete)) (at start (s17_complete)) (at start (s18_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step4)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (s3_complete)) (at start (s4_complete)) (at start (s9_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s13_complete)) (at start (s14_complete)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (s1_complete)) (at start (s4_complete)) (at start (s10_complete)) (at start (s11_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step11)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step14)) (at start (s3_complete)) (at start (s4_complete)) (at start (s9_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step16)) (at start (s3_complete)) (at start (s4_complete)) (at start (s9_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s13_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )
)
