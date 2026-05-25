(define (domain adopt-pet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1) (done1) (s1_complete)
    (pending2) (done2) (s2_complete)
    (pending3) (done3) (s3_complete)
    (pending4) (done4) (s4_complete)
    (pending5) (done5) (s5_complete)
    (pending6) (done6) (s6_complete)
    (pending7) (done7) (s7_complete)
    (pending8) (done8) (s8_complete)
    (pending9) (done9) (s9_complete)
    (pending10) (done10) (s10_complete)
    (pending11) (done11) (s11_complete)
    (pending12) (done12) (s12_complete)
    (pending13) (done13) (s13_complete)
    (pending14) (done14) (s14_complete)
    (pending15) (done15) (s15_complete)
    (pending16) (done16) (s16_complete)
    (pending17) (done17) (s17_complete)
    (pending18) (done18) (s18_complete)
    (pending19) (done19) (s19_complete)
    (pending20) (done20) (s20_complete)
    (pending21) (done21) (s21_complete)
    (pending22) (done22) (s22_complete)
    (pending23) (done23) (s23_complete)
    (pending24) (done24) (s24_complete)
    (pending25) (done25) (s25_complete)
    (pending26) (done26) (s26_complete)
    (pending27) (done27) (s27_complete)
    (pending28) (done28) (s28_complete)
    (pending29) (done29) (s29_complete)
    (pending30) (done30) (s30_complete)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (pending1) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending1))) (at end (done1)) (at end (s1_complete)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (pending2) (s3_complete)))
    :effect (and (at start (not (pending2))) (at end (done2)) (at end (s2_complete)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending3))
    :effect (and (at start (not (pending3))) (at end (done3)) (at end (s3_complete)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (and (pending4) (s15_complete) (s19_complete)))
    :effect (and (at start (not (pending4))) (at end (done4)) (at end (s4_complete)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (pending5) (s10_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending5))) (at end (done5)) (at end (s5_complete)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (pending6) (s14_complete) (s24_complete) (s21_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending6))) (at end (done6)) (at end (s6_complete)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (pending7))
    :effect (and (at start (not (pending7))) (at end (done7)) (at end (s7_complete)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (pending8) (s22_complete) (s21_complete) (s2_complete) (s3_complete) (s4_complete) (s15_complete) (s19_complete) (s28_complete) (s13_complete) (s9_complete) (s18_complete) (s11_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending8))) (at end (done8)) (at end (s8_complete)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (pending9))
    :effect (and (at start (not (pending9))) (at end (done9)) (at end (s9_complete)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (pending10) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending10))) (at end (done10)) (at end (s10_complete)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (and (pending11) (s9_complete) (s19_complete)))
    :effect (and (at start (not (pending11))) (at end (done11)) (at end (s11_complete)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (pending12) (s14_complete) (s21_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete) (s6_complete)))
    :effect (and (at start (not (pending12))) (at end (done12)) (at end (s12_complete)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (pending13))
    :effect (and (at start (not (pending13))) (at end (done13)) (at end (s13_complete)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (pending14) (s20_complete) (s10_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete) (s21_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete)))
    :effect (and (at start (not (pending14))) (at end (done14)) (at end (s14_complete)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (pending15))
    :effect (and (at start (not (pending15))) (at end (done15)) (at end (s15_complete)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (pending16) (s27_complete)))
    :effect (and (at start (not (pending16))) (at end (done16)) (at end (s16_complete)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (pending17) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending17))) (at end (done17)) (at end (s17_complete)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending18))
    :effect (and (at start (not (pending18))) (at end (done18)) (at end (s18_complete)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending19))
    :effect (and (at start (not (pending19))) (at end (done19)) (at end (s19_complete)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (and (pending20) (s10_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending20))) (at end (done20)) (at end (s20_complete)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 432000)
    :condition (at start (and (pending21) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete)))
    :effect (and (at start (not (pending21))) (at end (done21)) (at end (s21_complete)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (pending22) (s2_complete) (s4_complete) (s28_complete) (s3_complete) (s15_complete) (s19_complete)))
    :effect (and (at start (not (pending22))) (at end (done22)) (at end (s22_complete)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (pending23) (s3_complete)))
    :effect (and (at start (not (pending23))) (at end (done23)) (at end (s23_complete)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (pending24) (s8_complete) (s13_complete) (s22_complete) (s21_complete) (s2_complete) (s4_complete) (s28_complete) (s3_complete) (s15_complete) (s19_complete) (s9_complete) (s18_complete) (s11_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete)))
    :effect (and (at start (not (pending24))) (at end (done24)) (at end (s24_complete)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (pending25) (s28_complete) (s4_complete) (s15_complete) (s19_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete) (s6_complete)))
    :effect (and (at start (not (pending25))) (at end (done25)) (at end (s25_complete)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (pending26) (s30_complete) (s6_complete) (s14_complete) (s20_complete) (s10_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete) (s21_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete)))
    :effect (and (at start (not (pending26))) (at end (done26)) (at end (s26_complete)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (pending27))
    :effect (and (at start (not (pending27))) (at end (done27)) (at end (s27_complete)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (pending28) (s4_complete) (s15_complete) (s19_complete)))
    :effect (and (at start (not (pending28))) (at end (done28)) (at end (s28_complete)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (pending29) (s3_complete)))
    :effect (and (at start (not (pending29))) (at end (done29)) (at end (s29_complete)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (pending30) (s6_complete) (s14_complete) (s20_complete) (s10_complete) (s17_complete) (s1_complete) (s7_complete) (s27_complete) (s21_complete) (s9_complete) (s13_complete) (s18_complete) (s11_complete) (s19_complete)))
    :effect (and (at start (not (pending30))) (at end (done30)) (at end (s30_complete)))
  )
)
