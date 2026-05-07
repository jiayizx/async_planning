(define (domain play_pro_basketball)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished_1)
    (finished_2)
    (finished_3)
    (finished_4)
    (finished_5)
    (finished_6)
    (finished_7)
    (finished_8)
    (finished_9)
    (finished_10)
    (finished_11)
    (finished_12)
    (finished_13)
    (finished_14)
    (finished_15)
    (finished_16)
    (finished_17)
    (finished_18)
    (finished_19)
    (finished_20)
    (finished_21)
    (finished_22)
    (finished_23)
    (finished_24)
    (finished_25)
    (finished_26)
    (finished_27)
    (finished_28)
    (finished_29)
    (finished_30)
    (finished_31)
    (finished_32)
    (finished_33)
    (finished_34)
    (finished_35)
    (finished_36)
    (finished_37)
    (finished_38)
    (finished_39)
    (finished_40)
    (finished_41)
    (finished_42)
    (finished_43)
    (finished_44)
    (finished_45)
    (finished_46)
    (finished_47)
    (finished_48)
    (finished_49)
    (finished_50)
    (finished_51)
    (finished_52)
    (finished_53)
    (finished_54)
    (finished_55)
    (finished_56)
    (finished_57)
    (finished_58)
    (finished_59)
    (finished_60)
    (finished_61)
    (finished_62)
    (finished_63)
    (finished_64)
    (finished_65)
    (finished_66)
    (finished_67)
    (finished_68)
    (finished_69)
    (finished_70)
    (finished_71)
    (finished_72)
    (finished_73)
    (finished_74)
    (finished_75)
    (finished_76)
    (finished_77)
    (finished_78)
    (finished_79)
    (finished_80)
  )

  ;; One durative-action per step. Each :condition is a single :condition clause
  ;; and uses an (and ...) wrapper even if it contains only one conjunct.

  (:durative-action do_step1
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step1)) (at start (finished_6)) (at start (finished_20)) (at start (finished_43)) (at start (finished_59)) (at start (finished_74)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (finished_1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step2)) (at start (finished_21)) (at start (finished_22)) (at start (finished_33)) (at start (finished_38)) (at start (finished_54)) (at start (finished_61)) (at start (finished_65)) (at start (finished_68)) (at start (finished_76)) (at start (finished_78)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finished_2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step3)) (at start (finished_18)) (at start (finished_23)) (at start (finished_70)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (finished_3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step4)) (at start (finished_45)) (at start (finished_57)) (at start (finished_67)) (at start (finished_77)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (finished_4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step5)) (at start (finished_12)) (at start (finished_33)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (finished_5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (finished_6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (finished_7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step8)) (at start (finished_7)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (finished_8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step9)) (at start (finished_6)) (at start (finished_67)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (finished_9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (finished_5)) (at start (finished_34)) (at start (finished_53)) (at start (finished_76)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (finished_10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step11)) (at start (finished_15)) (at start (finished_19)) (at start (finished_39)) (at start (finished_51)) (at start (finished_72)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (finished_11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step12)) (at start (finished_59)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (finished_12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step13)) (at start (finished_16)) (at start (finished_17)) (at start (finished_45)) (at start (finished_48)) (at start (finished_78)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (finished_13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step14)) (at start (finished_6)) (at start (finished_17)) (at start (finished_57)) (at start (finished_61)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (finished_14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step15)) (at start (finished_16)) (at start (finished_19)) (at start (finished_31)) (at start (finished_50)) (at start (finished_67)) (at start (finished_70)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (finished_15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (finished_16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step17)) (at start (finished_18)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (finished_17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 126144000)
    :condition (and (at start (step_pending step18)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (finished_18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step19)) (at start (finished_3)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (finished_19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step20)) (at start (finished_2)) (at start (finished_15)) (at start (finished_18)) (at start (finished_37)) (at start (finished_49)) (at start (finished_64)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (finished_20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step21)) (at start (finished_16)) (at start (finished_27)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (finished_21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step22)) (at start (finished_34)) (at start (finished_36)) (at start (finished_46)) (at start (finished_53)) (at start (finished_63)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (finished_22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending step23)) (at start (finished_18)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (finished_23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step24)) (at start (finished_41)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (finished_24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step25)) (at start (finished_47)) (at start (finished_68)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (finished_25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step26)) (at start (finished_36)) (at start (finished_55)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (finished_26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step27)) (at start (finished_29)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (finished_27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step28)) (at start (finished_11)) (at start (finished_24)) (at start (finished_36)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (finished_28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 157680000)
    :condition (and (at start (step_pending step29)) (at start (finished_59)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (finished_29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending step30)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (finished_30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step31)) (at start (finished_29)) (at start (finished_62)) (at start (finished_78)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (finished_31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step32)) (at start (finished_18)) (at start (finished_45)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (finished_32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step33)) (at start (finished_76)) (at start (finished_45)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (finished_33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step34)) (at start (finished_27)) (at start (finished_62)) (at start (finished_74)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (finished_34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step35)) (at start (finished_16)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (finished_35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (finished_9)) (at start (finished_73)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (finished_36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step37)) (at start (finished_76)) (at start (finished_65)) (at start (finished_78)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (finished_37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step38)) (at start (finished_45)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (finished_38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step39)) (at start (finished_38)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (finished_39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step40)) (at start (finished_58)) (at start (finished_73)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (finished_40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step41)) (at start (finished_12)) (at start (finished_16)) (at start (finished_71)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (finished_41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step42)) (at start (finished_5)) (at start (finished_37)) (at start (finished_49)) (at start (finished_73)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (finished_42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step43)) (at start (finished_2)) (at start (finished_9)) (at start (finished_18)) (at start (finished_49)) (at start (finished_56)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (finished_43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step44)) (at start (finished_38)) (at start (finished_46)) (at start (finished_48)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (finished_44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending step45)) (at start (finished_67)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (finished_45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step46)) (at start (finished_70)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (finished_46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step47)) (at start (finished_36)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (finished_47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step48)) (at start (finished_19)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (finished_48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step49)) (at start (finished_12)) (at start (finished_31)) (at start (finished_65)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (finished_49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step50)) (at start (finished_14)) (at start (finished_18)) (at start (finished_33)) (at start (finished_37)) (at start (finished_69)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (finished_50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step51)) (at start (finished_6)) (at start (finished_60)) (at start (finished_45)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (finished_51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step52)) (at start (finished_22)) (at start (finished_41)) (at start (finished_62)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (finished_52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step53)) (at start (finished_16)) (at start (finished_68)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (finished_53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step54)) (at start (finished_46)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (finished_54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step55)) (at start (finished_31)) (at start (finished_45)) (at start (finished_54)) (at start (finished_61)) (at start (finished_62)) (at start (finished_48)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (finished_55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step56)) (at start (finished_7)) (at start (finished_14)) (at start (finished_22)) (at start (finished_34)) (at start (finished_53)) (at start (finished_58)) (at start (finished_69)) (at start (finished_74)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (finished_56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step57)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (finished_57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step58)) (at start (finished_35)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (finished_58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 157680000)
    :condition (and (at start (step_pending step59)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (finished_59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending step60)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (finished_60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step61)) (at start (finished_62)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (finished_61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step62)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step63)) (at end (finished_62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step63)) (at start (finished_68)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (finished_63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step64)) (at start (finished_49)) (at start (finished_76)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (finished_64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending step65)) (at start (finished_16)) (at start (finished_35)) (at start (finished_44)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (finished_65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step66)) (at start (finished_57)) (at start (finished_76)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (finished_66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 63072000)
    :condition (and (at start (step_pending step67)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (finished_67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step68)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (finished_68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step69)) (at start (finished_3)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (finished_69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step70)) (at start (finished_67)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (finished_70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step71)) (at start (finished_48)) (at start (finished_70)) (at start (finished_78)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (finished_71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step72)) (at start (finished_31)) (at start (finished_41)) (at start (finished_49)) (at start (finished_67)) (at start (finished_74)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (finished_72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step73)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (finished_73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step74)) (at start (finished_39)) (at start (finished_45)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (finished_74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step75)) (at start (finished_23)) (at start (finished_30)) (at start (finished_74)) (at start (finished_61)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (finished_75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 1)
    :condition (and (at start (step_pending step76)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (finished_76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step77)) (at start (finished_12)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (finished_77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step78)) (at start (finished_38)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (finished_78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step79)) (at start (finished_11)) (at start (finished_25)) (at start (finished_33)) (at start (finished_40)) (at start (finished_49)) (at start (finished_63)) (at start (finished_64)) (at start (finished_75)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (finished_79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step80)) (at start (finished_17)) (at start (finished_38)) (at start (finished_57)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (finished_80)))
  )
)
