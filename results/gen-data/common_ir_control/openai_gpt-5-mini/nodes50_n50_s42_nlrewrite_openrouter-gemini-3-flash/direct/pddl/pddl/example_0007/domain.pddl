(define (domain cite-annual-report)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; unique semantic predicates for each step
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)
    (step16_done)
    (step17_done)
    (step18_done)
    (step19_done)
    (step20_done)
    (step21_done)
    (step22_done)
    (step23_done)
    (step24_done)
    (step25_done)
    (step26_done)
    (step27_done)
    (step28_done)
    (step29_done)
    (step30_done)
    (step31_done)
    (step32_done)
    (step33_done)
    (step34_done)
    (step35_done)
    (step36_done)
    (step37_done)
    (step38_done)
    (step39_done)
    (step40_done)
    (step41_done)
    (step42_done)
    (step43_done)
    (step44_done)
    (step45_done)
    (step46_done)
    (step47_done)
    (step48_done)
    (step49_done)
    (step50_done)
  )

  ; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (step1_done))
    )
  )

  ; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (step2_done))
    )
  )

  ; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (step5_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (step3_done))
    )
  )

  ; Step 4
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (step34_done)) (at start (step32_done)) (at start (step40_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (step4_done))
    )
  )

  ; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (step5_done))
    )
  )

  ; Step 6
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (step6_done))
    )
  )

  ; Step 7
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (step7_done))
    )
  )

  ; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (step22_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (step8_done))
    )
  )

  ; Step 9
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (step43_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (step9_done))
    )
  )

  ; Step 10
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (step10_done))
    )
  )

  ; Step 11
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step11)) (at start (step2_done)) (at start (step5_done)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (step11_done))
    )
  )

  ; Step 12
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (step35_done)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (step12_done))
    )
  )

  ; Step 13
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (step18_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (step13_done))
    )
  )

  ; Step 14
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (step22_done)) (at start (step36_done)) (at start (step39_done)) (at start (step47_done)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (step14_done))
    )
  )

  ; Step 15
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (step2_done)) (at start (step10_done)) (at start (step25_done)) (at start (step37_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (step15_done))
    )
  )

  ; Step 16
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (step21_done)) (at start (step37_done)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (step16_done))
    )
  )

  ; Step 17
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending step17))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (step17_done))
    )
  )

  ; Step 18
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending step18))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (step18_done))
    )
  )

  ; Step 19
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step19)) (at start (step22_done)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (step19_done))
    )
  )

  ; Step 20
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (at start (step_pending step20))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (step20_done))
    )
  )

  ; Step 21
  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step21)) (at start (step37_done)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (step21_done))
    )
  )

  ; Step 22
  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (step6_done)) (at start (step18_done)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (step22_done))
    )
  )

  ; Step 23
  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step23)) (at start (step32_done)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (step23_done))
    )
  )

  ; Step 24
  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (step46_done)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (step24_done))
    )
  )

  ; Step 25
  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (step21_done)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (step25_done))
    )
  )

  ; Step 26
  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending step26))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (step26_done))
    )
  )

  ; Step 27
  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (step35_done)) (at start (step22_done)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (step27_done))
    )
  )

  ; Step 28
  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (step3_done)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (step28_done))
    )
  )

  ; Step 29
  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step29)) (at start (step30_done)) (at start (step37_done)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (step29_done))
    )
  )

  ; Step 30
  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending step30))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (step30_done))
    )
  )

  ; Step 31
  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step31)) (at start (step7_done)) (at start (step30_done)))
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (step31_done))
    )
  )

  ; Step 32
  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending step32))
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (step32_done))
    )
  )

  ; Step 33
  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (step18_done)))
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (step33_done))
    )
  )

  ; Step 34
  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step34)) (at start (step1_done)) (at start (step11_done)) (at start (step13_done)) (at start (step20_done)) (at start (step33_done)) (at start (step41_done)) )
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (step34_done))
    )
  )

  ; Step 35
  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (at start (step_pending step35))
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (step35_done))
    )
  )

  ; Step 36
  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (step31_done)))
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (step36_done))
    )
  )

  ; Step 37
  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (step28_done)))
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (step37_done))
    )
  )

  ; Step 38
  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (step6_done)))
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (step38_done))
    )
  )

  ; Step 39
  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step39)) (at start (step31_done)) (at start (step34_done)))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (step39_done))
    )
  )

  ; Step 40
  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (step7_done)))
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (step40_done))
    )
  )

  ; Step 41
  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step41)) (at start (step17_done)))
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (step41_done))
    )
  )

  ; Step 42
  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending step42))
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (step42_done))
    )
  )

  ; Step 43
  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step43)) (at start (step2_done)) (at start (step34_done)) (at start (step31_done)))
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (step43_done))
    )
  )

  ; Step 44
  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step44)) (at start (step8_done)) (at start (step10_done)) (at start (step41_done)) (at start (step48_done)))
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (step44_done))
    )
  )

  ; Step 45
  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (step25_done)) (at start (step49_done)))
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (step45_done))
    )
  )

  ; Step 46
  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (step46_done))
    )
  )

  ; Step 47
  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step47)) (at start (step5_done)) (at start (step48_done)) (at start (step45_done)))
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (step47_done))
    )
  )

  ; Step 48
  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending step48))
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (step48_done))
    )
  )

  ; Step 49
  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step49)) (at start (step46_done)))
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (step49_done))
    )
  )

  ; Step 50
  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (step26_done)) (at start (step33_done)) (at start (step43_done)) (at start (step46_done)) (at start (step26_done)))
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (step50_done))
    )
  )
)
