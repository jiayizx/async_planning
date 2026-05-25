(define (domain improve-soccer-game)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ; pending / done predicates (one per step, named for clarity)
    (step_pending_1) (step_done_1) (completed-1)
    (step_pending_2) (step_done_2) (completed-2)
    (step_pending_3) (step_done_3) (completed-3)
    (step_pending_4) (step_done_4) (completed-4)
    (step_pending_5) (step_done_5) (completed-5)
    (step_pending_6) (step_done_6) (completed-6)
    (step_pending_7) (step_done_7) (completed-7)
    (step_pending_8) (step_done_8) (completed-8)
    (step_pending_9) (step_done_9) (completed-9)
    (step_pending_10) (step_done_10) (completed-10)
    (step_pending_11) (step_done_11) (completed-11)
    (step_pending_12) (step_done_12) (completed-12)
    (step_pending_13) (step_done_13) (completed-13)
    (step_pending_14) (step_done_14) (completed-14)
    (step_pending_15) (step_done_15) (completed-15)
    (step_pending_16) (step_done_16) (completed-16)
    (step_pending_17) (step_done_17) (completed-17)
    (step_pending_18) (step_done_18) (completed-18)
    (step_pending_19) (step_done_19) (completed-19)
    (step_pending_20) (step_done_20) (completed-20)
    (step_pending_21) (step_done_21) (completed-21)
    (step_pending_22) (step_done_22) (completed-22)
    (step_pending_23) (step_done_23) (completed-23)
    (step_pending_24) (step_done_24) (completed-24)
    (step_pending_25) (step_done_25) (completed-25)
    (step_pending_26) (step_done_26) (completed-26)
    (step_pending_27) (step_done_27) (completed-27)
    (step_pending_28) (step_done_28) (completed-28)
    (step_pending_29) (step_done_29) (completed-29)
    (step_pending_30) (step_done_30) (completed-30)
    (step_pending_31) (step_done_31) (completed-31)
    (step_pending_32) (step_done_32) (completed-32)
    (step_pending_33) (step_done_33) (completed-33)
    (step_pending_34) (step_done_34) (completed-34)
    (step_pending_35) (step_done_35) (completed-35)
    (step_pending_36) (step_done_36) (completed-36)
    (step_pending_37) (step_done_37) (completed-37)
    (step_pending_38) (step_done_38) (completed-38)
    (step_pending_39) (step_done_39) (completed-39)
    (step_pending_40) (step_done_40) (completed-40)
  )

  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending_1))
    :effect (and (at start (not (step_pending_1))) (at end (step_done_1)) (at end (completed-1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_2)) (at start (completed-7)) (at start (completed-9)))
    :effect (and (at start (not (step_pending_2))) (at end (step_done_2)) (at end (completed-2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending_3)) (at start (completed-31)) (at start (completed-40)))
    :effect (and (at start (not (step_pending_3))) (at end (step_done_3)) (at end (completed-3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (at start (step_pending_4))
    :effect (and (at start (not (step_pending_4))) (at end (step_done_4)) (at end (completed-4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending_5)) (at start (completed-23)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_5))) (at end (step_done_5)) (at end (completed-5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending_6)) (at start (completed-2)) (at start (completed-20)) (at start (completed-33)) (at start (completed-7)) (at start (completed-9)))
    :effect (and (at start (not (step_pending_6))) (at end (step_done_6)) (at end (completed-6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (at start (step_pending_7))
    :effect (and (at start (not (step_pending_7))) (at end (step_done_7)) (at end (completed-7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (at start (step_pending_8))
    :effect (and (at start (not (step_pending_8))) (at end (step_done_8)) (at end (completed-8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (at start (step_pending_9))
    :effect (and (at start (not (step_pending_9))) (at end (step_done_9)) (at end (completed-9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending_10)) (at start (completed-1)) (at start (completed-31)) (at start (completed-32)))
    :effect (and (at start (not (step_pending_10))) (at end (step_done_10)) (at end (completed-10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending_11)) (at start (completed-38)))
    :effect (and (at start (not (step_pending_11))) (at end (step_done_11)) (at end (completed-11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_12)) (at start (completed-9)) (at start (completed-17)))
    :effect (and (at start (not (step_pending_12))) (at end (step_done_12)) (at end (completed-12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 18000)
    :condition (at start (step_pending_13))
    :effect (and (at start (not (step_pending_13))) (at end (step_done_13)) (at end (completed-13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_14)) (at start (completed-4)))
    :effect (and (at start (not (step_pending_14))) (at end (step_done_14)) (at end (completed-14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_15)) (at start (completed-14)) (at start (completed-4)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_15))) (at end (step_done_15)) (at end (completed-15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 7200)
    :condition (at start (step_pending_16))
    :effect (and (at start (not (step_pending_16))) (at end (step_done_16)) (at end (completed-16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (at start (step_pending_17))
    :effect (and (at start (not (step_pending_17))) (at end (step_done_17)) (at end (completed-17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_18)) (at start (completed-33)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_18))) (at end (step_done_18)) (at end (completed-18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending_19)) (at start (completed-1)) (at start (completed-6)) (at start (completed-13)) (at start (completed-14)) (at start (completed-27)) (at start (completed-28)) (at start (completed-2)) (at start (completed-20)) (at start (completed-33)) (at start (completed-7)) (at start (completed-9)))
    :effect (and (at start (not (step_pending_19))) (at end (step_done_19)) (at end (completed-19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending_20)) (at start (completed-18)))
    :effect (and (at start (not (step_pending_20))) (at end (step_done_20)) (at end (completed-20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending_21)) (at start (completed-1)) (at start (completed-37)))
    :effect (and (at start (not (step_pending_21))) (at end (step_done_21)) (at end (completed-21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending_22)) (at start (completed-11)) (at start (completed-34)))
    :effect (and (at start (not (step_pending_22))) (at end (step_done_22)) (at end (completed-22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_23)) (at start (completed-8)))
    :effect (and (at start (not (step_pending_23))) (at end (step_done_23)) (at end (completed-23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending_24)) (at start (completed-31)))
    :effect (and (at start (not (step_pending_24))) (at end (step_done_24)) (at end (completed-24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_25)) (at start (completed-26)) (at start (completed-14)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_25))) (at end (step_done_25)) (at end (completed-25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_26)) (at start (completed-5)) (at start (completed-15)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_26))) (at end (step_done_26)) (at end (completed-26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_27)) (at start (completed-17)) (at start (completed-20)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_27))) (at end (step_done_27)) (at end (completed-27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_28)) (at start (completed-27)) (at start (completed-1)) (at start (completed-17)) (at start (completed-20)))
    :effect (and (at start (not (step_pending_28))) (at end (step_done_28)) (at end (completed-28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending_29)) (at start (completed-40)))
    :effect (and (at start (not (step_pending_29))) (at end (step_done_29)) (at end (completed-29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_30)) (at start (completed-2)) (at start (completed-25)) (at start (completed-35)) (at start (completed-7)) (at start (completed-9)))
    :effect (and (at start (not (step_pending_30))) (at end (step_done_30)) (at end (completed-30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_31)) (at start (completed-40)))
    :effect (and (at start (not (step_pending_31))) (at end (step_done_31)) (at end (completed-31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (at start (step_pending_32))
    :effect (and (at start (not (step_pending_32))) (at end (step_done_32)) (at end (completed-32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending_33)) (at start (completed-4)) (at start (completed-24)) (at start (completed-29)) (at start (completed-35)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_33))) (at end (step_done_33)) (at end (completed-33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending_34)) (at start (completed-8)) (at start (completed-17)) (at start (completed-40)))
    :effect (and (at start (not (step_pending_34))) (at end (step_done_34)) (at end (completed-34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending_35)) (at start (completed-16)))
    :effect (and (at start (not (step_pending_35))) (at end (step_done_35)) (at end (completed-35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending_36)) (at start (completed-8)) (at start (completed-1)))
    :effect (and (at start (not (step_pending_36))) (at end (step_done_36)) (at end (completed-36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_37)) (at start (completed-26)))
    :effect (and (at start (not (step_pending_37))) (at end (step_done_37)) (at end (completed-37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending_38)) (at start (completed-8)))
    :effect (and (at start (not (step_pending_38))) (at end (step_done_38)) (at end (completed-38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_39)) (at start (completed-13)))
    :effect (and (at start (not (step_pending_39))) (at end (step_done_39)) (at end (completed-39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 3600)
    :condition (at start (step_pending_40))
    :effect (and (at start (not (step_pending_40))) (at end (step_done_40)) (at end (completed-40)))
  )
)
