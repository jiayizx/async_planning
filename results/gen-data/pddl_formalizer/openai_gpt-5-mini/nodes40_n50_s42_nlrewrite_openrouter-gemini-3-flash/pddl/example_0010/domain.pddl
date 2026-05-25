(define (domain write-tengwar)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (a_done1)
    (a_done2)
    (a_done3)
    (a_done4)
    (a_done5)
    (a_done6)
    (a_done7)
    (a_done8)
    (a_done9)
    (a_done10)
    (a_done11)
    (a_done12)
    (a_done13)
    (a_done14)
    (a_done15)
    (a_done16)
    (a_done17)
    (a_done18)
    (a_done19)
    (a_done20)
    (a_done21)
    (a_done22)
    (a_done23)
    (a_done24)
    (a_done25)
    (a_done26)
    (a_done27)
    (a_done28)
    (a_done29)
    (a_done30)
    (a_done31)
    (a_done32)
    (a_done33)
    (a_done34)
    (a_done35)
    (a_done36)
    (a_done37)
    (a_done38)
    (a_done39)
    (a_done40)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (a_done15)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (a_done1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (a_done38)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (a_done2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (a_done1)) (at start (a_done25)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (a_done3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (a_done33)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (a_done4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (a_done2)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (a_done5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (a_done6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (a_done40)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (a_done7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (a_done8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (a_done30)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (a_done9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (a_done28)) (at start (a_done39)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (a_done10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (a_done7)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (a_done11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step12)) (at start (a_done20)) (at start (a_done29)) (at start (a_done36)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (a_done12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (a_done1)) (at start (a_done5)) (at start (a_done31)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (a_done13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (a_done32)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (a_done14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (a_done37)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (a_done15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (a_done2)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (a_done16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step17)) (at start (a_done12)) (at start (a_done20)) (at start (a_done38)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (a_done17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (a_done8)) (at start (a_done37)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (a_done18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (a_done1)) (at start (a_done26)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (a_done19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (a_done11)) (at start (a_done34)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (a_done20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step21)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (a_done21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step22)) (at start (a_done29)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (a_done22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step23)) (at start (a_done6)) (at start (a_done9)) (at start (a_done22)) (at start (a_done33)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (a_done23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step24)) (at start (a_done35)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (a_done24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step25)) (at start (a_done5)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (a_done25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step26)) (at start (a_done4)) (at start (a_done9)) (at start (a_done20)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (a_done26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (a_done19)) (at start (a_done21)) (at start (a_done30)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (a_done27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step28)) (at start (a_done40)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (a_done28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (a_done14)) (at start (a_done32)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (a_done29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step30)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (a_done30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step31)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (a_done31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (a_done7)) (at start (a_done33)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (a_done32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step33)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (a_done33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step34)) (at start (a_done4)) (at start (a_done21)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (a_done34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step35)) (at start (a_done40)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (a_done35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (a_done3)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (a_done36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step37)) (at start (a_done2)) (at start (a_done16)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (a_done37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (a_done38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (a_done9)) (at start (a_done19)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (a_done39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (a_done40)))
  )
)
