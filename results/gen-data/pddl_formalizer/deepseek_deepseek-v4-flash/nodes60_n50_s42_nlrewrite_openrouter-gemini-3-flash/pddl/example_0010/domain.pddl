(define (domain go_to_school)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (semantic_done ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step1) (semantic_done step29) (semantic_done step46)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (semantic_done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step2) (semantic_done step32) (semantic_done step39) (semantic_done step45) (semantic_done step55)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (semantic_done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step3) (semantic_done step13)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (semantic_done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step4) (semantic_done step55)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (semantic_done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step5) (semantic_done step19) (semantic_done step33) (semantic_done step48)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (semantic_done step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (semantic_done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 45)
    :condition (at start (and (step_pending step7) (semantic_done step25)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (semantic_done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step8) (semantic_done step45)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (semantic_done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step9) (semantic_done step7) (semantic_done step23) (semantic_done step40) (semantic_done step46)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (semantic_done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step10) (semantic_done step60)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (semantic_done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step11) (semantic_done step16) (semantic_done step22)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (semantic_done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step12) (semantic_done step39) (semantic_done step49)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (semantic_done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step13) (semantic_done step49)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (semantic_done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step14) (semantic_done step23) (semantic_done step25) (semantic_done step32)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (semantic_done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step15) (semantic_done step59)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (semantic_done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step16) (semantic_done step32)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (semantic_done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step17) (semantic_done step12) (semantic_done step31) (semantic_done step45)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (semantic_done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step18) (semantic_done step40) (semantic_done step53) (semantic_done step57)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (semantic_done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step19) (semantic_done step6) (semantic_done step57) (semantic_done step60)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (semantic_done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step20) (semantic_done step12) (semantic_done step37)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (semantic_done step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step21) (semantic_done step11) (semantic_done step37) (semantic_done step43)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (semantic_done step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step22) (semantic_done step10) (semantic_done step26) (semantic_done step30) (semantic_done step47)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (semantic_done step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (semantic_done step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step24) (semantic_done step16) (semantic_done step33) (semantic_done step40) (semantic_done step51)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (semantic_done step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step25) (semantic_done step32)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (semantic_done step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step26) (semantic_done step19) (semantic_done step23) (semantic_done step34) (semantic_done step55)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (semantic_done step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step27) (semantic_done step13) (semantic_done step39) (semantic_done step40)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (semantic_done step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step28) (semantic_done step5) (semantic_done step47) (semantic_done step57)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (semantic_done step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step29) (semantic_done step2) (semantic_done step40)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (semantic_done step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step30) (semantic_done step5) (semantic_done step36)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (semantic_done step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step31) (semantic_done step3)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (semantic_done step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 60)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (semantic_done step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step33) (semantic_done step20) (semantic_done step31) (semantic_done step38) (semantic_done step49)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (semantic_done step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step34) (semantic_done step46)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (semantic_done step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 600)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (semantic_done step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step36) (semantic_done step22) (semantic_done step38) (semantic_done step48)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (semantic_done step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step37) (semantic_done step4) (semantic_done step40) (semantic_done step45) (semantic_done step48)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (semantic_done step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step38) (semantic_done step25) (semantic_done step35) (semantic_done step47)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (semantic_done step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step39) (semantic_done step32)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (semantic_done step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 300)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (semantic_done step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step41) (semantic_done step3) (semantic_done step4) (semantic_done step5) (semantic_done step33) (semantic_done step47) (semantic_done step50) (semantic_done step52)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (semantic_done step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step42) (semantic_done step12) (semantic_done step20) (semantic_done step32) (semantic_done step49)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (semantic_done step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step43) (semantic_done step1) (semantic_done step13) (semantic_done step18) (semantic_done step56)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (semantic_done step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step44) (semantic_done step8) (semantic_done step15) (semantic_done step40) (semantic_done step57)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (semantic_done step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (semantic_done step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step46) (semantic_done step16) (semantic_done step35)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (semantic_done step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step47) (semantic_done step27) (semantic_done step46)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (semantic_done step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step48) (semantic_done step25) (semantic_done step45)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (semantic_done step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (semantic_done step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 15)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (semantic_done step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step51) (semantic_done step1) (semantic_done step5) (semantic_done step20)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (semantic_done step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 60)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (semantic_done step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step53) (semantic_done step28)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (semantic_done step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step54) (semantic_done step1) (semantic_done step12) (semantic_done step23) (semantic_done step33) (semantic_done step42)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (semantic_done step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 180)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (semantic_done step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step56) (semantic_done step7) (semantic_done step16) (semantic_done step20)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (semantic_done step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step57) (semantic_done step34) (semantic_done step40)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (semantic_done step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step58) (semantic_done step13) (semantic_done step16)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (semantic_done step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step59) (semantic_done step8) (semantic_done step49)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (semantic_done step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 10)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (semantic_done step60)))
  )
)