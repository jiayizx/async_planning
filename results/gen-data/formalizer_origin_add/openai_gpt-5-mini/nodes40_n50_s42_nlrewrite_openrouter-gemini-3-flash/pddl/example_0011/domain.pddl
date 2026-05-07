(define (domain empty_seat_southwest)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_1)
    (done_2)
    (done_3)
    (done_4)
    (done_5)
    (done_6)
    (done_7)
    (done_8)
    (done_9)
    (done_10)
    (done_11)
    (done_12)
    (done_13)
    (done_14)
    (done_15)
    (done_16)
    (done_17)
    (done_18)
    (done_19)
    (done_20)
    (done_21)
    (done_22)
    (done_23)
    (done_24)
    (done_25)
    (done_26)
    (done_27)
    (done_28)
    (done_29)
    (done_30)
    (done_31)
    (done_32)
    (done_33)
    (done_34)
    (done_35)
    (done_36)
    (done_37)
    (done_38)
    (done_39)
    (done_40)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (done_5)) (at start (done_21)) (at start (done_37)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_1)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (done_10)) (at start (done_31)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_2)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_3)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_4)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_5)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (done_2)) (at start (done_10)) (at start (done_31)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_6)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step7)) (at start (done_5)) (at start (done_34)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_7)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step8)) (at start (done_39)) (at start (done_1)) (at start (done_13)) (at start (done_25)) (at start (done_5)) (at start (done_21)) (at start (done_37)) (at start (done_7)) (at start (done_10)) (at start (done_33)) (at start (done_2)) (at start (done_31)) (at start (done_34)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_8)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done_6)) (at start (done_16)) (at start (done_21)) (at start (done_30)) (at start (done_36)) (at start (done_2)) (at start (done_31)) (at start (done_10)) (at start (done_17)) (at start (done_38)) (at start (done_26)) (at start (done_35)) (at start (done_4)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_9)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_10)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step11)) (at start (done_23)) (at start (done_33)) (at start (done_7)) (at start (done_34)) (at start (done_5)) (at start (done_2)) (at start (done_31)) (at start (done_10)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_11)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (done_10)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_12)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (done_7)) (at start (done_10)) (at start (done_33)) (at start (done_34)) (at start (done_5)) (at start (done_2)) (at start (done_31)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_13)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_14)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_15)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (done_17)) (at start (done_38)) (at start (done_36)) (at start (done_35)) (at start (done_4)) (at start (done_26)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_16)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (done_35)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_17)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step18)) (at start (done_5)) (at start (done_37)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_18)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (done_3)) (at start (done_8)) (at start (done_39)) (at start (done_1)) (at start (done_13)) (at start (done_25)) (at start (done_5)) (at start (done_21)) (at start (done_37)) (at start (done_7)) (at start (done_10)) (at start (done_33)) (at start (done_34)) (at start (done_2)) (at start (done_31)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_19)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done_10)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_20)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_21)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (done_2)) (at start (done_5)) (at start (done_24)) (at start (done_29)) (at start (done_31)) (at start (done_10)) (at start (done_1)) (at start (done_21)) (at start (done_37)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_22)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (done_7)) (at start (done_34)) (at start (done_5)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_23)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (done_1)) (at start (done_5)) (at start (done_21)) (at start (done_37)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_24)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_25)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (done_17)) (at start (done_35)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_26)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (done_4)) (at start (done_7)) (at start (done_19)) (at start (done_26)) (at start (done_32)) (at start (done_14)) (at start (done_34)) (at start (done_5)) (at start (done_3)) (at start (done_8)) (at start (done_39)) (at start (done_1)) (at start (done_13)) (at start (done_25)) (at start (done_21)) (at start (done_37)) (at start (done_10)) (at start (done_33)) (at start (done_2)) (at start (done_31)) (at start (done_17)) (at start (done_35)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_27)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (done_15)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_28)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (done_10)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_29)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_30)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (done_10)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done_31)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done_32)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (done_2)) (at start (done_31)) (at start (done_10)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done_33)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step34)) (at start (done_5)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done_34)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done_35)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (done_26)) (at start (done_17)) (at start (done_35)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done_36)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done_37)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step38)) (at start (done_4)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done_38)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step39)) (at start (done_1)) (at start (done_13)) (at start (done_25)) (at start (done_5)) (at start (done_21)) (at start (done_37)) (at start (done_7)) (at start (done_10)) (at start (done_33)) (at start (done_34)) (at start (done_2)) (at start (done_31)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done_39)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step40)) (at start (done_39)) (at start (done_1)) (at start (done_13)) (at start (done_25)) (at start (done_5)) (at start (done_21)) (at start (done_37)) (at start (done_7)) (at start (done_10)) (at start (done_33)) (at start (done_34)) (at start (done_2)) (at start (done_31)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done_40)))
  )
)
