(define (domain count_norwegian)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed-step1)
    (completed-step2)
    (completed-step3)
    (completed-step4)
    (completed-step5)
    (completed-step6)
    (completed-step7)
    (completed-step8)
    (completed-step9)
    (completed-step10)
    (completed-step11)
    (completed-step12)
    (completed-step13)
    (completed-step14)
    (completed-step15)
    (completed-step16)
    (completed-step17)
    (completed-step18)
    (completed-step19)
    (completed-step20)
    (completed-step21)
    (completed-step22)
    (completed-step23)
    (completed-step24)
    (completed-step25)
    (completed-step26)
    (completed-step27)
    (completed-step28)
    (completed-step29)
    (completed-step30)
    (completed-step31)
    (completed-step32)
    (completed-step33)
    (completed-step34)
    (completed-step35)
    (completed-step36)
    (completed-step37)
    (completed-step38)
    (completed-step39)
    (completed-step40)
    (completed-step41)
    (completed-step42)
    (completed-step43)
    (completed-step44)
    (completed-step45)
    (completed-step46)
    (completed-step47)
    (completed-step48)
    (completed-step49)
    (completed-step50)
    (completed-step51)
    (completed-step52)
    (completed-step53)
    (completed-step54)
    (completed-step55)
    (completed-step56)
    (completed-step57)
    (completed-step58)
    (completed-step59)
    (completed-step60)
  )

  ;; One durative-action per step (each action now includes an explicit empty :parameters list)

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (completed-step18)) (at start (completed-step37)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed-step1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step2)) (at start (completed-step8)) (at start (completed-step27)) (at start (completed-step42)) (at start (completed-step57)) (at start (completed-step33)) (at start (completed-step17)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed-step2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed-step3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step4)) (at start (completed-step43)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed-step4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed-step5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step6)) (at start (completed-step17)) (at start (completed-step26)) (at start (completed-step38)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed-step6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed-step7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed-step8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (completed-step33)) (at start (completed-step40)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed-step9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step10)) (at start (completed-step15)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed-step10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step11)) (at start (completed-step9)) (at start (completed-step19)) (at start (completed-step26)) (at start (completed-step39)) (at start (completed-step47)) (at start (completed-step21)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed-step11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step12)) (at start (completed-step10)) (at start (completed-step15)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed-step12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (completed-step58)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed-step13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step14)) (at start (completed-step23)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed-step14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (completed-step18)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed-step15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (completed-step15)) (at start (completed-step47)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed-step16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed-step17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (completed-step3)) (at start (completed-step39)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed-step18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (completed-step45)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed-step19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step20)) (at start (completed-step11)) (at start (completed-step21)) (at start (completed-step29)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed-step20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (completed-step3)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed-step21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step22)) (at start (completed-step3)) (at start (completed-step23)) (at start (completed-step18)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed-step22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed-step23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step24)) (at start (completed-step59)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed-step24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (completed-step22)) (at start (completed-step48)) (at start (completed-step60)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed-step25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (completed-step40)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed-step26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (completed-step43)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed-step27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step28)) (at start (completed-step6)) (at start (completed-step45)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed-step28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (completed-step18)) (at start (completed-step23)) (at start (completed-step37)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed-step29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step30)) (at start (completed-step16)) (at start (completed-step37)) (at start (completed-step55)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed-step30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step31)) (at start (completed-step3)) (at start (completed-step51)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed-step31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step32)) (at start (completed-step1)) (at start (completed-step13)) (at start (completed-step21)) (at start (completed-step24)) (at start (completed-step29)) (at start (completed-step18)) (at start (completed-step23)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed-step32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step33)) (at start (completed-step8)) (at start (completed-step14)) (at start (completed-step22)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed-step33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step34)) (at start (completed-step31)) (at start (completed-step40)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed-step34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step35)) (at start (completed-step27)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed-step35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (completed-step23)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed-step36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step37)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed-step37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step38)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed-step38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step39)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed-step39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed-step40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (completed-step39)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed-step41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step42)) (at start (completed-step1)) (at start (completed-step3)) (at start (completed-step23)) (at start (completed-step37)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed-step42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed-step43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step44)) (at start (completed-step59)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed-step44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed-step45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step46)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed-step46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (completed-step10)) (at start (completed-step58)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed-step47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)) (at start (completed-step7)) (at start (completed-step10)) (at start (completed-step49)) (at start (completed-step5)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed-step48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step49)) (at start (completed-step3)) (at start (completed-step21)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed-step49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step50)) (at start (completed-step5)) (at start (completed-step13)) (at start (completed-step19)) (at start (completed-step42)) (at start (completed-step46)) (at start (completed-step51)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed-step50)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step51)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed-step51)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (step_pending step52)) (at start (completed-step11)) (at start (completed-step12)) (at start (completed-step42)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed-step52)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step53)) (at start (completed-step55)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed-step53)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step54)) (at start (completed-step23)) (at start (completed-step36)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed-step54)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step55)) (at start (completed-step41)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed-step55)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step56)) (at start (completed-step2)) (at start (completed-step22)) (at start (completed-step43)) (at start (completed-step44)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed-step56)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step57)) (at start (completed-step38)) (at start (completed-step49)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed-step57)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step58)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed-step58)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step59)) (at start (completed-step3)) (at start (completed-step21)) (at start (completed-step57)) (at start (completed-step52)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed-step59)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 6)
    :condition (and (at start (step_pending step60)) (at start (completed-step11)) (at start (completed-step22)) (at start (completed-step47)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed-step60)))
  )

)
