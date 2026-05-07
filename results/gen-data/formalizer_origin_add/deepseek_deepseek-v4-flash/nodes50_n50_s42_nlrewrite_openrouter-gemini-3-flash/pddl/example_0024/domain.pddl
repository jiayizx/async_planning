(define (domain range_task)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete)
    (step2_complete)
    (step3_complete)
    (step4_complete)
    (step5_complete)
    (step6_complete)
    (step7_complete)
    (step8_complete)
    (step9_complete)
    (step10_complete)
    (step11_complete)
    (step12_complete)
    (step13_complete)
    (step14_complete)
    (step15_complete)
    (step16_complete)
    (step17_complete)
    (step18_complete)
    (step19_complete)
    (step20_complete)
    (step21_complete)
    (step22_complete)
    (step23_complete)
    (step24_complete)
    (step25_complete)
    (step26_complete)
    (step27_complete)
    (step28_complete)
    (step29_complete)
    (step30_complete)
    (step31_complete)
    (step32_complete)
    (step33_complete)
    (step34_complete)
    (step35_complete)
    (step36_complete)
    (step37_complete)
    (step38_complete)
    (step39_complete)
    (step40_complete)
    (step41_complete)
    (step42_complete)
    (step43_complete)
    (step44_complete)
    (step45_complete)
    (step46_complete)
    (step47_complete)
    (step48_complete)
    (step49_complete)
    (step50_complete)
    (range_found)
  )
  
  (:durative-action do_step1
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step1)) (at start (step48_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_complete)) (at end (range_found)))
  )
  
  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (step22_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_complete)))
  )
  
  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (step12_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_complete)))
  )
  
  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (step6_complete)) (at start (step8_complete)) (at start (step31_complete)) (at start (step47_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_complete)))
  )
  
  (:durative-action do_step5
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_complete)))
  )
  
  (:durative-action do_step6
    :duration (= ?duration 1800)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_complete)))
  )
  
  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_complete)))
  )
  
  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (step7_complete)) (at start (step9_complete)) (at start (step23_complete)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_complete)))
  )
  
  (:durative-action do_step9
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step9)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_complete)))
  )
  
  (:durative-action do_step10
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step10)) (at start (step45_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_complete)))
  )
  
  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step11)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_complete)))
  )
  
  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_complete)))
  )
  
  (:durative-action do_step13
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step13)) (at start (step5_complete)) (at start (step33_complete)) (at start (step45_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_complete)))
  )
  
  (:durative-action do_step14
    :duration (= ?duration 1500)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_complete)))
  )
  
  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (step33_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_complete)))
  )
  
  (:durative-action do_step16
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step16)) (at start (step9_complete)) (at start (step10_complete)) (at start (step13_complete)) (at start (step27_complete)) (at start (step31_complete)) (at start (step40_complete)) (at start (step48_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_complete)))
  )
  
  (:durative-action do_step17
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (step20_complete)) (at start (step44_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_complete)))
  )
  
  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_complete)))
  )
  
  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_complete)))
  )
  
  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_complete)))
  )
  
  (:durative-action do_step21
    :duration (= ?duration 120)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_complete)))
  )
  
  (:durative-action do_step22
    :duration (= ?duration 600)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_complete)))
  )
  
  (:durative-action do_step23
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step23)) (at start (step21_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_complete)))
  )
  
  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_complete)))
  )
  
  (:durative-action do_step25
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step25)) (at start (step22_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_complete)))
  )
  
  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (step8_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_complete)))
  )
  
  (:durative-action do_step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (step28_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_complete)))
  )
  
  (:durative-action do_step28
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step28)) (at start (step6_complete)) (at start (step20_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_complete)))
  )
  
  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step29)) (at start (step18_complete)) (at start (step28_complete)) (at start (step35_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_complete)))
  )
  
  (:durative-action do_step30
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step30)) (at start (step5_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_complete)))
  )
  
  (:durative-action do_step31
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (step41_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_complete)))
  )
  
  (:durative-action do_step32
    :duration (= ?duration 30)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_complete)))
  )
  
  (:durative-action do_step33
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_complete)))
  )
  
  (:durative-action do_step34
    :duration (= ?duration 180)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_complete)))
  )
  
  (:durative-action do_step35
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step35)) (at start (step3_complete)) (at start (step9_complete)) (at start (step19_complete)) (at start (step20_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_complete)))
  )
  
  (:durative-action do_step36
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step36)) (at start (step29_complete)) (at start (step32_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_complete)))
  )
  
  (:durative-action do_step37
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (step41_complete)) (at start (step46_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_complete)))
  )
  
  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (step23_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_complete)))
  )
  
  (:durative-action do_step39
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step39)) (at start (step10_complete)) (at start (step44_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_complete)))
  )
  
  (:durative-action do_step40
    :duration (= ?duration 120)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_complete)))
  )
  
  (:durative-action do_step41
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step41)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_complete)))
  )
  
  (:durative-action do_step42
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (step3_complete)) (at start (step13_complete)) (at start (step46_complete)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_complete)))
  )
  
  (:durative-action do_step43
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step43)) (at start (step20_complete)) (at start (step35_complete)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_complete)))
  )
  
  (:durative-action do_step44
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step44)) (at start (step12_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_complete)))
  )
  
  (:durative-action do_step45
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step45)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_complete)))
  )
  
  (:durative-action do_step46
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step46)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_complete)))
  )
  
  (:durative-action do_step47
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step47)) (at start (step35_complete)) (at start (step38_complete)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_complete)))
  )
  
  (:durative-action do_step48
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)) (at start (step31_complete)) (at start (step46_complete)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_complete)))
  )
  
  (:durative-action do_step49
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step49)) (at start (step8_complete)) (at start (step18_complete)) (at start (step26_complete)) (at start (step34_complete)) (at start (step46_complete)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_complete)))
  )
  
  (:durative-action do_step50
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step50)) (at start (step10_complete)) (at start (step14_complete)) (at start (step33_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_complete)))
  )
)