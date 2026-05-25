(define (domain take-licorice-root)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s_done_1)
    (s_done_2)
    (s_done_3)
    (s_done_4)
    (s_done_5)
    (s_done_6)
    (s_done_7)
    (s_done_8)
    (s_done_9)
    (s_done_10)
    (s_done_11)
    (s_done_12)
    (s_done_13)
    (s_done_14)
    (s_done_15)
    (s_done_16)
    (s_done_17)
    (s_done_18)
    (s_done_19)
    (s_done_20)
    (s_done_21)
    (s_done_22)
    (s_done_23)
    (s_done_24)
    (s_done_25)
    (s_done_26)
    (s_done_27)
    (s_done_28)
    (s_done_29)
    (s_done_30)
    (s_done_31)
    (s_done_32)
    (s_done_33)
    (s_done_34)
    (s_done_35)
    (s_done_36)
    (s_done_37)
    (s_done_38)
    (s_done_39)
    (s_done_40)
    (s_done_41)
    (s_done_42)
    (s_done_43)
    (s_done_44)
    (s_done_45)
    (s_done_46)
    (s_done_47)
    (s_done_48)
    (s_done_49)
    (s_done_50)
    (s_done_51)
    (s_done_52)
    (s_done_53)
    (s_done_54)
    (s_done_55)
    (s_done_56)
    (s_done_57)
    (s_done_58)
    (s_done_59)
    (s_done_60)
    (s_done_61)
    (s_done_62)
    (s_done_63)
    (s_done_64)
    (s_done_65)
    (s_done_66)
    (s_done_67)
    (s_done_68)
    (s_done_69)
    (s_done_70)
  )

  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (s_done_49)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s_done_1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s_done_2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s_done_51)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s_done_3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (s_done_1)) (at start (s_done_40)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s_done_4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (s_done_43)) (at start (s_done_49)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s_done_5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s_done_62)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s_done_6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s_done_7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (s_done_18)) (at start (s_done_22)) (at start (s_done_54)) (at start (s_done_59)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s_done_8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step9)) (at start (s_done_5)) (at start (s_done_29)) (at start (s_done_56)) (at start (s_done_58)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s_done_9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (s_done_49)) (at start (s_done_53)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s_done_10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (s_done_18)) (at start (s_done_23)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s_done_11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 900)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s_done_12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 7200)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s_done_13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step14)) (at start (s_done_47)) (at start (s_done_61)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s_done_14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s_done_15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step16)) (at start (s_done_3)) (at start (s_done_10)) (at start (s_done_13)) (at start (s_done_52)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s_done_16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step17)) (at start (s_done_35)) (at start (s_done_47)) (at start (s_done_53)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s_done_17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1200)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s_done_18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (s_done_2)) (at start (s_done_4)) (at start (s_done_55)) (at start (s_done_57)) (at start (s_done_60)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s_done_19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20)) (at start (s_done_33)) (at start (s_done_35)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s_done_20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (s_done_8)) (at start (s_done_40)) (at start (s_done_69)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s_done_21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step22)) (at start (s_done_36)) (at start (s_done_53)) (at start (s_done_68)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s_done_22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 1800)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s_done_23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step24)) (at start (s_done_2)) (at start (s_done_57)) (at start (s_done_60)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s_done_24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (s_done_55)) (at start (s_done_68)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s_done_25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (s_done_4)) (at start (s_done_17)) (at start (s_done_23)) (at start (s_done_36)) (at start (s_done_43)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s_done_26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (s_done_3)) (at start (s_done_12)) (at start (s_done_36)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s_done_27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s_done_28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (s_done_15)) (at start (s_done_42)) (at start (s_done_55)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s_done_29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step30)) (at start (s_done_6)) (at start (s_done_7)) (at start (s_done_9)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s_done_30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (s_done_1)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s_done_31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (s_done_40)) (at start (s_done_54)) (at start (s_done_65)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s_done_32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 900)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s_done_33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (s_done_6)) (at start (s_done_36)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s_done_34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 600)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s_done_35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (s_done_33)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s_done_36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (s_done_15)) (at start (s_done_69)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s_done_37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step38)) (at start (s_done_5)) (at start (s_done_42)) (at start (s_done_50)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s_done_38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step39)) (at start (s_done_6)) (at start (s_done_45)) (at start (s_done_55)) (at start (s_done_59)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s_done_39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step40)) (at start (s_done_7)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s_done_40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step41)) (at start (s_done_15)) (at start (s_done_28)) (at start (s_done_42)) (at start (s_done_65)) (at start (s_done_55)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s_done_41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (s_done_43)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s_done_42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 172800)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s_done_43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 30)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s_done_44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (s_done_13)) (at start (s_done_28)) (at start (s_done_29)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s_done_45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (s_done_29)) (at start (s_done_66)) (at start (s_done_68)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s_done_46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (s_done_35)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s_done_47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step48)) (at start (s_done_24)) (at start (s_done_28)) (at start (s_done_36)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s_done_48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step49)) (at start (s_done_59)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s_done_49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step50)) (at start (s_done_14)) (at start (s_done_17)) (at start (s_done_33)) (at start (s_done_54)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s_done_50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 900)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s_done_51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step52)) (at start (s_done_5)) (at start (s_done_11)) (at start (s_done_23)) (at start (s_done_31)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s_done_52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (s_done_47)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s_done_53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s_done_54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1800)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s_done_55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step56)) (at start (s_done_47)) (at start (s_done_53)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s_done_56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step57)) (at start (s_done_18)) (at start (s_done_50)) (at start (s_done_65)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s_done_57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step58)) (at start (s_done_11)) (at start (s_done_24)) (at start (s_done_49)) (at start (s_done_50)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s_done_58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 600)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s_done_59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step60)) (at start (s_done_66)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s_done_60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step61)) (at start (s_done_47)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s_done_61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step62)) (at start (s_done_33)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s_done_62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step63)) (at start (s_done_34)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s_done_63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step64)) (at start (s_done_15)) (at start (s_done_28)) (at start (s_done_29)) (at start (s_done_42)) (at start (s_done_50)) (at start (s_done_51)) (at start (s_done_65)) (at start (s_done_68)) (at start (s_done_66)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s_done_64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step65)) (at start (s_done_3)) (at start (s_done_5)) (at start (s_done_18)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s_done_65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step66)) (at start (s_done_29)) (at start (s_done_35)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s_done_66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step67)) (at start (s_done_44)) (at start (s_done_53)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s_done_67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step68)) (at start (s_done_3)) (at start (s_done_6)) (at start (s_done_20)) (at start (s_done_37)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s_done_68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 60)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s_done_69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step70)) (at start (s_done_8)) (at start (s_done_11)) (at start (s_done_43)) (at start (s_done_49)) (at start (s_done_66)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s_done_70)))
  )
)
