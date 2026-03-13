(define (domain write-tengwar)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
    (s16_pending) (s16_done)
    (s17_pending) (s17_done)
    (s18_pending) (s18_done)
    (s19_pending) (s19_done)
    (s20_pending) (s20_done)
    (s21_pending) (s21_done)
    (s22_pending) (s22_done)
    (s23_pending) (s23_done)
    (s24_pending) (s24_done)
    (s25_pending) (s25_done)
    (s26_pending) (s26_done)
    (s27_pending) (s27_done)
    (s28_pending) (s28_done)
    (s29_pending) (s29_done)
    (s30_pending) (s30_done)
    (s31_pending) (s31_done)
    (s32_pending) (s32_done)
    (s33_pending) (s33_done)
    (s34_pending) (s34_done)
    (s35_pending) (s35_done)
    (s36_pending) (s36_done)
    (s37_pending) (s37_done)
    (s38_pending) (s38_done)
    (s39_pending) (s39_done)
    (s40_pending) (s40_done)
  )

  (:durative-action do_1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s1_pending)) (at start (s15_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action do_2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s2_pending)) (at start (s38_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action do_3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s3_pending)) (at start (s1_done)) (at start (s25_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action do_4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (s4_pending)) (at start (s33_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action do_5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s5_pending)) (at start (s2_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action do_6
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s6_pending))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action do_7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s7_pending)) (at start (s40_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action do_8
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (s8_pending))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action do_9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s9_pending)) (at start (s30_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action do_10
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (s10_pending)) (at start (s28_done)) (at start (s39_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action do_11
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (s11_pending)) (at start (s7_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action do_12
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (s12_pending)) (at start (s29_done)) (at start (s20_done)) (at start (s36_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action do_13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s13_pending)) (at start (s1_done)) (at start (s5_done)) (at start (s31_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action do_14
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (s14_pending)) (at start (s32_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  (:durative-action do_15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s15_pending)) (at start (s37_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )

  (:durative-action do_16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s16_pending)) (at start (s2_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done)))
  )

  (:durative-action do_17
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s17_pending)) (at start (s12_done)) (at start (s20_done)) (at start (s38_done)))
    :effect (and (at start (not (s17_pending))) (at end (s17_done)))
  )

  (:durative-action do_18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s18_pending)) (at start (s8_done)) (at start (s37_done)))
    :effect (and (at start (not (s18_pending))) (at end (s18_done)))
  )

  (:durative-action do_19
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (s19_pending)) (at start (s1_done)) (at start (s26_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done)))
  )

  (:durative-action do_20
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s20_pending)) (at start (s11_done)) (at start (s34_done)))
    :effect (and (at start (not (s20_pending))) (at end (s20_done)))
  )

  (:durative-action do_21
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (s21_pending))
    :effect (and (at start (not (s21_pending))) (at end (s21_done)))
  )

  (:durative-action do_22
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s22_pending)) (at start (s29_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done)))
  )

  (:durative-action do_23
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s23_pending)) (at start (s6_done)) (at start (s9_done)) (at start (s22_done)) (at start (s33_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done)))
  )

  (:durative-action do_24
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (s24_pending)) (at start (s35_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done)))
  )

  (:durative-action do_25
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s25_pending)) (at start (s5_done)))
    :effect (and (at start (not (s25_pending))) (at end (s25_done)))
  )

  (:durative-action do_26
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (s26_pending)) (at start (s4_done)) (at start (s9_done)) (at start (s20_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done)))
  )

  (:durative-action do_27
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s27_pending)) (at start (s19_done)) (at start (s21_done)) (at start (s30_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done)))
  )

  (:durative-action do_28
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s28_pending)) (at start (s40_done)))
    :effect (and (at start (not (s28_pending))) (at end (s28_done)))
  )

  (:durative-action do_29
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (s29_pending)) (at start (s14_done)) (at start (s32_done)))
    :effect (and (at start (not (s29_pending))) (at end (s29_done)))
  )

  (:durative-action do_30
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (s30_pending))
    :effect (and (at start (not (s30_pending))) (at end (s30_done)))
  )

  (:durative-action do_31
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s31_pending))
    :effect (and (at start (not (s31_pending))) (at end (s31_done)))
  )

  (:durative-action do_32
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (s32_pending)) (at start (s7_done)) (at start (s33_done)))
    :effect (and (at start (not (s32_pending))) (at end (s32_done)))
  )

  (:durative-action do_33
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (s33_pending))
    :effect (and (at start (not (s33_pending))) (at end (s33_done)))
  )

  (:durative-action do_34
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (s34_pending)) (at start (s4_done)) (at start (s21_done)))
    :effect (and (at start (not (s34_pending))) (at end (s34_done)))
  )

  (:durative-action do_35
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s35_pending)) (at start (s40_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done)))
  )

  (:durative-action do_36
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s36_pending)) (at start (s3_done)))
    :effect (and (at start (not (s36_pending))) (at end (s36_done)))
  )

  (:durative-action do_37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s37_pending)) (at start (s2_done)) (at start (s16_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done)))
  )

  (:durative-action do_38
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (s38_pending))
    :effect (and (at start (not (s38_pending))) (at end (s38_done)))
  )

  (:durative-action do_39
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s39_pending)) (at start (s9_done)) (at start (s19_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done)))
  )

  (:durative-action do_40
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (s40_pending))
    :effect (and (at start (not (s40_pending))) (at end (s40_done)))
  )
)
