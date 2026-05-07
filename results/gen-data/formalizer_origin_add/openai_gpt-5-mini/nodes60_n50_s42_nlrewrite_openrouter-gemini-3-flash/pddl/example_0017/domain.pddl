(define (domain henna-use)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step_semantic_done ?s - step)
  )

  (:durative-action do-step1
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (step_semantic_done step12)) (at start (step_semantic_done step60)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step_semantic_done step1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (step_semantic_done step22)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step_semantic_done step2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (step_semantic_done step6)) (at start (step_semantic_done step16)) (at start (step_semantic_done step36)) (at start (step_semantic_done step56)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step_semantic_done step3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (step_semantic_done step35)) (at start (step_semantic_done step37)) (at start (step_semantic_done step41)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step_semantic_done step4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step_semantic_done step9)) (at start (step_semantic_done step13)) (at start (step_semantic_done step48)) (at start (step_semantic_done step59)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step_semantic_done step5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (step_semantic_done step1)) (at start (step_semantic_done step2)) (at start (step_semantic_done step22)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step_semantic_done step6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step_semantic_done step7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (step_semantic_done step6)) (at start (step_semantic_done step10)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step_semantic_done step8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step9)) (at start (step_semantic_done step7)) (at start (step_semantic_done step8)) (at start (step_semantic_done step51)) (at start (step_semantic_done step54)) (at start (step_semantic_done step35)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step_semantic_done step9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (step_semantic_done step19)) (at start (step_semantic_done step21)) (at start (step_semantic_done step55)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step_semantic_done step10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (step_semantic_done step26)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step_semantic_done step11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step_semantic_done step12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step_semantic_done step13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step_semantic_done step14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (step_semantic_done step20)) (at start (step_semantic_done step28)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step_semantic_done step15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step_semantic_done step16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step17)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step_semantic_done step17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step_semantic_done step18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (step_semantic_done step20)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step_semantic_done step19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step_semantic_done step20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (step_semantic_done step59)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step_semantic_done step21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step_semantic_done step22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step23)) (at start (step_semantic_done step13)) (at start (step_semantic_done step38)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step_semantic_done step23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (step_semantic_done step22)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step_semantic_done step24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step25)) (at start (step_semantic_done step8)) (at start (step_semantic_done step26)) (at start (step_semantic_done step20)) (at start (step_semantic_done step44)) (at start (step_semantic_done step51)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step_semantic_done step25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (step_semantic_done step12)) (at start (step_semantic_done step22)) (at start (step_semantic_done step45)) (at start (step_semantic_done step60)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step_semantic_done step26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (step_semantic_done step22)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step_semantic_done step27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step_semantic_done step28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (step_semantic_done step17)) (at start (step_semantic_done step33)) (at start (step_semantic_done step26)) (at start (step_semantic_done step39)) (at start (step_semantic_done step41)) (at start (step_semantic_done step3)) (at start (step_semantic_done step49)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step_semantic_done step29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (step_semantic_done step55)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step_semantic_done step30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (step_semantic_done step35)) (at start (step_semantic_done step49)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step_semantic_done step31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step32)) (at start (step_semantic_done step14)) (at start (step_semantic_done step34)) (at start (step_semantic_done step48)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step_semantic_done step32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (step_semantic_done step13)) (at start (step_semantic_done step21)) (at start (step_semantic_done step48)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step_semantic_done step33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step34)) (at start (step_semantic_done step27)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step_semantic_done step34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step35)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step_semantic_done step35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (step_semantic_done step16)) (at start (step_semantic_done step18)) (at start (step_semantic_done step53)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step_semantic_done step36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step_semantic_done step37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step38)) (at start (step_semantic_done step20)) (at start (step_semantic_done step26)) (at start (step_semantic_done step28)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step_semantic_done step38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step_semantic_done step39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step40)) (at start (step_semantic_done step28)) (at start (step_semantic_done step35)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step_semantic_done step40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (step_semantic_done step22)) (at start (step_semantic_done step35)) (at start (step_semantic_done step36)) (at start (step_semantic_done step48)) (at start (step_semantic_done step55)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step_semantic_done step41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step42)) (at start (step_semantic_done step36)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step_semantic_done step42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step43)) (at start (step_semantic_done step55)) (at start (step_semantic_done step60)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step_semantic_done step43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step_semantic_done step44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step45)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step_semantic_done step45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step46)) (at start (step_semantic_done step10)) (at start (step_semantic_done step24)) (at start (step_semantic_done step25)) (at start (step_semantic_done step51)) (at start (step_semantic_done step54)) (at start (step_semantic_done step60)) (at start (step_semantic_done step45)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step_semantic_done step46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step47)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step_semantic_done step47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step_semantic_done step48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (step_semantic_done step17)) (at start (step_semantic_done step19)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step_semantic_done step49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step50)) (at start (step_semantic_done step7)) (at start (step_semantic_done step47)) (at start (step_semantic_done step55)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step_semantic_done step50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (step_semantic_done step27)) (at start (step_semantic_done step30)) (at start (step_semantic_done step38)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step_semantic_done step51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step52)) (at start (step_semantic_done step1)) (at start (step_semantic_done step16)) (at start (step_semantic_done step19)) (at start (step_semantic_done step21)) (at start (step_semantic_done step36)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step_semantic_done step52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step_semantic_done step53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step54)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step_semantic_done step54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step55)) (at start (step_semantic_done step12)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step_semantic_done step55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step56)) (at start (step_semantic_done step21)) (at start (step_semantic_done step22)) (at start (step_semantic_done step36)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step_semantic_done step56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step57)) (at start (step_semantic_done step24)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step_semantic_done step57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step58)) (at start (step_semantic_done step55)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step_semantic_done step58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step59)) (at start (step_semantic_done step18)) (at start (step_semantic_done step35)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step_semantic_done step59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step60)) (at start (step_semantic_done step53)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step_semantic_done step60)))
  )
)
