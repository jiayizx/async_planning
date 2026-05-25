(define (domain party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done) (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
  )
  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step1))
      (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step10_done)) (at start (step11_done)) (at start (step12_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step16_done)) (at start (step17_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step26_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step35_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step40_done)) (at start (step42_done)) (at start (step43_done)) (at start (step45_done)) (at start (step46_done)) (at start (step47_done)) (at start (step48_done)) (at start (step50_done))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (step1_done))
    )
  )
  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step2))
      (at start (step5_done)) (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (step2_done))
    )
  )
  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step3))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step12_done)) (at start (step13_done)) (at start (step15_done)) (at start (step17_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step26_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step35_done)) (at start (step36_done)) (at start (step38_done)) (at start (step46_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (step3_done))
    )
  )
  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step4))
      (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (step4_done))
    )
  )
  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending step5))
      (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (step5_done))
    )
  )
  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending step6))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (step6_done))
    )
  )
  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step7))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (step7_done))
    )
  )
  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending step8))
      (at start (step6_done)) (at start (step17_done)) (at start (step47_done))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (step8_done))
    )
  )
  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step9))
      (at start (step47_done))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (step9_done))
    )
  )
  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step10))
      (at start (step4_done)) (at start (step6_done)) (at start (step14_done)) (at start (step18_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (step10_done))
    )
  )
  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step11))
      (at start (step4_done)) (at start (step6_done)) (at start (step10_done)) (at start (step14_done)) (at start (step18_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (step11_done))
    )
  )
  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending step12))
      (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step17_done)) (at start (step23_done)) (at start (step26_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step36_done)) (at start (step38_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (step12_done))
    )
  )
  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending step13))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step15_done)) (at start (step17_done)) (at start (step20_done)) (at start (step22_done)) (at start (step27_done)) (at start (step35_done)) (at start (step38_done)) (at start (step46_done))
    )
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (step13_done))
    )
  )
  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending step14))
      (at start (step4_done)) (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (step14_done))
    )
  )
  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step15))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)) (at start (step27_done)) (at start (step38_done)) (at start (step46_done))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (step15_done))
    )
  )
  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending step16))
      (at start (step4_done)) (at start (step6_done)) (at start (step10_done)) (at start (step11_done)) (at start (step14_done)) (at start (step18_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (step16_done))
    )
  )
  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step17))
      (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (step17_done))
    )
  )
  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step18))
      (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (step18_done))
    )
  )
  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step19))
      (at start (step41_done))
    )
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (step19_done))
    )
  )
  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step20))
    )
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (step20_done))
    )
  )
  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending step21))
      (at start (step6_done)) (at start (step18_done)) (at start (step24_done)) (at start (step30_done))
    )
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (step21_done))
    )
  )
  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step22))
    )
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (step22_done))
    )
  )
  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step23))
      (at start (step30_done))
    )
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (step23_done))
    )
  )
  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending step24))
      (at start (step30_done))
    )
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (step24_done))
    )
  )
  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step25))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (step25_done))
    )
  )
  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step26))
    )
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (step26_done))
    )
  )
  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step27))
    )
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (step27_done))
    )
  )
  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step28))
      (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (step28_done))
    )
  )
  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step29))
      (at start (step22_done))
    )
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (step29_done))
    )
  )
  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step30))
    )
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (step30_done))
    )
  )
  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step31))
    )
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (step31_done))
    )
  )
  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step32))
      (at start (step6_done)) (at start (step17_done)) (at start (step39_done))
    )
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (step32_done))
    )
  )
  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step33))
      (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step17_done)) (at start (step23_done)) (at start (step26_done)) (at start (step30_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (step33_done))
    )
  )
  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step34))
    )
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (step34_done))
    )
  )
  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step35))
      (at start (step20_done))
    )
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (step35_done))
    )
  )
  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step36))
      (at start (step6_done)) (at start (step38_done))
    )
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (step36_done))
    )
  )
  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step37))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step25_done)) (at start (step28_done))
    )
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (step37_done))
    )
  )
  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending step38))
      (at start (step6_done))
    )
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (step38_done))
    )
  )
  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step39))
    )
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (step39_done))
    )
  )
  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step40))
      (at start (step4_done)) (at start (step14_done)) (at start (step39_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (step40_done))
    )
  )
  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step41))
    )
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (step41_done))
    )
  )
  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step42))
      (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step10_done)) (at start (step11_done)) (at start (step12_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step16_done)) (at start (step17_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step26_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step35_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step43_done)) (at start (step45_done)) (at start (step46_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (step42_done))
    )
  )
  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step43))
      (at start (step39_done))
    )
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (step43_done))
    )
  )
  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step44))
      (at start (step30_done))
    )
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (step44_done))
    )
  )
  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step45))
      (at start (step2_done)) (at start (step3_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step12_done)) (at start (step13_done)) (at start (step15_done)) (at start (step17_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step26_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step35_done)) (at start (step36_done)) (at start (step38_done)) (at start (step46_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (step45_done))
    )
  )
  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending step46))
      (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step27_done))
    )
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (step46_done))
    )
  )
  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending step47))
    )
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (step47_done))
    )
  )
  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step48))
      (at start (step5_done)) (at start (step6_done)) (at start (step23_done)) (at start (step30_done))
    )
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (step48_done))
    )
  )
  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step49))
      (at start (step4_done)) (at start (step7_done)) (at start (step14_done)) (at start (step24_done)) (at start (step30_done)) (at start (step39_done)) (at start (step40_done)) (at start (step43_done))
    )
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (step49_done))
    )
  )
  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step50))
      (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step10_done)) (at start (step11_done)) (at start (step12_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step16_done)) (at start (step17_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step26_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step33_done)) (at start (step34_done)) (at start (step35_done)) (at start (step36_done)) (at start (step38_done)) (at start (step39_done)) (at start (step42_done)) (at start (step43_done)) (at start (step45_done)) (at start (step46_done)) (at start (step47_done)) (at start (step48_done))
    )
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (step50_done))
    )
  )
)