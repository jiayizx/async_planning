(define (domain playground)
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
    (s16_completed)
    (s17_completed)
    (s18_completed)
    (s19_completed)
    (s20_completed)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at end (step_done step1))
      (at end (s1_completed))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at end (step_done step2))
      (at end (s2_completed))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (s19_completed)) (at start (s8_completed)) (at start (s11_completed)) (at start (s17_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step3))
      (at end (s3_completed))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (s5_completed)))
    :effect (and
      (at end (step_done step4))
      (at end (s4_completed))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at end (step_done step5))
      (at end (s5_completed))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (s1_completed)) (at start (s18_completed)) (at start (s2_completed)))
    :effect (and
      (at end (step_done step6))
      (at end (s6_completed))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (s11_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step7))
      (at end (s7_completed))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step8)) (at start (s17_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step8))
      (at end (s8_completed))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step9)) (at start (s1_completed)) (at start (s3_completed)) (at start (s17_completed)) (at start (s19_completed)) (at start (s8_completed)) (at start (s11_completed)) (at start (s16_completed)))
    :effect (and
      (at end (step_done step9))
      (at end (s9_completed))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step10))
      (at end (s10_completed))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step11))
      (at end (s11_completed))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step12))
      (at end (s12_completed))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s6_completed)) (at start (s1_completed)) (at start (s18_completed)) (at start (s2_completed)))
    :effect (and
      (at end (step_done step13))
      (at end (s13_completed))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step14)) (at start (s10_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step14))
      (at end (s14_completed))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s13_completed)) (at start (s6_completed)) (at start (s1_completed)) (at start (s18_completed)) (at start (s2_completed)))
    :effect (and
      (at end (step_done step15))
      (at end (s15_completed))
    )
  )

  (:durative-action do_step16
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step16)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step16))
      (at end (s16_completed))
    )
  )

  (:durative-action do_step17
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step17))
      (at end (s17_completed))
    )
  )

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (s2_completed)))
    :effect (and
      (at end (step_done step18))
      (at end (s18_completed))
    )
  )

  (:durative-action do_step19
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step19)) (at start (s8_completed)) (at start (s11_completed)) (at start (s17_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step19))
      (at end (s19_completed))
    )
  )

  (:durative-action do_step20
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (s14_completed)) (at start (s10_completed)) (at start (s16_completed)) (at start (s1_completed)))
    :effect (and
      (at end (step_done step20))
      (at end (s20_completed))
    )
  )
)
