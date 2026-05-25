(define (domain make-spaghetti)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished-1)
    (finished-2)
    (finished-3)
    (finished-4)
    (finished-5)
    (finished-6)
    (finished-7)
    (finished-8)
    (finished-9)
    (finished-10)
    (finished-11)
    (finished-12)
    (finished-13)
    (finished-14)
    (finished-15)
    (finished-16)
    (finished-17)
    (finished-18)
    (finished-19)
    (finished-20)
    (finished-21)
    (finished-22)
    (finished-23)
    (finished-24)
    (finished-25)
    (finished-26)
    (finished-27)
    (finished-28)
    (finished-29)
    (finished-30)
    (finished-31)
    (finished-32)
    (finished-33)
    (finished-34)
    (finished-35)
    (finished-36)
    (finished-37)
    (finished-38)
    (finished-39)
    (finished-40)
    (finished-41)
    (finished-42)
    (finished-43)
    (finished-44)
    (finished-45)
    (finished-46)
    (finished-47)
    (finished-48)
    (finished-49)
    (finished-50)
    (finished-51)
    (finished-52)
    (finished-53)
    (finished-54)
    (finished-55)
    (finished-56)
    (finished-57)
    (finished-58)
    (finished-59)
    (finished-60)
  )

  (:durative-action do-step-1
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step1)) (at start (finished-27)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (finished-1)))
  )

  (:durative-action do-step-2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (finished-38)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finished-2)))
  )

  (:durative-action do-step-3
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (finished-16)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (finished-3)))
  )

  (:durative-action do-step-4
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (finished-13)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (finished-4)))
  )

  (:durative-action do-step-5
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step5)) (at start (finished-4)) (at start (finished-44)) (at start (finished-55)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (finished-5)))
  )

  (:durative-action do-step-6
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (finished-52)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (finished-6)))
  )

  (:durative-action do-step-7
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step7)) (at start (finished-25)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (finished-7)))
  )

  (:durative-action do-step-8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (finished-18)) (at start (finished-55)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (finished-8)))
  )

  (:durative-action do-step-9
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (finished-12)) (at start (finished-14)) (at start (finished-20)) (at start (finished-35)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (finished-9)))
  )

  (:durative-action do-step-10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (finished-35)) (at start (finished-59)) (at start (finished-18)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (finished-10)))
  )

  (:durative-action do-step-11
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step11)) (at start (finished-9)) (at start (finished-43)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (finished-11)))
  )

  (:durative-action do-step-12
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (finished-16)) (at start (finished-60)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (finished-12)))
  )

  (:durative-action do-step-13
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step13)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (finished-13)))
  )

  (:durative-action do-step-14
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (finished-14)))
  )

  (:durative-action do-step-15
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step15)) (at start (finished-18)) (at start (finished-43)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (finished-15)))
  )

  (:durative-action do-step-16
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (finished-8)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (finished-16)))
  )

  (:durative-action do-step-17
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (finished-6)) (at start (finished-10)) (at start (finished-19)) (at start (finished-29)) (at start (finished-55)) (at start (finished-15)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (finished-17)))
  )

  (:durative-action do-step-18
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (finished-43)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (finished-18)))
  )

  (:durative-action do-step-19
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (finished-8)) (at start (finished-20)) (at start (finished-23)) (at start (finished-39)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (finished-19)))
  )

  (:durative-action do-step-20
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step20)) (at start (finished-14)) (at start (finished-49)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (finished-20)))
  )

  (:durative-action do-step-21
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step21)) (at start (finished-14)) (at start (finished-37)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (finished-21)))
  )

  (:durative-action do-step-22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (finished-10)) (at start (finished-37)) (at start (finished-41)) (at start (finished-46)) (at start (finished-55)) (at start (finished-59)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (finished-22)))
  )

  (:durative-action do-step-23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (finished-33)) (at start (finished-50)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (finished-23)))
  )

  (:durative-action do-step-24
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (finished-18)) (at start (finished-42)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (finished-24)))
  )

  (:durative-action do-step-25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (finished-44)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (finished-25)))
  )

  (:durative-action do-step-26
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step26)) (at start (finished-40)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (finished-26)))
  )

  (:durative-action do-step-27
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (finished-27)))
  )

  (:durative-action do-step-28
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step28)) (at start (finished-30)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (finished-28)))
  )

  (:durative-action do-step-29
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (finished-3)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (finished-29)))
  )

  (:durative-action do-step-30
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step30)) (at start (finished-20)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (finished-30)))
  )

  (:durative-action do-step-31
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step31)) (at start (finished-54)) (at start (finished-60)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (finished-31)))
  )

  (:durative-action do-step-32
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (finished-31)) (at start (finished-18)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (finished-32)))
  )

  (:durative-action do-step-33
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step33)) (at start (finished-13)) (at start (finished-46)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (finished-33)))
  )

  (:durative-action do-step-34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (finished-47)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (finished-34)))
  )

  (:durative-action do-step-35
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step35)) (at start (finished-5)) (at start (finished-49)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (finished-35)))
  )

  (:durative-action do-step-36
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (finished-36)))
  )

  (:durative-action do-step-37
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step37)) (at start (finished-15)) (at start (finished-28)) (at start (finished-59)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (finished-37)))
  )

  (:durative-action do-step-38
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step38)) (at start (finished-36)) (at start (finished-54)) (at start (finished-18)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (finished-38)))
  )

  (:durative-action do-step-39
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step39)) (at start (finished-41)) (at start (finished-55)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (finished-39)))
  )

  (:durative-action do-step-40
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step40)) (at start (finished-60)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (finished-40)))
  )

  (:durative-action do-step-41
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step41)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (finished-41)))
  )

  (:durative-action do-step-42
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step42)) (at start (finished-18)) (at start (finished-31)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (finished-42)))
  )

  (:durative-action do-step-43
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step43)) (at start (finished-27)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (finished-43)))
  )

  (:durative-action do-step-44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (finished-14)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (finished-44)))
  )

  (:durative-action do-step-45
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step45)) (at start (finished-1)) (at start (finished-15)) (at start (finished-26)) (at start (finished-36)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (finished-45)))
  )

  (:durative-action do-step-46
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (finished-1)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (finished-46)))
  )

  (:durative-action do-step-47
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (finished-47)))
  )

  (:durative-action do-step-48
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)) (at start (finished-1)) (at start (finished-20)) (at start (finished-46)) (at start (finished-50)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (finished-48)))
  )

  (:durative-action do-step-49
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (finished-49)))
  )

  (:durative-action do-step-50
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step50)) (at start (finished-20)) (at start (finished-52)) (at start (finished-56)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (finished-50)))
  )

  (:durative-action do-step-51
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step51)) (at start (finished-54)) (at start (finished-18)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (finished-51)))
  )

  (:durative-action do-step-52
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (finished-39)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (finished-52)))
  )

  (:durative-action do-step-53
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (finished-16)) (at start (finished-21)) (at start (finished-57)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (finished-53)))
  )

  (:durative-action do-step-54
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step54)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (finished-54)))
  )

  (:durative-action do-step-55
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step55)) (at start (finished-18)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (finished-55)))
  )

  (:durative-action do-step-56
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step56)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (finished-56)))
  )

  (:durative-action do-step-57
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step57)) (at start (finished-12)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (finished-57)))
  )

  (:durative-action do-step-58
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step58)) (at start (finished-37)) (at start (finished-40)) (at start (finished-49)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (finished-58)))
  )

  (:durative-action do-step-59
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step59)) (at start (finished-27)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (finished-59)))
  )

  (:durative-action do-step-60
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step60)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (finished-60)))
  )
)
