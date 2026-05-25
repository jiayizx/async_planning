(define (domain adopt-pet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    ; Unique semantic predicates for each step
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
    (s21_complete)
    (s22_complete)
    (s23_complete)
    (s24_complete)
    (s25_complete)
    (s26_complete)
    (s27_complete)
    (s28_complete)
    (s29_complete)
    (s30_complete)
  )

  ; One durative action per step
  (:durative-action do-step1
    :duration (= ?duration 7200)
    :condition (at start (pending step1))
    :effect (and
      (at start (not (pending step1)))
      (at end (done step1))
      (at end (s1_complete)) ))

  (:durative-action do-step2
    :duration (= ?duration 1800)
    :condition (and (at start (pending step2)) (at start (s3_complete)))
    :effect (and
      (at start (not (pending step2)))
      (at end (done step2))
      (at end (s2_complete)) ))

  (:durative-action do-step3
    :duration (= ?duration 900)
    :condition (at start (pending step3))
    :effect (and
      (at start (not (pending step3)))
      (at end (done step3))
      (at end (s3_complete)) ))

  (:durative-action do-step4
    :duration (= ?duration 2700)
    :condition (and (at start (pending step4)) (at start (s15_complete)) (at start (s19_complete)))
    :effect (and
      (at start (not (pending step4)))
      (at end (done step4))
      (at end (s4_complete)) ))

  (:durative-action do-step5
    :duration (= ?duration 10800)
    :condition (and (at start (pending step5)) (at start (s10_complete)))
    :effect (and
      (at start (not (pending step5)))
      (at end (done step5))
      (at end (s5_complete)) ))

  (:durative-action do-step6
    :duration (= ?duration 3600)
    :condition (and (at start (pending step6)) (at start (s14_complete)) (at start (s24_complete)))
    :effect (and
      (at start (not (pending step6)))
      (at end (done step6))
      (at end (s6_complete)) ))

  (:durative-action do-step7
    :duration (= ?duration 86400)
    :condition (at start (pending step7))
    :effect (and
      (at start (not (pending step7)))
      (at end (done step7))
      (at end (s7_complete)) ))

  (:durative-action do-step8
    :duration (= ?duration 3600)
    :condition (and (at start (pending step8)) (at start (s21_complete)) (at start (s22_complete)))
    :effect (and
      (at start (not (pending step8)))
      (at end (done step8))
      (at end (s8_complete)) ))

  (:durative-action do-step9
    :duration (= ?duration 1800)
    :condition (at start (pending step9))
    :effect (and
      (at start (not (pending step9)))
      (at end (done step9))
      (at end (s9_complete)) ))

  (:durative-action do-step10
    :duration (= ?duration 172800)
    :condition (and (at start (pending step10)) (at start (s17_complete)))
    :effect (and
      (at start (not (pending step10)))
      (at end (done step10))
      (at end (s10_complete)) ))

  (:durative-action do-step11
    :duration (= ?duration 259200)
    :condition (and (at start (pending step11)) (at start (s9_complete)) (at start (s19_complete)))
    :effect (and
      (at start (not (pending step11)))
      (at end (done step11))
      (at end (s11_complete)) ))

  (:durative-action do-step12
    :duration (= ?duration 1200)
    :condition (and (at start (pending step12)) (at start (s14_complete)))
    :effect (and
      (at start (not (pending step12)))
      (at end (done step12))
      (at end (s12_complete)) ))

  (:durative-action do-step13
    :duration (= ?duration 5400)
    :condition (at start (pending step13))
    :effect (and
      (at start (not (pending step13)))
      (at end (done step13))
      (at end (s13_complete)) ))

  (:durative-action do-step14
    :duration (= ?duration 7200)
    :condition (and (at start (pending step14)) (at start (s20_complete)) (at start (s21_complete)))
    :effect (and
      (at start (not (pending step14)))
      (at end (done step14))
      (at end (s14_complete)) ))

  (:durative-action do-step15
    :duration (= ?duration 10800)
    :condition (at start (pending step15))
    :effect (and
      (at start (not (pending step15)))
      (at end (done step15))
      (at end (s15_complete)) ))

  (:durative-action do-step16
    :duration (= ?duration 3600)
    :condition (and (at start (pending step16)) (at start (s27_complete)))
    :effect (and
      (at start (not (pending step16)))
      (at end (done step16))
      (at end (s16_complete)) ))

  (:durative-action do-step17
    :duration (= ?duration 14400)
    :condition (and (at start (pending step17)) (at start (s1_complete)))
    :effect (and
      (at start (not (pending step17)))
      (at end (done step17))
      (at end (s17_complete)) ))

  (:durative-action do-step18
    :duration (= ?duration 3600)
    :condition (at start (pending step18))
    :effect (and
      (at start (not (pending step18)))
      (at end (done step18))
      (at end (s18_complete)) ))

  (:durative-action do-step19
    :duration (= ?duration 3600)
    :condition (at start (pending step19))
    :effect (and
      (at start (not (pending step19)))
      (at end (done step19))
      (at end (s19_complete)) ))

  (:durative-action do-step20
    :duration (= ?duration 18000)
    :condition (and (at start (pending step20)) (at start (s10_complete)))
    :effect (and
      (at start (not (pending step20)))
      (at end (done step20))
      (at end (s20_complete)) ))

  (:durative-action do-step21
    :duration (= ?duration 432000)
    :condition (and (at start (pending step21)) (at start (s9_complete)) (at start (s13_complete)) (at start (s18_complete)))
    :effect (and
      (at start (not (pending step21)))
      (at end (done step21))
      (at end (s21_complete)) ))

  (:durative-action do-step22
    :duration (= ?duration 3600)
    :condition (and (at start (pending step22)) (at start (s2_complete)) (at start (s4_complete)) (at start (s28_complete)))
    :effect (and
      (at start (not (pending step22)))
      (at end (done step22))
      (at end (s22_complete)) ))

  (:durative-action do-step23
    :duration (= ?duration 1200)
    :condition (and (at start (pending step23)) (at start (s3_complete)))
    :effect (and
      (at start (not (pending step23)))
      (at end (done step23))
      (at end (s23_complete)) ))

  (:durative-action do-step24
    :duration (= ?duration 14400)
    :condition (and (at start (pending step24)) (at start (s8_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (pending step24)))
      (at end (done step24))
      (at end (s24_complete)) ))

  (:durative-action do-step25
    :duration (= ?duration 900)
    :condition (and (at start (pending step25)) (at start (s28_complete)))
    :effect (and
      (at start (not (pending step25)))
      (at end (done step25))
      (at end (s25_complete)) ))

  (:durative-action do-step26
    :duration (= ?duration 300)
    :condition (and (at start (pending step26)) (at start (s30_complete)))
    :effect (and
      (at start (not (pending step26)))
      (at end (done step26))
      (at end (s26_complete)) ))

  (:durative-action do-step27
    :duration (= ?duration 7200)
    :condition (at start (pending step27))
    :effect (and
      (at start (not (pending step27)))
      (at end (done step27))
      (at end (s27_complete)) ))

  (:durative-action do-step28
    :duration (= ?duration 1800)
    :condition (and (at start (pending step28)) (at start (s4_complete)))
    :effect (and
      (at start (not (pending step28)))
      (at end (done step28))
      (at end (s28_complete)) ))

  (:durative-action do-step29
    :duration (= ?duration 1800)
    :condition (and (at start (pending step29)) (at start (s3_complete)))
    :effect (and
      (at start (not (pending step29)))
      (at end (done step29))
      (at end (s29_complete)) ))

  (:durative-action do-step30
    :duration (= ?duration 600)
    :condition (at start (pending step30))
    :effect (and
      (at start (not (pending step30)))
      (at end (done step30))
      (at end (s30_complete)) ))
)
