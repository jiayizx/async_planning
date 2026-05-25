(define (domain get-in-car)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-1)
    (done-2)
    (done-3)
    (done-4)
    (done-5)
    (done-6)
    (done-7)
    (done-8)
    (done-9)
    (done-10)
    (done-11)
    (done-12)
    (done-13)
    (done-14)
    (done-15)
    (done-16)
    (done-17)
    (done-18)
    (done-19)
    (done-20)
    (done-21)
    (done-22)
    (done-23)
    (done-24)
    (done-25)
    (done-26)
    (done-27)
    (done-28)
    (done-29)
    (done-30)
    (done-31)
    (done-32)
    (done-33)
    (done-34)
    (done-35)
    (done-36)
    (done-37)
    (done-38)
    (done-39)
    (done-40)
    (done-41)
    (done-42)
    (done-43)
    (done-44)
    (done-45)
    (done-46)
    (done-47)
    (done-48)
    (done-49)
    (done-50)
    (done-51)
    (done-52)
    (done-53)
    (done-54)
    (done-55)
    (done-56)
    (done-57)
    (done-58)
    (done-59)
    (done-60)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step1)) (at start (done-36)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (done-36)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step3)) (at start (done-17)) (at start (done-18)) (at start (done-32)) (at start (done-36)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step4)) (at start (done-8)) (at start (done-16)) (at start (done-31)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step5)) (at start (done-11)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step6)) (at start (done-7)) (at start (done-11)) (at start (done-19)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step7)) (at start (done-45)) (at start (done-57)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step8)) (at start (done-14)) (at start (done-46)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step9)) (at start (done-38)) (at start (done-42)) (at start (done-49)) (at start (done-54)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step11)) (at start (done-32)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step12)) (at start (done-1)) (at start (done-6)) (at start (done-26)) (at start (done-45)) (at start (done-50)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step13)) (at start (done-29)) (at start (done-41)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step14)) (at start (done-3)) (at start (done-10)) (at start (done-26)) (at start (done-46)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step16)) (at start (done-3)) (at start (done-15)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step17)) (at start (done-32)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step20)) (at start (done-30)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step21)) (at start (done-29)) (at start (done-43)) (at start (done-51)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (done-1)) (at start (done-37)) (at start (done-57)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (done-59)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step24)) (at start (done-47)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (done-17)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step27)) (at start (done-29)) (at start (done-44)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step28)) (at start (done-25)) (at start (done-41)) (at start (done-49)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step29)) (at start (done-13)) (at start (done-41)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step31)) (at start (done-44)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 12)
    :condition (and (at start (step_pending step32)) (at start (done-19)) (at start (done-36)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step33)) (at start (done-9)) (at start (done-15)) (at start (done-22)) (at start (done-36)) (at start (done-58)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step34)) (at start (done-30)) (at start (done-47)) (at start (done-58)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step35)) (at start (done-22)) (at start (done-44)) (at start (done-47)) (at start (done-53)) (at start (done-55)) (at start (done-56)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 8)
    :condition (and (at start (step_pending step37)) (at start (done-1)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step38)) (at start (done-11)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step39)) (at start (done-18)) (at start (done-54)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step40)) (at start (done-11)) (at start (done-17)) (at start (done-58)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (step_pending step41)) (at start (done-18)) (at start (done-19)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step42)) (at start (done-55)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step43)) (at start (done-3)) (at start (done-30)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (step_pending step44)) (at start (done-15)) (at start (done-37)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step45)) (at start (done-39)) (at start (done-43)) (at start (done-46)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step46)) (at start (done-3)) (at start (done-59)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step47)) (at start (done-11)) (at start (done-46)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step49)) (at start (done-42)) (at start (done-48)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step50)) (at start (done-52)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-50)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step51)) (at start (done-4)) (at start (done-7)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-51)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step52)) (at start (done-41)) (at start (done-47)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-52)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step53)) (at start (done-13)) (at start (done-42)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-53)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step54)) (at start (done-3)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-54)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-55)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step56)) (at start (done-31)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-56)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step57)) (at start (done-10)) (at start (done-42)) (at start (done-55)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-57)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step58)) (at start (done-59)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-58)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-59)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step60)) (at start (done-1)) (at start (done-41)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-60)))
  )
)
