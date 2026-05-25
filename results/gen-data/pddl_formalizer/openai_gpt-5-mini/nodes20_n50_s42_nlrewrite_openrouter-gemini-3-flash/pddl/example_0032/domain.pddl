(define (domain grab-paper)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)
    (s1_sem)
    (s2_sem)
    (s3_sem)
    (s4_sem)
    (s5_sem)
    (s6_sem)
    (s7_sem)
    (s8_sem)
    (s9_sem)
    (s10_sem)
    (s11_sem)
    (s12_sem)
    (s13_sem)
    (s14_sem)
    (s15_sem)
    (s16_sem)
    (s17_sem)
    (s18_sem)
    (s19_sem)
    (s20_sem)
  )

  (:durative-action do-step1
    :duration (= ?duration 30)
    :condition (and
      (at start (pending step1))
      (at start (s2_sem))
      (at start (s3_sem))
      (at start (s4_sem))
      (at start (s6_sem))
      (at start (s7_sem))
      (at start (s8_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
      (at start (s18_sem))
    )
    :effect (and
      (at start (not (pending step1)))
      (at end (step_done step1))
      (at end (s1_sem))
    )
  )

  (:durative-action do-step2
    :duration (= ?duration 10)
    :condition (at start (pending step2))
    :effect (and
      (at start (not (pending step2)))
      (at end (step_done step2))
      (at end (s2_sem))
    )
  )

  (:durative-action do-step3
    :duration (= ?duration 120)
    :condition (and
      (at start (pending step3))
      (at start (s2_sem))
      (at start (s4_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
    )
    :effect (and
      (at start (not (pending step3)))
      (at end (step_done step3))
      (at end (s3_sem))
    )
  )

  (:durative-action do-step4
    :duration (= ?duration 5)
    :condition (and
      (at start (pending step4))
      (at start (s2_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
    )
    :effect (and
      (at start (not (pending step4)))
      (at end (step_done step4))
      (at end (s4_sem))
    )
  )

  (:durative-action do-step5
    :duration (= ?duration 60)
    :condition (and
      (at start (pending step5))
      (at start (s2_sem))
      (at start (s3_sem))
      (at start (s4_sem))
      (at start (s6_sem))
      (at start (s7_sem))
      (at start (s9_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s13_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
      (at start (s18_sem))
    )
    :effect (and
      (at start (not (pending step5)))
      (at end (step_done step5))
      (at end (s5_sem))
    )
  )

  (:durative-action do-step6
    :duration (= ?duration 45)
    :condition (and
      (at start (pending step6))
      (at start (s15_sem))
    )
    :effect (and
      (at start (not (pending step6)))
      (at end (step_done step6))
      (at end (s6_sem))
    )
  )

  (:durative-action do-step7
    :duration (= ?duration 5)
    :condition (and
      (at start (pending step7))
      (at start (s2_sem))
      (at start (s3_sem))
      (at start (s4_sem))
      (at start (s6_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
      (at start (s18_sem))
    )
    :effect (and
      (at start (not (pending step7)))
      (at end (step_done step7))
      (at end (s7_sem))
    )
  )

  (:durative-action do-step8
    :duration (= ?duration 15)
    :condition (at start (pending step8))
    :effect (and
      (at start (not (pending step8)))
      (at end (step_done step8))
      (at end (s8_sem))
    )
  )

  (:durative-action do-step9
    :duration (= ?duration 20)
    :condition (at start (pending step9))
    :effect (and
      (at start (not (pending step9)))
      (at end (step_done step9))
      (at end (s9_sem))
    )
  )

  (:durative-action do-step10
    :duration (= ?duration 300)
    :condition (at start (pending step10))
    :effect (and
      (at start (not (pending step10)))
      (at end (step_done step10))
      (at end (s10_sem))
    )
  )

  (:durative-action do-step11
    :duration (= ?duration 60)
    :condition (and
      (at start (pending step11))
      (at start (s1_sem))
      (at start (s2_sem))
      (at start (s3_sem))
      (at start (s4_sem))
      (at start (s6_sem))
      (at start (s7_sem))
      (at start (s8_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s16_sem))
      (at start (s17_sem))
      (at start (s18_sem))
      (at start (s20_sem))
    )
    :effect (and
      (at start (not (pending step11)))
      (at end (step_done step11))
      (at end (s11_sem))
    )
  )

  (:durative-action do-step12
    :duration (= ?duration 30)
    :condition (at start (pending step12))
    :effect (and
      (at start (not (pending step12)))
      (at end (step_done step12))
      (at end (s12_sem))
    )
  )

  (:durative-action do-step13
    :duration (= ?duration 15)
    :condition (and
      (at start (pending step13))
      (at start (s12_sem))
    )
    :effect (and
      (at start (not (pending step13)))
      (at end (step_done step13))
      (at end (s13_sem))
    )
  )

  (:durative-action do-step14
    :duration (= ?duration 60)
    :condition (and
      (at start (pending step14))
      (at start (s10_sem))
    )
    :effect (and
      (at start (not (pending step14)))
      (at end (step_done step14))
      (at end (s14_sem))
    )
  )

  (:durative-action do-step15
    :duration (= ?duration 10)
    :condition (at start (pending step15))
    :effect (and
      (at start (not (pending step15)))
      (at end (step_done step15))
      (at end (s15_sem))
    )
  )

  (:durative-action do-step16
    :duration (= ?duration 40)
    :condition (and
      (at start (pending step16))
      (at start (s2_sem))
      (at start (s3_sem))
      (at start (s4_sem))
      (at start (s6_sem))
      (at start (s7_sem))
      (at start (s10_sem))
      (at start (s12_sem))
      (at start (s14_sem))
      (at start (s15_sem))
      (at start (s17_sem))
      (at start (s18_sem))
    )
    :effect (and
      (at start (not (pending step16)))
      (at end (step_done step16))
      (at end (s16_sem))
    )
  )

  (:durative-action do-step17
    :duration (= ?duration 180)
    :condition (and
      (at start (pending step17))
      (at start (s15_sem))
    )
    :effect (and
      (at start (not (pending step17)))
      (at end (step_done step17))
      (at end (s17_sem))
    )
  )

  (:durative-action do-step18
    :duration (= ?duration 120)
    :condition (and
      (at start (pending step18))
      (at start (s6_sem))
      (at start (s15_sem))
    )
    :effect (and
      (at start (not (pending step18)))
      (at end (step_done step18))
      (at end (s18_sem))
    )
  )

  (:durative-action do-step19
    :duration (= ?duration 180)
    :condition (and
      (at start (pending step19))
      (at start (s12_sem))
    )
    :effect (and
      (at start (not (pending step19)))
      (at end (step_done step19))
      (at end (s19_sem))
    )
  )

  (:durative-action do-step20
    :duration (= ?duration 2)
    :condition (at start (pending step20))
    :effect (and
      (at start (not (pending step20)))
      (at end (step_done step20))
      (at end (s20_sem))
    )
  )
)
