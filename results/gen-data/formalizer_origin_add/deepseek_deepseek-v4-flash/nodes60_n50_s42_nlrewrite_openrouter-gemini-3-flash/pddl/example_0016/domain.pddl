(define (domain argue)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step_outcome ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (step_outcome step12)) (at start (step_outcome step18)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step_outcome step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (step_outcome step8)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step_outcome step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (step_outcome step39)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step_outcome step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (step_outcome step2)) (at start (step_outcome step30)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step_outcome step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step5)) (at start (step_outcome step36)) (at start (step_outcome step41)) (at start (step_outcome step51)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step_outcome step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step_outcome step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (step_outcome step3)) (at start (step_outcome step48)) (at start (step_outcome step56)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step_outcome step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 604800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step_outcome step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step9)) (at start (step_outcome step37)) (at start (step_outcome step45)) (at start (step_outcome step52)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step_outcome step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (step_outcome step32)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step_outcome step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step11)) (at start (step_outcome step19)) (at start (step_outcome step23)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step_outcome step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step12)) (at start (step_outcome step40)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step_outcome step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (step_outcome step6)) (at start (step_outcome step41)) (at start (step_outcome step49)) (at start (step_outcome step56)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step_outcome step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (step_outcome step2)) (at start (step_outcome step11)) (at start (step_outcome step23)) (at start (step_outcome step37)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step_outcome step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (step_outcome step4)) (at start (step_outcome step8)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step_outcome step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step16)) (at start (step_outcome step21)) (at start (step_outcome step31)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step_outcome step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step17)) (at start (step_outcome step9)) (at start (step_outcome step14)) (at start (step_outcome step16)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step_outcome step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 345600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step_outcome step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (step_outcome step52)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step_outcome step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (step_outcome step19)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step_outcome step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (step_outcome step49)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step_outcome step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step22)) (at start (step_outcome step13)) (at start (step_outcome step52)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step_outcome step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (step_outcome step49)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step_outcome step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (step_outcome step54)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step_outcome step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (step_outcome step2)) (at start (step_outcome step8)) (at start (step_outcome step40)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step_outcome step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step26)) (at start (step_outcome step14)) (at start (step_outcome step20)) (at start (step_outcome step39)) (at start (step_outcome step41)) (at start (step_outcome step56)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step_outcome step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (step_outcome step22)) (at start (step_outcome step28)) (at start (step_outcome step49)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step_outcome step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (step_outcome step3)) (at start (step_outcome step22)) (at start (step_outcome step47)) (at start (step_outcome step55)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step_outcome step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (step_outcome step37)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step_outcome step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step30)) (at start (step_outcome step44)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step_outcome step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step31)) (at start (step_outcome step29)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step_outcome step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step32)) (at start (step_outcome step11)) (at start (step_outcome step52)) (at start (step_outcome step58)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step_outcome step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (step_outcome step2)) (at start (step_outcome step44)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step_outcome step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step34)) (at start (step_outcome step25)) (at start (step_outcome step38)) (at start (step_outcome step40)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step_outcome step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (step_outcome step29)) (at start (step_outcome step55)) (at start (step_outcome step56)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step_outcome step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (step_outcome step22)) (at start (step_outcome step27)) (at start (step_outcome step44)) (at start (step_outcome step47)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step_outcome step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step_outcome step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step38)) (at start (step_outcome step9)) (at start (step_outcome step40)) (at start (step_outcome step45)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step_outcome step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 604800)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step_outcome step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 7776000)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step_outcome step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step41)) (at start (step_outcome step4)) (at start (step_outcome step10)) (at start (step_outcome step30)) (at start (step_outcome step37)) (at start (step_outcome step48)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step_outcome step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step42)) (at start (step_outcome step8)) (at start (step_outcome step32)) (at start (step_outcome step56)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step_outcome step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step43)) (at start (step_outcome step34)) (at start (step_outcome step40)) (at start (step_outcome step57)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step_outcome step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 18000)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step_outcome step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step45)) (at start (step_outcome step49)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step_outcome step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step46)) (at start (step_outcome step36)) (at start (step_outcome step52)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step_outcome step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step47)) (at start (step_outcome step4)) (at start (step_outcome step41)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step_outcome step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step48)) (at start (step_outcome step39)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step_outcome step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step49)) (at start (step_outcome step18)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step_outcome step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (step_outcome step29)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step_outcome step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 5184000)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step_outcome step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step_outcome step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (step_outcome step30)) (at start (step_outcome step36)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step_outcome step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (step_outcome step2)) (at start (step_outcome step10)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step_outcome step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step55)) (at start (step_outcome step42)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step_outcome step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 7200)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step_outcome step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step57)) (at start (step_outcome step17)) (at start (step_outcome step44)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step_outcome step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step58)) (at start (step_outcome step3)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step_outcome step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step59)) (at start (step_outcome step51)) (at start (step_outcome step52)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step_outcome step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step60)) (at start (step_outcome step1)) (at start (step_outcome step31)) (at start (step_outcome step46)) (at start (step_outcome step57)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step_outcome step60)))
  )
)