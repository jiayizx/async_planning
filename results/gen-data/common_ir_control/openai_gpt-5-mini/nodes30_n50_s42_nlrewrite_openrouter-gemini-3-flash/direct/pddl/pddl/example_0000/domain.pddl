(define (domain choose-life-insurance)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step ?s - step)
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
  )

  ; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step1)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step2)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step3) (s13_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ; Step 4
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step4) (s12_done) (s14_done) (s24_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step5) (s1_done) (s9_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ; Step 6
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step6) (s4_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ; Step 7
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step7)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step8) (s2_done) (s16_done) (s21_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ; Step 9
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step9) (s26_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ; Step 10
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step10) (s7_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )

  ; Step 11
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step11) (s17_done) (s22_done)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (s11_done))
    )
  )

  ; Step 12
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step12)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (s12_done))
    )
  )

  ; Step 13
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step13) (s5_done) (s25_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (s13_done))
    )
  )

  ; Step 14
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step14) (s3_done) (s21_done)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (s14_done))
    )
  )

  ; Step 15
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step15) (s10_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (s15_done))
    )
  )

  ; Step 16
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step16)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (s16_done))
    )
  )

  ; Step 17
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step17) (s2_done) (s29_done)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (s17_done))
    )
  )

  ; Step 18
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step18) (s29_done)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (s18_done))
    )
  )

  ; Step 19
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step19) (s20_done)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (s19_done))
    )
  )

  ; Step 20
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step20) (s5_done)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (s20_done))
    )
  )

  ; Step 21
  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step21)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (s21_done))
    )
  )

  ; Step 22
  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step22) (s8_done)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (s22_done))
    )
  )

  ; Step 23
  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step23) (s9_done) (s16_done) (s18_done)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (s23_done))
    )
  )

  ; Step 24
  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step24) (s28_done)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (s24_done))
    )
  )

  ; Step 25
  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step25) (s5_done) (s19_done)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (s25_done))
    )
  )

  ; Step 26
  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step26) (s18_done)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (s26_done))
    )
  )

  ; Step 27
  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step27) (s10_done)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (s27_done))
    )
  )

  ; Step 28
  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step28) (s15_done)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (s28_done))
    )
  )

  ; Step 29
  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step29) (s24_done)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (s29_done))
    )
  )

  ; Step 30
  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step30) (s6_done) (s24_done)))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (s30_done))
    )
  )
)
