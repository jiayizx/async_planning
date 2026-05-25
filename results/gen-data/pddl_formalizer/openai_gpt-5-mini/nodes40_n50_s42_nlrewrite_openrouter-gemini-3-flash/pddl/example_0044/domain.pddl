(define (domain grocery_prep)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
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
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step1)) (at start (done-25)) (at start (done-28)))
    :effect (and (at start (not (step-pending step1))) (at end (step-done step1)) (at end (done-1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step-pending step2)) (at start (done-1)) (at start (done-24)) (at start (done-36)))
    :effect (and (at start (not (step-pending step2))) (at end (step-done step2)) (at end (done-2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step3)))
    :effect (and (at start (not (step-pending step3))) (at end (step-done step3)) (at end (done-3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step4)) (at start (done-10)))
    :effect (and (at start (not (step-pending step4))) (at end (step-done step4)) (at end (done-4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step-pending step5)) (at start (done-11)) (at start (done-38)))
    :effect (and (at start (not (step-pending step5))) (at end (step-done step5)) (at end (done-5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step-pending step6)) (at start (done-26)))
    :effect (and (at start (not (step-pending step6))) (at end (step-done step6)) (at end (done-6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step-pending step7)) (at start (done-27)) (at start (done-29)))
    :effect (and (at start (not (step-pending step7))) (at end (step-done step7)) (at end (done-7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step8)) (at start (done-16)))
    :effect (and (at start (not (step-pending step8))) (at end (step-done step8)) (at end (done-8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step9)))
    :effect (and (at start (not (step-pending step9))) (at end (step-done step9)) (at end (done-9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step10)) (at start (done-9)))
    :effect (and (at start (not (step-pending step10))) (at end (step-done step10)) (at end (done-10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step11)))
    :effect (and (at start (not (step-pending step11))) (at end (step-done step11)) (at end (done-11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step12)) (at start (done-27)) (at start (done-36)))
    :effect (and (at start (not (step-pending step12))) (at end (step-done step12)) (at end (done-12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step13)) (at start (done-26)))
    :effect (and (at start (not (step-pending step13))) (at end (step-done step13)) (at end (done-13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step14)) (at start (done-9)) (at start (done-29)))
    :effect (and (at start (not (step-pending step14))) (at end (step-done step14)) (at end (done-14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step-pending step15)) (at start (done-2)))
    :effect (and (at start (not (step-pending step15))) (at end (step-done step15)) (at end (done-15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step-pending step16)) (at start (done-29)))
    :effect (and (at start (not (step-pending step16))) (at end (step-done step16)) (at end (done-16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step17)) (at start (done-1)) (at start (done-8)) (at start (done-21)))
    :effect (and (at start (not (step-pending step17))) (at end (step-done step17)) (at end (done-17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step18)))
    :effect (and (at start (not (step-pending step18))) (at end (step-done step18)) (at end (done-18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step19)) (at start (done-10)) (at start (done-27)) (at start (done-39)))
    :effect (and (at start (not (step-pending step19))) (at end (step-done step19)) (at end (done-19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step20)) (at start (done-13)) (at start (done-24)) (at start (done-31)) (at start (done-26)))
    :effect (and (at start (not (step-pending step20))) (at end (step-done step20)) (at end (done-20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step21)) (at start (done-23)) (at start (done-27)) (at start (done-30)) (at start (done-32)))
    :effect (and (at start (not (step-pending step21))) (at end (step-done step21)) (at end (done-21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step-pending step22)) (at start (done-16)) (at start (done-20)))
    :effect (and (at start (not (step-pending step22))) (at end (step-done step22)) (at end (done-22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step23)))
    :effect (and (at start (not (step-pending step23))) (at end (step-done step23)) (at end (done-23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step24)))
    :effect (and (at start (not (step-pending step24))) (at end (step-done step24)) (at end (done-24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step25)))
    :effect (and (at start (not (step-pending step25))) (at end (step-done step25)) (at end (done-25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step26)) (at start (done-23)))
    :effect (and (at start (not (step-pending step26))) (at end (step-done step26)) (at end (done-26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step27)))
    :effect (and (at start (not (step-pending step27))) (at end (step-done step27)) (at end (done-27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step-pending step28)))
    :effect (and (at start (not (step-pending step28))) (at end (step-done step28)) (at end (done-28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step29)))
    :effect (and (at start (not (step-pending step29))) (at end (step-done step29)) (at end (done-29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step-pending step30)) (at start (done-25)))
    :effect (and (at start (not (step-pending step30))) (at end (step-done step30)) (at end (done-30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step31)) (at start (done-3)) (at start (done-12)) (at start (done-15)) (at start (done-28)) (at start (done-34)))
    :effect (and (at start (not (step-pending step31))) (at end (step-done step31)) (at end (done-31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step32)) (at start (done-4)) (at start (done-23)))
    :effect (and (at start (not (step-pending step32))) (at end (step-done step32)) (at end (done-32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step-pending step33)) (at start (done-18)) (at start (done-25)))
    :effect (and (at start (not (step-pending step33))) (at end (step-done step33)) (at end (done-33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step-pending step34)) (at start (done-6)) (at start (done-30)))
    :effect (and (at start (not (step-pending step34))) (at end (step-done step34)) (at end (done-34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step-pending step35)) (at start (done-30)))
    :effect (and (at start (not (step-pending step35))) (at end (step-done step35)) (at end (done-35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step36)) (at start (done-23)) (at start (done-25)))
    :effect (and (at start (not (step-pending step36))) (at end (step-done step36)) (at end (done-36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step-pending step37)) (at start (done-36)))
    :effect (and (at start (not (step-pending step37))) (at end (step-done step37)) (at end (done-37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step38)))
    :effect (and (at start (not (step-pending step38))) (at end (step-done step38)) (at end (done-38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step39)) (at start (done-10)) (at start (done-36)))
    :effect (and (at start (not (step-pending step39))) (at end (step-done step39)) (at end (done-39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step-pending step40)) (at start (done-36)))
    :effect (and (at start (not (step-pending step40))) (at end (step-done step40)) (at end (done-40)))
  )
)
