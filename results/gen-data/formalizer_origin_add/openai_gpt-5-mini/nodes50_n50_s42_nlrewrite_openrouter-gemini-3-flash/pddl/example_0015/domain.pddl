(define (domain sponge-rollers)
  (:requirements :typing :durative-actions)
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
    (done_41)
    (done_42)
    (done_43)
    (done_44)
    (done_45)
    (done_46)
    (done_47)
    (done_48)
    (done_49)
    (done_50)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s1)) (at start (done_38)) (at start (done_47)) (at start (done_49)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (done_1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s2))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (done_2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s3)) (at start (done_27)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (done_3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending s4))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (done_4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s5))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (done_5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s6)) (at start (done_29)) (at start (done_40)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (done_6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s7)) (at start (done_20)) (at start (done_40)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (done_7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s8)) (at start (done_24)) (at start (done_40)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (done_8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending s9)) (at start (done_2)) (at start (done_25)) (at start (done_40)) (at start (done_46)) (at start (done_49)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (done_9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s10)) (at start (done_7)) (at start (done_28)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (done_10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s11)) (at start (done_27)) (at start (done_29)) (at start (done_39)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (done_11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s12)) (at start (done_3)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (done_12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s13)) (at start (done_2)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (done_13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s14)) (at start (done_29)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (done_14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s15))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (done_15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s16)) (at start (done_17)) (at start (done_19)) (at start (done_30)) (at start (done_49)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (done_16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending s17)) (at start (done_8)) (at start (done_42)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (done_17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s18)) (at start (done_20)) (at start (done_23)) (at start (done_42)) (at start (done_47)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (done_18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s19)) (at start (done_20)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (done_19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s20)) (at start (done_2)) (at start (done_14)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (done_20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s21)) (at start (done_7)) (at start (done_24)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (done_21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s22)) (at start (done_4)) (at start (done_10)) (at start (done_16)) (at start (done_40)) (at start (done_50)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (done_22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s23))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (done_23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending s24)) (at start (done_14)) (at start (done_29)) (at start (done_44)) (at start (done_20)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (done_24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending s25))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (done_25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending s26)) (at start (done_7)) (at start (done_30)) (at start (done_8)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (done_26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s27)) (at start (done_25)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (done_27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s28)) (at start (done_29)) (at start (done_32)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (done_28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s29))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (done_29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s30)) (at start (done_8)) (at start (done_32)) (at start (done_40)) (at start (done_49)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (done_30)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s31)) (at start (done_10)) (at start (done_42)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (done_31)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s32)) (at start (done_29)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (done_32)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s33)) (at start (done_9)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (done_33)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s34)) (at start (done_20)) (at start (done_40)) (at start (done_47)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (done_34)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending s35)) (at start (done_8)) (at start (done_36)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (done_35)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s36)) (at start (done_3)) (at start (done_24)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (done_36)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s37)) (at start (done_4)) (at start (done_16)) (at start (done_19)) (at start (done_28)) (at start (done_46)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (done_37)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s38)) (at start (done_5)) (at start (done_17)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (done_38)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending s39)) (at start (done_6)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (done_39)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s40)) (at start (done_29)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (done_40)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s41)) (at start (done_6)) (at start (done_43)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (done_41)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s42))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (done_42)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s43)) (at start (done_9)) (at start (done_24)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (done_43)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s44))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (done_44)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending s45)) (at start (done_2)) (at start (done_8)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (done_45)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s46)) (at start (done_15)) (at start (done_21)) (at start (done_35)) (at start (done_39)) (at start (done_40)) (at start (done_45)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (done_46)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s47)) (at start (done_2)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (done_47)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s48)) (at start (done_40)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (done_48)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s49))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (done_49)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s50)) (at start (done_45)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (done_50)))
  )
)
