(define (domain plant_enrichment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (task_complete)
               (step1_done - step) (step2_done - step) (step3_done - step) (step4_done - step) (step5_done - step)
               (step6_done - step) (step7_done - step) (step8_done - step) (step9_done - step) (step10_done - step)
               (step11_done - step) (step12_done - step) (step13_done - step) (step14_done - step) (step15_done - step)
               (step16_done - step) (step17_done - step) (step18_done - step) (step19_done - step) (step20_done - step)
               (step21_done - step) (step22_done - step) (step23_done - step) (step24_done - step) (step25_done - step)
               (step26_done - step) (step27_done - step) (step28_done - step) (step29_done - step) (step30_done - step)
               (step31_done - step) (step32_done - step) (step33_done - step) (step34_done - step) (step35_done - step)
               (step36_done - step) (step37_done - step) (step38_done - step) (step39_done - step) (step40_done - step)
               (step41_done - step) (step42_done - step) (step43_done - step) (step44_done - step) (step45_done - step)
               (step46_done - step) (step47_done - step) (step48_done - step) (step49_done - step) (step50_done - step)
               (step51_done - step) (step52_done - step) (step53_done - step) (step54_done - step) (step55_done - step)
               (step56_done - step) (step57_done - step) (step58_done - step) (step59_done - step) (step60_done - step))
  (:durative-action do_step1 :duration 600
    :condition (and (at start (step_pending step1)) (at start (step11_done step11)) (at start (step43_done step43)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done step1))))
  (:durative-action do_step2 :duration 300
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done step2))))
  (:durative-action do_step3 :duration 600
    :condition (and (at start (step_pending step3)) (at start (step17_done step17)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done step3))))
  (:durative-action do_step4 :duration 120
    :condition (and (at start (step_pending step4)) (at start (step17_done step17)) (at start (step26_done step26)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done step4))))
  (:durative-action do_step5 :duration 600
    :condition (and (at start (step_pending step5)) (at start (step7_done step7)) (at start (step25_done step25)) (at start (step30_done step30)) (at start (step44_done step44)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done step5))))
  (:durative-action do_step6 :duration 120
    :condition (and (at start (step_pending step6)) (at start (step8_done step8)) (at start (step12_done step12)) (at start (step15_done step15)) (at start (step21_done step21)) (at start (step39_done step39)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done step6))))
  (:durative-action do_step7 :duration 180
    :condition (and (at start (step_pending step7)) (at start (step32_done step32)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done step7))))
  (:durative-action do_step8 :duration 1200
    :condition (and (at start (step_pending step8)) (at start (step22_done step22)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done step8))))
  (:durative-action do_step9 :duration 1800
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done step9))))
  (:durative-action do_step10 :duration 900
    :condition (and (at start (step_pending step10)) (at start (step4_done step4)) (at start (step19_done step19)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done step10))))
  (:durative-action do_step11 :duration 300
    :condition (and (at start (step_pending step11)) (at start (step20_done step20)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done step11))))
  (:durative-action do_step12 :duration 600
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done step12))))
  (:durative-action do_step13 :duration 900
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done step13))))
  (:durative-action do_step14 :duration 300
    :condition (and (at start (step_pending step14)) (at start (step12_done step12)) (at start (step28_done step28)) (at start (step47_done step47)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done step14))))
  (:durative-action do_step15 :duration 300
    :condition (and (at start (step_pending step15)) (at start (step43_done step43)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done step15))))
  (:durative-action do_step16 :duration 3600
    :condition (and (at start (step_pending step16)) (at start (step50_done step50)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done step16))))
  (:durative-action do_step17 :duration 300
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done step17))))
  (:durative-action do_step18 :duration 900
    :condition (and (at start (step_pending step18)) (at start (step12_done step12)) (at start (step22_done step22)) (at start (step30_done step30)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done step18))))
  (:durative-action do_step19 :duration 180
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done step19))))
  (:durative-action do_step20 :duration 3600
    :condition (and (at start (step_pending step20)) (at start (step21_done step21)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done step20))))
  (:durative-action do_step21 :duration 900
    :condition (and (at start (step_pending step21)) (at start (step3_done step3)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done step21))))
  (:durative-action do_step22 :duration 1800
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done step22))))
  (:durative-action do_step23 :duration 600
    :condition (and (at start (step_pending step23)) (at start (step38_done step38)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done step23))))
  (:durative-action do_step24 :duration 300
    :condition (and (at start (step_pending step24)) (at start (step33_done step33)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done step24))))
  (:durative-action do_step25 :duration 600
    :condition (and (at start (step_pending step25)) (at start (step2_done step2)) (at start (step12_done step12)) (at start (step28_done step28)) (at start (step34_done step34)) (at start (step48_done step48)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done step25))))
  (:durative-action do_step26 :duration 1200
    :condition (and (at start (step_pending step26)) (at start (step59_done step59)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done step26))))
  (:durative-action do_step27 :duration 600
    :condition (and (at start (step_pending step27)) (at start (step3_done step3)) (at start (step32_done step32)) (at start (step40_done step40)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done step27))))
  (:durative-action do_step28 :duration 2700
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done step28))))
  (:durative-action do_step29 :duration 600
    :condition (and (at start (step_pending step29)) (at start (step4_done step4)) (at start (step37_done step37)) (at start (step51_done step51)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done step29))))
  (:durative-action do_step30 :duration 300
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done step30))))
  (:durative-action do_step31 :duration 300
    :condition (and (at start (step_pending step31)) (at start (step8_done step8)) (at start (step11_done step11)) (at start (step13_done step13)) (at start (step35_done step35)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done step31))))
  (:durative-action do_step32 :duration 600
    :condition (and (at start (step_pending step32)) (at start (step2_done step2)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done step32))))
  (:durative-action do_step33 :duration 120
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done step33))))
  (:durative-action do_step34 :duration 300
    :condition (and (at start (step_pending step34)) (at start (step7_done step7)) (at start (step33_done step33)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done step34))))
  (:durative-action do_step35 :duration 300
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done step35))))
  (:durative-action do_step36 :duration 600
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done step36))))
  (:durative-action do_step37 :duration 900
    :condition (and (at start (step_pending step37)) (at start (step4_done step4)) (at start (step13_done step13)) (at start (step20_done step20)) (at start (step47_done step47)) (at start (step55_done step55)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done step37))))
  (:durative-action do_step38 :duration 300
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done step38))))
  (:durative-action do_step39 :duration 600
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done step39))))
  (:durative-action do_step40 :duration 900
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done step40))))
  (:durative-action do_step41 :duration 120
    :condition (and (at start (step_pending step41)) (at start (step8_done step8)) (at start (step21_done step21)) (at start (step44_done step44)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_done step41))))
  (:durative-action do_step42 :duration 900
    :condition (and (at start (step_pending step42)) (at start (step17_done step17)) (at start (step22_done step22)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_done step42))))
  (:durative-action do_step43 :duration 14400
    :condition (and (at start (step_pending step43)) (at start (step12_done step12)) (at start (step39_done step39)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_done step43))))
  (:durative-action do_step44 :duration 120
    :condition (and (at start (step_pending step44)) (at start (step30_done step30)) (at start (step34_done step34)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_done step44))))
  (:durative-action do_step45 :duration 120
    :condition (and (at start (step_pending step45)) (at start (step3_done step3)) (at start (step5_done step5)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_done step45))))
  (:durative-action do_step46 :duration 300
    :condition (and (at start (step_pending step46)) (at start (step5_done step5)) (at start (step44_done step44)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_done step46))))
  (:durative-action do_step47 :duration 86400
    :condition (and (at start (step_pending step47)) (at start (step16_done step16)) (at start (step21_done step21)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_done step47))))
  (:durative-action do_step48 :duration 900
    :condition (and (at start (step_pending step48)) (at start (step18_done step18)) (at start (step36_done step36)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_done step48))))
  (:durative-action do_step49 :duration 1200
    :condition (and (at start (step_pending step49)) (at start (step32_done step32)) (at start (step54_done step54)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_done step49))))
  (:durative-action do_step50 :duration 1200
    :condition (and (at start (step_pending step50)) (at start (step9_done step9)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_done step50))))
  (:durative-action do_step51 :duration 300
    :condition (and (at start (step_pending step51)) (at start (step16_done step16)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_done step51))))
  (:durative-action do_step52 :duration 300
    :condition (and (at start (step_pending step52)) (at start (step12_done step12)) (at start (step21_done step21)) (at start (step34_done step34)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_done step52))))
  (:durative-action do_step53 :duration 60
    :condition (and (at start (step_pending step53)) (at start (step3_done step3)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_done step53))))
  (:durative-action do_step54 :duration 600
    :condition (and (at start (step_pending step54)) (at start (step36_done step36)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_done step54))))
  (:durative-action do_step55 :duration 600
    :condition (and (at start (step_pending step55)) (at start (step7_done step7)) (at start (step23_done step23)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_done step55))))
  (:durative-action do_step56 :duration 300
    :condition (and (at start (step_pending step56)) (at start (step5_done step5)) (at start (step7_done step7)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_done step56))))
  (:durative-action do_step57 :duration 300
    :condition (and (at start (step_pending step57)) (at start (step49_done step49)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_done step57))))
  (:durative-action do_step58 :duration 900
    :condition (and (at start (step_pending step58)) (at start (step8_done step8)) (at start (step15_done step15)) (at start (step17_done step17)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_done step58))))
  (:durative-action do_step59 :duration 172800
    :condition (and (at start (step_pending step59)) (at start (step35_done step35)) (at start (step58_done step58)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_done step59))))
  (:durative-action do_step60 :duration 600
    :condition (and (at start (step_pending step60)) (at start (step19_done step19)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_done step60)) (at end (task_complete))))
)