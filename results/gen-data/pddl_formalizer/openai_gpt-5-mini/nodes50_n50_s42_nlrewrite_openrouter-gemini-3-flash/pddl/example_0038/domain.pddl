(define (domain canine_fertility)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-step1)
    (done-step2)
    (done-step3)
    (done-step4)
    (done-step5)
    (done-step6)
    (done-step7)
    (done-step8)
    (done-step9)
    (done-step10)
    (done-step11)
    (done-step12)
    (done-step13)
    (done-step14)
    (done-step15)
    (done-step16)
    (done-step17)
    (done-step18)
    (done-step19)
    (done-step20)
    (done-step21)
    (done-step22)
    (done-step23)
    (done-step24)
    (done-step25)
    (done-step26)
    (done-step27)
    (done-step28)
    (done-step29)
    (done-step30)
    (done-step31)
    (done-step32)
    (done-step33)
    (done-step34)
    (done-step35)
    (done-step36)
    (done-step37)
    (done-step38)
    (done-step39)
    (done-step40)
    (done-step41)
    (done-step42)
    (done-step43)
    (done-step44)
    (done-step45)
    (done-step46)
    (done-step47)
    (done-step48)
    (done-step49)
    (done-step50)
  )

  ; One durative-action per step. Each action requires its step_pending at start
  ; and requires all predecessor semantic predicates (done-stepN) at start.

  (:durative-action do-step1
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-step1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (done-step11)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-step2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (done-step20)) (at start (done-step39)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-step3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (done-step40)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-step4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (done-step20)) (at start (done-step41)) (at start (done-step43)) (at start (done-step44)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-step5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (done-step2)) (at start (done-step39)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-step6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 3600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-step7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (done-step7)) (at start (done-step30)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-step8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done-step16)) (at start (done-step31)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-step9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (done-step8)) (at start (done-step17)) (at start (done-step23)) (at start (done-step44)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-step10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 1800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-step11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (done-step5)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-step12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (done-step17)) (at start (done-step21)) (at start (done-step37)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-step13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step14)) (at start (done-step4)) (at start (done-step19)) (at start (done-step41)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-step14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step15)) (at start (done-step31)) (at start (done-step37)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-step15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step16)) (at start (done-step34)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-step16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1200)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-step17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (done-step11)) (at start (done-step16)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-step18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (done-step10)) (at start (done-step22)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-step19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done-step31)) (at start (done-step35)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-step20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (done-step17)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-step21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 300)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-step22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (done-step4)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-step23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (done-step1)) (at start (done-step8)) (at start (done-step9)) (at start (done-step30)) (at start (done-step44)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-step24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 2400)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-step25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (done-step11)) (at start (done-step24)) (at start (done-step31)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-step26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (done-step13)) (at start (done-step20)) (at start (done-step23)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-step27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (done-step25)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-step28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (done-step6)) (at start (done-step16)) (at start (done-step44)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-step29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (done-step25)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-step30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step31)) (at start (done-step16)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-step31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step32)) (at start (done-step25)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-step32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (done-step10)) (at start (done-step41)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-step33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step34)) (at start (done-step11)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-step34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 7200)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-step35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (done-step38)) (at start (done-step43)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-step36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (done-step6)) (at start (done-step22)) (at start (done-step30)) (at start (done-step46)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-step37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 900)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-step38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 3600)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-step39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 600)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-step40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (done-step2)) (at start (done-step34)) (at start (done-step35)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-step41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (done-step4)) (at start (done-step15)) (at start (done-step22)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-step42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step43)) (at start (done-step3)) (at start (done-step42)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-step43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step44)) (at start (done-step11)) (at start (done-step39)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-step44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step45)) (at start (done-step44)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-step45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-step46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step47)) (at start (done-step7)) (at start (done-step46)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-step47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step48)) (at start (done-step34)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-step48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step49)) (at start (done-step1)) (at start (done-step13)) (at start (done-step26)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-step49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (done-step2)) (at start (done-step11)) (at start (done-step28)) (at start (done-step31)) (at start (done-step39)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-step50)))
  )
)
