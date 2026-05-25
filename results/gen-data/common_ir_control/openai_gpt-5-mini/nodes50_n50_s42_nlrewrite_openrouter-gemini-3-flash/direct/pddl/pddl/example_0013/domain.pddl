(define (domain ruins_visit)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; unique semantic predicates for each step
    (p1_done) (p2_done) (p3_done) (p4_done) (p5_done) (p6_done) (p7_done) (p8_done) (p9_done) (p10_done)
    (p11_done) (p12_done) (p13_done) (p14_done) (p15_done) (p16_done) (p17_done) (p18_done) (p19_done) (p20_done)
    (p21_done) (p22_done) (p23_done) (p24_done) (p25_done) (p26_done) (p27_done) (p28_done) (p29_done) (p30_done)
    (p31_done) (p32_done) (p33_done) (p34_done) (p35_done) (p36_done) (p37_done) (p38_done) (p39_done) (p40_done)
    (p41_done) (p42_done) (p43_done) (p44_done) (p45_done) (p46_done) (p47_done) (p48_done) (p49_done) (p50_done)
  )

  ; One durative-action per step. Each requires its predecessors' semantic predicates at start

  (:durative-action do_step1
    :duration (= ?duration 1814400)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 7200)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (p43_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step7)) (at start (p46_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (p20_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (p8_done))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (p14_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_done))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step10)) (at start (p5_done)) (at start (p14_done)) (at start (p20_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_done))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 21600)
    :condition (at start (step_pending step11))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (p11_done))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (p26_done)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (p12_done))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (p8_done)) (at start (p24_done)) (at start (p26_done)) (at start (p34_done)) (at start (p40_done)) (at start (p50_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (p13_done))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 3628800)
    :condition (at start (step_pending step14))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (p14_done))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (p49_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (p15_done))
    )
  )

  (:durative-action do_step16
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (p1_done)) (at start (p14_done)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (p16_done))
    )
  )

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step17)) (at start (p8_done)) (at start (p20_done)) (at start (p29_done)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (p17_done))
    )
  )

  (:durative-action do_step18
    :duration (= ?duration 86400)
    :condition (at start (step_pending step18))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (p18_done))
    )
  )

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (p2_done)) (at start (p35_done)) (at start (p44_done)) (at start (p49_done)) (at start (p25_done)) (at start (p20_done)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (p19_done))
    )
  )

  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (p29_done)) (at start (p43_done)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (p20_done))
    )
  )

  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (p21_done))
    )
  )

  (:durative-action do_step22
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (p6_done)) (at start (p29_done)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (p22_done))
    )
  )

  (:durative-action do_step23
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (p49_done)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (p23_done))
    )
  )

  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (p15_done)) (at start (p40_done)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (p24_done))
    )
  )

  (:durative-action do_step25
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step25)) (at start (p5_done)) (at start (p14_done)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (p25_done))
    )
  )

  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (p3_done)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (p26_done))
    )
  )

  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (p20_done)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (p27_done))
    )
  )

  (:durative-action do_step28
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step28)) (at start (p4_done)) (at start (p9_done)) (at start (p50_done)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (p28_done))
    )
  )

  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (p29_done))
    )
  )

  (:durative-action do_step30
    :duration (= ?duration 14400)
    :condition (at start (step_pending step30))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (p30_done))
    )
  )

  (:durative-action do_step31
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step31)) (at start (p14_done)))
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (p31_done))
    )
  )

  (:durative-action do_step32
    :duration (= ?duration 432000)
    :condition (at start (step_pending step32))
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (p32_done))
    )
  )

  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (p14_done)) (at start (p26_done)) (at start (p47_done)))
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (p33_done))
    )
  )

  (:durative-action do_step34
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step34)) (at start (p14_done)) (at start (p37_done)) (at start (p40_done)))
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (p34_done))
    )
  )

  (:durative-action do_step35
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step35)) (at start (p4_done)))
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (p35_done))
    )
  )

  (:durative-action do_step36
    :duration (= ?duration 7200)
    :condition (at start (step_pending step36))
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (p36_done))
    )
  )

  (:durative-action do_step37
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (p7_done)) (at start (p42_done)) (at start (p29_done)) (at start (p50_done)))
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (p37_done))
    )
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (at start (step_pending step38))
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (p38_done))
    )
  )

  (:durative-action do_step39
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step39)) (at start (p19_done)) (at start (p20_done)) (at start (p30_done)) (at start (p42_done)) (at start (p48_done)))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (p39_done))
    )
  )

  (:durative-action do_step40
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step40)) (at start (p17_done)) (at start (p23_done)) (at start (p44_done)))
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (p40_done))
    )
  )

  (:durative-action do_step41
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step41)) (at start (p7_done)))
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (p41_done))
    )
  )

  (:durative-action do_step42
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step42)) (at start (p11_done)) (at start (p32_done)))
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (p42_done))
    )
  )

  (:durative-action do_step43
    :duration (= ?duration 1800)
    :condition (at start (step_pending step43))
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (p43_done))
    )
  )

  (:durative-action do_step44
    :duration (= ?duration 900)
    :condition (at start (step_pending step44))
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (p44_done))
    )
  )

  (:durative-action do_step45
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step45)) (at start (p18_done)))
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (p45_done))
    )
  )

  (:durative-action do_step46
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (p4_done)) (at start (p21_done)) (at start (p20_done)))
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (p46_done))
    )
  )

  (:durative-action do_step47
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step47)) (at start (p45_done)))
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (p47_done))
    )
  )

  (:durative-action do_step48
    :duration (= ?duration 3600)
    :condition (at start (step_pending step48))
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (p48_done))
    )
  )

  (:durative-action do_step49
    :duration (= ?duration 5184000)
    :condition (at start (step_pending step49))
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (p49_done))
    )
  )

  (:durative-action do_step50
    :duration (= ?duration 604800)
    :condition (at start (step_pending step50))
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (p50_done))
    )
  )
)
