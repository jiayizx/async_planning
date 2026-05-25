(define (domain learn-tennis)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending-step1) (step-done1) (sem-step1)
    (pending-step2) (step-done2) (sem-step2)
    (pending-step3) (step-done3) (sem-step3)
    (pending-step4) (step-done4) (sem-step4)
    (pending-step5) (step-done5) (sem-step5)
    (pending-step6) (step-done6) (sem-step6)
    (pending-step7) (step-done7) (sem-step7)
    (pending-step8) (step-done8) (sem-step8)
    (pending-step9) (step-done9) (sem-step9)
    (pending-step10) (step-done10) (sem-step10)
    (pending-step11) (step-done11) (sem-step11)
    (pending-step12) (step-done12) (sem-step12)
    (pending-step13) (step-done13) (sem-step13)
    (pending-step14) (step-done14) (sem-step14)
    (pending-step15) (step-done15) (sem-step15)
    (pending-step16) (step-done16) (sem-step16)
    (pending-step17) (step-done17) (sem-step17)
    (pending-step18) (step-done18) (sem-step18)
    (pending-step19) (step-done19) (sem-step19)
    (pending-step20) (step-done20) (sem-step20)
    (pending-step21) (step-done21) (sem-step21)
    (pending-step22) (step-done22) (sem-step22)
    (pending-step23) (step-done23) (sem-step23)
    (pending-step24) (step-done24) (sem-step24)
    (pending-step25) (step-done25) (sem-step25)
    (pending-step26) (step-done26) (sem-step26)
    (pending-step27) (step-done27) (sem-step27)
    (pending-step28) (step-done28) (sem-step28)
    (pending-step29) (step-done29) (sem-step29)
    (pending-step30) (step-done30) (sem-step30)
    (pending-step31) (step-done31) (sem-step31)
    (pending-step32) (step-done32) (sem-step32)
    (pending-step33) (step-done33) (sem-step33)
    (pending-step34) (step-done34) (sem-step34)
    (pending-step35) (step-done35) (sem-step35)
    (pending-step36) (step-done36) (sem-step36)
    (pending-step37) (step-done37) (sem-step37)
    (pending-step38) (step-done38) (sem-step38)
    (pending-step39) (step-done39) (sem-step39)
    (pending-step40) (step-done40) (sem-step40)
  )

  (:durative-action do-step-1
    :duration (= ?duration 3600)
    :condition (and (at start (pending-step1)) (at start (sem-step3)) (at start (sem-step36)))
    :effect (and (at start (not (pending-step1))) (at end (step-done1)) (at end (sem-step1)))
  )

  (:durative-action do-step-2
    :duration (= ?duration 1800)
    :condition (and (at start (pending-step2)) (at start (sem-step26)))
    :effect (and (at start (not (pending-step2))) (at end (step-done2)) (at end (sem-step2)))
  )

  (:durative-action do-step-3
    :duration (= ?duration 7200)
    :condition (and (at start (pending-step3)) (at start (sem-step30)))
    :effect (and (at start (not (pending-step3))) (at end (step-done3)) (at end (sem-step3)))
  )

  (:durative-action do-step-4
    :duration (= ?duration 3600)
    :condition (and (at start (pending-step4)) (at start (sem-step5)) (at start (sem-step7)))
    :effect (and (at start (not (pending-step4))) (at end (step-done4)) (at end (sem-step4)))
  )

  (:durative-action do-step-5
    :duration (= ?duration 3600)
    :condition (and (at start (pending-step5)) (at start (sem-step24)))
    :effect (and (at start (not (pending-step5))) (at end (step-done5)) (at end (sem-step5)))
  )

  (:durative-action do-step-6
    :duration (= ?duration 2700)
    :condition (and (at start (pending-step6)) (at start (sem-step9)))
    :effect (and (at start (not (pending-step6))) (at end (step-done6)) (at end (sem-step6)))
  )

  (:durative-action do-step-7
    :duration (= ?duration 7200)
    :condition (and (at start (pending-step7)) (at start (sem-step19)))
    :effect (and (at start (not (pending-step7))) (at end (step-done7)) (at end (sem-step7)))
  )

  (:durative-action do-step-8
    :duration (= ?duration 900)
    :condition (and (at start (pending-step8)) (at start (sem-step11)) (at start (sem-step28)))
    :effect (and (at start (not (pending-step8))) (at end (step-done8)) (at end (sem-step8)))
  )

  (:durative-action do-step-9
    :duration (= ?duration 1200)
    :condition (at start (pending-step9))
    :effect (and (at start (not (pending-step9))) (at end (step-done9)) (at end (sem-step9)))
  )

  (:durative-action do-step-10
    :duration (= ?duration 600)
    :condition (and (at start (pending-step10)) (at start (sem-step6)) (at start (sem-step13)) (at start (sem-step27)) (at start (sem-step28)))
    :effect (and (at start (not (pending-step10))) (at end (step-done10)) (at end (sem-step10)))
  )

  (:durative-action do-step-11
    :duration (= ?duration 1800)
    :condition (and (at start (pending-step11)) (at start (sem-step30)))
    :effect (and (at start (not (pending-step11))) (at end (step-done11)) (at end (sem-step11)))
  )

  (:durative-action do-step-12
    :duration (= ?duration 300)
    :condition (and (at start (pending-step12)) (at start (sem-step16)) (at start (sem-step28)))
    :effect (and (at start (not (pending-step12))) (at end (step-done12)) (at end (sem-step12)))
  )

  (:durative-action do-step-13
    :duration (= ?duration 900)
    :condition (and (at start (pending-step13)) (at start (sem-step26)))
    :effect (and (at start (not (pending-step13))) (at end (step-done13)) (at end (sem-step13)))
  )

  (:durative-action do-step-14
    :duration (= ?duration 3600)
    :condition (at start (pending-step14))
    :effect (and (at start (not (pending-step14))) (at end (step-done14)) (at end (sem-step14)))
  )

  (:durative-action do-step-15
    :duration (= ?duration 600)
    :condition (and (at start (pending-step15)) (at start (sem-step1)) (at start (sem-step17)))
    :effect (and (at start (not (pending-step15))) (at end (step-done15)) (at end (sem-step15)))
  )

  (:durative-action do-step-16
    :duration (= ?duration 259200)
    :condition (and (at start (pending-step16)) (at start (sem-step14)))
    :effect (and (at start (not (pending-step16))) (at end (step-done16)) (at end (sem-step16)))
  )

  (:durative-action do-step-17
    :duration (= ?duration 1800)
    :condition (and (at start (pending-step17)) (at start (sem-step22)))
    :effect (and (at start (not (pending-step17))) (at end (step-done17)) (at end (sem-step17)))
  )

  (:durative-action do-step-18
    :duration (= ?duration 1200)
    :condition (at start (pending-step18))
    :effect (and (at start (not (pending-step18))) (at end (step-done18)) (at end (sem-step18)))
  )

  (:durative-action do-step-19
    :duration (= ?duration 600)
    :condition (and (at start (pending-step19)) (at start (sem-step15)) (at start (sem-step33)) (at start (sem-step35)) (at start (sem-step17)))
    :effect (and (at start (not (pending-step19))) (at end (step-done19)) (at end (sem-step19)))
  )

  (:durative-action do-step-20
    :duration (= ?duration 10800)
    :condition (and (at start (pending-step20)) (at start (sem-step23)) (at start (sem-step27)) (at start (sem-step40)))
    :effect (and (at start (not (pending-step20))) (at end (step-done20)) (at end (sem-step20)))
  )

  (:durative-action do-step-21
    :duration (= ?duration 1200)
    :condition (and (at start (pending-step21)) (at start (sem-step30)) (at start (sem-step38)))
    :effect (and (at start (not (pending-step21))) (at end (step-done21)) (at end (sem-step21)))
  )

  (:durative-action do-step-22
    :duration (= ?duration 172800)
    :condition (and (at start (pending-step22)) (at start (sem-step1)))
    :effect (and (at start (not (pending-step22))) (at end (step-done22)) (at end (sem-step22)))
  )

  (:durative-action do-step-23
    :duration (= ?duration 900)
    :condition (at start (pending-step23))
    :effect (and (at start (not (pending-step23))) (at end (step-done23)) (at end (sem-step23)))
  )

  (:durative-action do-step-24
    :duration (= ?duration 2700)
    :condition (and (at start (pending-step24)) (at start (sem-step35)))
    :effect (and (at start (not (pending-step24))) (at end (step-done24)) (at end (sem-step24)))
  )

  (:durative-action do-step-25
    :duration (= ?duration 300)
    :condition (and (at start (pending-step25)) (at start (sem-step2)) (at start (sem-step17)))
    :effect (and (at start (not (pending-step25))) (at end (step-done25)) (at end (sem-step25)))
  )

  (:durative-action do-step-26
    :duration (= ?duration 3600)
    :condition (at start (pending-step26))
    :effect (and (at start (not (pending-step26))) (at end (step-done26)) (at end (sem-step26)))
  )

  (:durative-action do-step-27
    :duration (= ?duration 900)
    :condition (at start (pending-step27))
    :effect (and (at start (not (pending-step27))) (at end (step-done27)) (at end (sem-step27)))
  )

  (:durative-action do-step-28
    :duration (= ?duration 7200)
    :condition (at start (pending-step28))
    :effect (and (at start (not (pending-step28))) (at end (step-done28)) (at end (sem-step28)))
  )

  (:durative-action do-step-29
    :duration (= ?duration 300)
    :condition (and (at start (pending-step29)) (at start (sem-step28)))
    :effect (and (at start (not (pending-step29))) (at end (step-done29)) (at end (sem-step29)))
  )

  (:durative-action do-step-30
    :duration (= ?duration 3600)
    :condition (and (at start (pending-step30)) (at start (sem-step26)) (at start (sem-step37)))
    :effect (and (at start (not (pending-step30))) (at end (step-done30)) (at end (sem-step30)))
  )

  (:durative-action do-step-31
    :duration (= ?duration 5400)
    :condition (and (at start (pending-step31)) (at start (sem-step7)) (at start (sem-step12)) (at start (sem-step15)) (at start (sem-step26)) (at start (sem-step36)))
    :effect (and (at start (not (pending-step31))) (at end (step-done31)) (at end (sem-step31)))
  )

  (:durative-action do-step-32
    :duration (= ?duration 600)
    :condition (at start (pending-step32))
    :effect (and (at start (not (pending-step32))) (at end (step-done32)) (at end (sem-step32)))
  )

  (:durative-action do-step-33
    :duration (= ?duration 300)
    :condition (and (at start (pending-step33)) (at start (sem-step28)))
    :effect (and (at start (not (pending-step33))) (at end (step-done33)) (at end (sem-step33)))
  )

  (:durative-action do-step-34
    :duration (= ?duration 600)
    :condition (and (at start (pending-step34)) (at start (sem-step14)))
    :effect (and (at start (not (pending-step34))) (at end (step-done34)) (at end (sem-step34)))
  )

  (:durative-action do-step-35
    :duration (= ?duration 300)
    :condition (and (at start (pending-step35)) (at start (sem-step33)))
    :effect (and (at start (not (pending-step35))) (at end (step-done35)) (at end (sem-step35)))
  )

  (:durative-action do-step-36
    :duration (= ?duration 600)
    :condition (and (at start (pending-step36)) (at start (sem-step8)) (at start (sem-step14)) (at start (sem-step18)))
    :effect (and (at start (not (pending-step36))) (at end (step-done36)) (at end (sem-step36)))
  )

  (:durative-action do-step-37
    :duration (= ?duration 300)
    :condition (at start (pending-step37))
    :effect (and (at start (not (pending-step37))) (at end (step-done37)) (at end (sem-step37)))
  )

  (:durative-action do-step-38
    :duration (= ?duration 7200)
    :condition (and (at start (pending-step38)) (at start (sem-step5)) (at start (sem-step32)))
    :effect (and (at start (not (pending-step38))) (at end (step-done38)) (at end (sem-step38)))
  )

  (:durative-action do-step-39
    :duration (= ?duration 60)
    :condition (and (at start (pending-step39)) (at start (sem-step36)))
    :effect (and (at start (not (pending-step39))) (at end (step-done39)) (at end (sem-step39)))
  )

  (:durative-action do-step-40
    :duration (= ?duration 3600)
    :condition (and (at start (pending-step40)) (at start (sem-step2)) (at start (sem-step18)) (at start (sem-step27)))
    :effect (and (at start (not (pending-step40))) (at end (step-done40)) (at end (sem-step40)))
  )
)
