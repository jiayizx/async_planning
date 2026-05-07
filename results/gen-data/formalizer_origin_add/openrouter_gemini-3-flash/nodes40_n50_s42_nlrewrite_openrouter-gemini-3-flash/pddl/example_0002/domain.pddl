(define (domain nutella_pancakes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
    (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending)
    (s6_pending) (s7_pending) (s8_pending) (s9_pending) (s10_pending)
    (s11_pending) (s12_pending) (s13_pending) (s14_pending) (s15_pending)
    (s16_pending) (s17_pending) (s18_pending) (s19_pending) (s20_pending)
    (s21_pending) (s22_pending) (s23_pending) (s24_pending) (s25_pending)
    (s26_pending) (s27_pending) (s28_pending) (s29_pending) (s30_pending)
    (s31_pending) (s32_pending) (s33_pending) (s34_pending) (s35_pending)
    (s36_pending) (s37_pending) (s38_pending) (s39_pending) (s40_pending)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s1_pending)) (at start (s29_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s2_pending)) (at start (s28_done)) (at start (s36_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s3_pending)) (at start (s9_done)) (at start (s21_done)) (at start (s24_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s4_pending)) (at start (s8_done)) (at start (s12_done)) (at start (s17_done)) (at start (s26_done)) (at start (s33_done)) (at start (s40_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s5_pending)) (at start (s7_done)) (at start (s11_done)) (at start (s17_done)) (at start (s32_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s6_pending)) (at start (s29_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s7_pending))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s8_pending)) (at start (s12_done)) (at start (s27_done)) (at start (s28_done)) (at start (s36_done)) (at start (s40_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (s9_pending))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s10_pending)) (at start (s25_done)) (at start (s33_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s11_pending)) (at start (s7_done)) (at start (s17_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s12_pending))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s13_pending)) (at start (s2_done)) (at start (s5_done)) (at start (s6_done)) (at start (s7_done)) (at start (s11_done)) (at start (s14_done)) (at start (s17_done)) (at start (s18_done)) (at start (s28_done)) (at start (s29_done)) (at start (s32_done)) (at start (s36_done)) (at start (s38_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (s14_pending))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (s15_pending)) (at start (s3_done)) (at start (s9_done)) (at start (s21_done)) (at start (s24_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s16_pending)) (at start (s9_done)) (at start (s21_done)) (at start (s24_done)) (at start (s25_done)) (at start (s33_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s17_pending))
    :effect (and (at start (not (s17_pending))) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (s18_pending))
    :effect (and (at start (not (s18_pending))) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s19_pending)) (at start (s18_done)) (at start (s20_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s20_pending))
    :effect (and (at start (not (s20_pending))) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s21_pending)) (at start (s33_done)))
    :effect (and (at start (not (s21_pending))) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s22_pending)) (at start (s23_done)) (at start (s27_done)) (at start (s28_done)) (at start (s36_done)) (at start (s40_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s23_pending)) (at start (s27_done)) (at start (s28_done)) (at start (s36_done)) (at start (s40_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (s24_pending)) (at start (s9_done)) (at start (s21_done)) (at start (s33_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s25_pending)) (at start (s33_done)))
    :effect (and (at start (not (s25_pending))) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s26_pending)) (at start (s33_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s27_pending)) (at start (s9_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s28_pending))
    :effect (and (at start (not (s28_pending))) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s29_pending))
    :effect (and (at start (not (s29_pending))) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s30_pending)) (at start (s33_done)))
    :effect (and (at start (not (s30_pending))) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s31_pending)) (at start (s2_done)) (at start (s21_done)) (at start (s24_done)) (at start (s28_done)) (at start (s33_done)) (at start (s36_done)) (at start (s39_done)))
    :effect (and (at start (not (s31_pending))) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 40)
    :condition (at start (s32_pending))
    :effect (and (at start (not (s32_pending))) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s33_pending))
    :effect (and (at start (not (s33_pending))) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s34_pending)) (at start (s5_done)) (at start (s7_done)) (at start (s11_done)) (at start (s17_done)) (at start (s32_done)))
    :effect (and (at start (not (s34_pending))) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s35_pending)) (at start (s9_done)) (at start (s21_done)) (at start (s24_done)) (at start (s28_done)) (at start (s33_done)) (at start (s36_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s36_pending)) (at start (s28_done)))
    :effect (and (at start (not (s36_pending))) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s37_pending)) (at start (s9_done)) (at start (s17_done)) (at start (s25_done)) (at start (s30_done)) (at start (s33_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s38_pending)) (at start (s14_done)))
    :effect (and (at start (not (s38_pending))) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s39_pending)) (at start (s9_done)) (at start (s21_done)) (at start (s24_done)) (at start (s33_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s40_pending)) (at start (s9_done)) (at start (s27_done)) (at start (s28_done)) (at start (s36_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done)))
  )
)