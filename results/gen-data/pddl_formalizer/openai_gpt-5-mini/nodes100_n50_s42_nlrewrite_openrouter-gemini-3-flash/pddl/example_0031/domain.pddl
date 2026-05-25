(define (domain watch-western)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates for each step
    (done_1) (done_2) (done_3) (done_4) (done_5) (done_6) (done_7) (done_8) (done_9) (done_10)
    (done_11) (done_12) (done_13) (done_14) (done_15) (done_16) (done_17) (done_18) (done_19) (done_20)
    (done_21) (done_22) (done_23) (done_24) (done_25) (done_26) (done_27) (done_28) (done_29) (done_30)
    (done_31) (done_32) (done_33) (done_34) (done_35) (done_36) (done_37) (done_38) (done_39) (done_40)
    (done_41) (done_42) (done_43) (done_44) (done_45) (done_46) (done_47) (done_48) (done_49) (done_50)
    (done_51) (done_52) (done_53) (done_54) (done_55) (done_56) (done_57) (done_58) (done_59) (done_60)
    (done_61) (done_62) (done_63) (done_64) (done_65) (done_66) (done_67) (done_68) (done_69) (done_70)
    (done_71) (done_72) (done_73) (done_74) (done_75) (done_76) (done_77) (done_78) (done_79) (done_80)
    (done_81) (done_82) (done_83) (done_84) (done_85) (done_86) (done_87) (done_88) (done_89) (done_90)
    (done_91) (done_92) (done_93) (done_94) (done_95) (done_96) (done_97) (done_98) (done_99) (done_100)
  )

  ;; One durative-action per step. Each action clears the pending predicate at start and
  ;; asserts a per-step step_done at end plus the unique semantic predicate at end.

  (:durative-action do-step1
    :duration (= ?duration 30)
    :condition (and (at start (pending step1)) (at start (done_4)) (at start (done_47)) (at start (done_53)) (at start (done_66)) (at start (done_90)) (at start (done_92)) (at start (done_93)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (done_1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 60)
    :condition (and (at start (pending step2)) (at start (done_59)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (done_2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 120)
    :condition (and (at start (pending step3)) (at start (done_8)) (at start (done_11)) (at start (done_59)) (at start (done_60)))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (done_3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 120)
    :condition (and (at start (pending step4)) (at start (done_9)) (at start (done_20)) (at start (done_21)) (at start (done_32)) (at start (done_63)) (at start (done_65)) (at start (done_92)))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (done_4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 30)
    :condition (and (at start (pending step5)) (at start (done_42)) (at start (done_58)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (done_5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 5)
    :condition (and (at start (pending step6)) (at start (done_13)) (at start (done_31)) (at start (done_64)) (at start (done_79)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (done_6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 15)
    :condition (and (at start (pending step7)) (at start (done_4)) (at start (done_12)) (at start (done_13)) (at start (done_14)) (at start (done_42)) (at start (done_91)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (done_7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 180)
    :condition (and (at start (pending step8)) (at start (done_19)) (at start (done_28)) (at start (done_35)) (at start (done_48)) (at start (done_51)) (at start (done_54)) (at start (done_89)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (done_8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 60)
    :condition (and (at start (pending step9)) (at start (done_32)))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (done_9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 600)
    :condition (and (at start (pending step10)) (at start (done_21)) (at start (done_32)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (done_10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 60)
    :condition (and (at start (pending step11)) (at start (done_21)) (at start (done_27)) (at start (done_51)) (at start (done_67)) (at start (done_86)))
    :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (done_11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 20)
    :condition (and (at start (pending step12)) (at start (done_9)) (at start (done_26)) (at start (done_63)))
    :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (done_12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 45)
    :condition (and (at start (pending step13)) (at start (done_60)))
    :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (done_13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 60)
    :condition (and (at start (pending step14)) (at start (done_66)))
    :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (done_14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 30)
    :condition (and (at start (pending step15)) (at start (done_8)) (at start (done_28)) (at start (done_69)) (at start (done_77)) (at start (done_84)) (at start (done_98)))
    :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (done_15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 60)
    :condition (and (at start (pending step16)) (at start (done_84)))
    :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (done_16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 60)
    :condition (and (at start (pending step17)) (at start (done_24)) (at start (done_46)) (at start (done_69)) (at start (done_71)) (at start (done_87)) (at start (done_91)))
    :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (done_17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 120)
    :condition (and (at start (pending step18)) (at start (done_2)) (at start (done_45)) (at start (done_66)) (at start (done_87)) (at start (done_89)))
    :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (done_18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 30)
    :condition (and (at start (pending step19)) (at start (done_21)) (at start (done_46)) (at start (done_58)) (at start (done_67)))
    :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (done_19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 30)
    :condition (and (at start (pending step20)) (at start (done_13)) (at start (done_26)) (at start (done_92)))
    :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (done_20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 300)
    :condition (and (at start (pending step21)))
    :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (done_21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 120)
    :condition (and (at start (pending step22)) (at start (done_5)) (at start (done_24)) (at start (done_32)) (at start (done_48)) (at start (done_50)))
    :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (done_22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 45)
    :condition (and (at start (pending step23)) (at start (done_16)) (at start (done_24)) (at start (done_70)) (at start (done_96)))
    :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (done_23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (pending step24)))
    :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (done_24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 60)
    :condition (and (at start (pending step25)) (at start (done_71)) (at start (done_84)))
    :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (done_25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 120)
    :condition (and (at start (pending step26)))
    :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (done_26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 900)
    :condition (and (at start (pending step27)) (at start (done_24)) (at start (done_49)))
    :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (done_27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 300)
    :condition (and (at start (pending step28)) (at start (done_9)) (at start (done_14)) (at start (done_62)) (at start (done_77)))
    :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (done_28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 20)
    :condition (and (at start (pending step29)) (at start (done_60)) (at start (done_96)))
    :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (done_29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 120)
    :condition (and (at start (pending step30)) (at start (done_37)) (at start (done_82)))
    :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (done_30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 30)
    :condition (and (at start (pending step31)) (at start (done_1)) (at start (done_16)) (at start (done_25)) (at start (done_28)) (at start (done_52)) (at start (done_92)) (at start (done_97)))
    :effect (and (at start (not (pending step31))) (at end (step_done step31)) (at end (done_31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 300)
    :condition (and (at start (pending step32)))
    :effect (and (at start (not (pending step32))) (at end (step_done step32)) (at end (done_32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 60)
    :condition (and (at start (pending step33)) (at start (done_66)))
    :effect (and (at start (not (pending step33))) (at end (step_done step33)) (at end (done_33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 30)
    :condition (and (at start (pending step34)) (at start (done_3)) (at start (done_27)) (at start (done_44)) (at start (done_46)) (at start (done_58)) (at start (done_81)))
    :effect (and (at start (not (pending step34))) (at end (step_done step34)) (at end (done_34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 180)
    :condition (and (at start (pending step35)) (at start (done_27)) (at start (done_52)))
    :effect (and (at start (not (pending step35))) (at end (step_done step35)) (at end (done_35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 30)
    :condition (and (at start (pending step36)) (at start (done_27)) (at start (done_32)) (at start (done_52)) (at start (done_91)))
    :effect (and (at start (not (pending step36))) (at end (step_done step36)) (at end (done_36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 120)
    :condition (and (at start (pending step37)))
    :effect (and (at start (not (pending step37))) (at end (step_done step37)) (at end (done_37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 60)
    :condition (and (at start (pending step38)) (at start (done_12)) (at start (done_49)) (at start (done_57)))
    :effect (and (at start (not (pending step38))) (at end (step_done step38)) (at end (done_38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 30)
    :condition (and (at start (pending step39)) (at start (done_22)) (at start (done_27)) (at start (done_86)))
    :effect (and (at start (not (pending step39))) (at end (step_done step39)) (at end (done_39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 60)
    :condition (and (at start (pending step40)) (at start (done_18)) (at start (done_32)) (at start (done_46)) (at start (done_47)) (at start (done_58)) (at start (done_89)) (at start (done_92)))
    :effect (and (at start (not (pending step40))) (at end (step_done step40)) (at end (done_40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 300)
    :condition (and (at start (pending step41)) (at start (done_9)) (at start (done_30)) (at start (done_69)) (at start (done_84)))
    :effect (and (at start (not (pending step41))) (at end (step_done step41)) (at end (done_41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 120)
    :condition (and (at start (pending step42)) (at start (done_71)) (at start (done_96)))
    :effect (and (at start (not (pending step42))) (at end (step_done step42)) (at end (done_42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 60)
    :condition (and (at start (pending step43)))
    :effect (and (at start (not (pending step43))) (at end (step_done step43)) (at end (done_43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 30)
    :condition (and (at start (pending step44)) (at start (done_35)) (at start (done_60)))
    :effect (and (at start (not (pending step44))) (at end (step_done step44)) (at end (done_44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 120)
    :condition (and (at start (pending step45)) (at start (done_53)) (at start (done_61)) (at start (done_94)))
    :effect (and (at start (not (pending step45))) (at end (step_done step45)) (at end (done_45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 120)
    :condition (and (at start (pending step46)) (at start (done_68)) (at start (done_91)))
    :effect (and (at start (not (pending step46))) (at end (step_done step46)) (at end (done_46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 30)
    :condition (and (at start (pending step47)) (at start (done_50)) (at start (done_61)) (at start (done_94)))
    :effect (and (at start (not (pending step47))) (at end (step_done step47)) (at end (done_47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 60)
    :condition (and (at start (pending step48)) (at start (done_32)) (at start (done_33)) (at start (done_80)))
    :effect (and (at start (not (pending step48))) (at end (step_done step48)) (at end (done_48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 600)
    :condition (and (at start (pending step49)))
    :effect (and (at start (not (pending step49))) (at end (step_done step49)) (at end (done_49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 180)
    :condition (and (at start (pending step50)) (at start (done_33)) (at start (done_84)))
    :effect (and (at start (not (pending step50))) (at end (step_done step50)) (at end (done_50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 60)
    :condition (and (at start (pending step51)))
    :effect (and (at start (not (pending step51))) (at end (step_done step51)) (at end (done_51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 15)
    :condition (and (at start (pending step52)) (at start (done_43)))
    :effect (and (at start (not (pending step52))) (at end (step_done step52)) (at end (done_52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 30)
    :condition (and (at start (pending step53)) (at start (done_91)))
    :effect (and (at start (not (pending step53))) (at end (step_done step53)) (at end (done_53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 120)
    :condition (and (at start (pending step54)) (at start (done_25)))
    :effect (and (at start (not (pending step54))) (at end (step_done step54)) (at end (done_54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 60)
    :condition (and (at start (pending step55)) (at start (done_5)) (at start (done_8)) (at start (done_18)) (at start (done_19)) (at start (done_34)) (at start (done_78)) (at start (done_96)))
    :effect (and (at start (not (pending step55))) (at end (step_done step55)) (at end (done_55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 30)
    :condition (and (at start (pending step56)) (at start (done_35)) (at start (done_40)) (at start (done_81)))
    :effect (and (at start (not (pending step56))) (at end (step_done step56)) (at end (done_56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 15)
    :condition (and (at start (pending step57)) (at start (done_46)) (at start (done_48)) (at start (done_85)))
    :effect (and (at start (not (pending step57))) (at end (step_done step57)) (at end (done_57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 60)
    :condition (and (at start (pending step58)) (at start (done_12)) (at start (done_80)) (at start (done_92)))
    :effect (and (at start (not (pending step58))) (at end (step_done step58)) (at end (done_58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 120)
    :condition (and (at start (pending step59)) (at start (done_11)) (at start (done_32)) (at start (done_72)))
    :effect (and (at start (not (pending step59))) (at end (step_done step59)) (at end (done_59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 60)
    :condition (and (at start (pending step60)) (at start (done_91)))
    :effect (and (at start (not (pending step60))) (at end (step_done step60)) (at end (done_60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 60)
    :condition (and (at start (pending step61)) (at start (done_82)))
    :effect (and (at start (not (pending step61))) (at end (step_done step61)) (at end (done_61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 60)
    :condition (and (at start (pending step62)) (at start (done_30)) (at start (done_82)))
    :effect (and (at start (not (pending step62))) (at end (step_done step62)) (at end (done_62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 15)
    :condition (and (at start (pending step63)) (at start (done_21)) (at start (done_68)) (at start (done_91)))
    :effect (and (at start (not (pending step63))) (at end (step_done step63)) (at end (done_63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 10)
    :condition (and (at start (pending step64)) (at start (done_4)) (at start (done_12)) (at start (done_19)) (at start (done_61)) (at start (done_92)))
    :effect (and (at start (not (pending step64))) (at end (step_done step64)) (at end (done_64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 30)
    :condition (and (at start (pending step65)) (at start (done_22)) (at start (done_77)) (at start (done_97)))
    :effect (and (at start (not (pending step65))) (at end (step_done step65)) (at end (done_65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 60)
    :condition (and (at start (pending step66)) (at start (done_87)))
    :effect (and (at start (not (pending step66))) (at end (step_done step66)) (at end (done_66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 60)
    :condition (and (at start (pending step67)) (at start (done_9)) (at start (done_33)) (at start (done_49)) (at start (done_77)) (at start (done_97)))
    :effect (and (at start (not (pending step67))) (at end (step_done step67)) (at end (done_67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 180)
    :condition (and (at start (pending step68)) (at start (done_75)))
    :effect (and (at start (not (pending step68))) (at end (step_done step68)) (at end (done_68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 60)
    :condition (and (at start (pending step69)) (at start (done_35)))
    :effect (and (at start (not (pending step69))) (at end (step_done step69)) (at end (done_69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 120)
    :condition (and (at start (pending step70)) (at start (done_22)) (at start (done_62)) (at start (done_87)))
    :effect (and (at start (not (pending step70))) (at end (step_done step70)) (at end (done_70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 600)
    :condition (and (at start (pending step71)) (at start (done_21)) (at start (done_27)) (at start (done_72)) (at start (done_49)))
    :effect (and (at start (not (pending step71))) (at end (step_done step71)) (at end (done_71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 300)
    :condition (and (at start (pending step72)) (at start (done_21)) (at start (done_68)))
    :effect (and (at start (not (pending step72))) (at end (step_done step72)) (at end (done_72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 120)
    :condition (and (at start (pending step73)) (at start (done_13)) (at start (done_21)) (at start (done_48)) (at start (done_96)))
    :effect (and (at start (not (pending step73))) (at end (step_done step73)) (at end (done_73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 15)
    :condition (and (at start (pending step74)) (at start (done_19)) (at start (done_70)) (at start (done_52)))
    :effect (and (at start (not (pending step74))) (at end (step_done step74)) (at end (done_74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 120)
    :condition (and (at start (pending step75)) (at start (done_100)) (at start (done_80)))
    :effect (and (at start (not (pending step75))) (at end (step_done step75)) (at end (done_75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 240)
    :condition (and (at start (pending step76)) (at start (done_67)) (at start (done_69)))
    :effect (and (at start (not (pending step76))) (at end (step_done step76)) (at end (done_76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 60)
    :condition (and (at start (pending step77)) (at start (done_24)) (at start (done_82)))
    :effect (and (at start (not (pending step77))) (at end (step_done step77)) (at end (done_77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 30)
    :condition (and (at start (pending step78)) (at start (done_21)) (at start (done_32)) (at start (done_88)))
    :effect (and (at start (not (pending step78))) (at end (step_done step78)) (at end (done_78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 10)
    :condition (and (at start (pending step79)) (at start (done_5)) (at start (done_16)) (at start (done_32)) (at start (done_37)) (at start (done_42)) (at start (done_56)))
    :effect (and (at start (not (pending step79))) (at end (step_done step79)) (at end (done_79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 60)
    :condition (and (at start (pending step80)) (at start (done_9)))
    :effect (and (at start (not (pending step80))) (at end (step_done step80)) (at end (done_80)))
  )

  (:durative-action do-step81
    :duration (= ?duration 120)
    :condition (and (at start (pending step81)) (at start (done_11)) (at start (done_21)) (at start (done_32)) (at start (done_72)) (at start (done_75)) (at start (done_92)) (at start (done_93)))
    :effect (and (at start (not (pending step81))) (at end (step_done step81)) (at end (done_81)))
  )

  (:durative-action do-step82
    :duration (= ?duration 300)
    :condition (and (at start (pending step82)))
    :effect (and (at start (not (pending step82))) (at end (step_done step82)) (at end (done_82)))
  )

  (:durative-action do-step83
    :duration (= ?duration 30)
    :condition (and (at start (pending step83)) (at start (done_19)) (at start (done_48)) (at start (done_53)) (at start (done_89)))
    :effect (and (at start (not (pending step83))) (at end (step_done step83)) (at end (done_83)))
  )

  (:durative-action do-step84
    :duration (= ?duration 120)
    :condition (and (at start (pending step84)))
    :effect (and (at start (not (pending step84))) (at end (step_done step84)) (at end (done_84)))
  )

  (:durative-action do-step85
    :duration (= ?duration 60)
    :condition (and (at start (pending step85)) (at start (done_27)) (at start (done_33)) (at start (done_58)) (at start (done_89)))
    :effect (and (at start (not (pending step85))) (at end (step_done step85)) (at end (done_85)))
  )

  (:durative-action do-step86
    :duration (= ?duration 60)
    :condition (and (at start (pending step86)))
    :effect (and (at start (not (pending step86))) (at end (step_done step86)) (at end (done_86)))
  )

  (:durative-action do-step87
    :duration (= ?duration 120)
    :condition (and (at start (pending step87)))
    :effect (and (at start (not (pending step87))) (at end (step_done step87)) (at end (done_87)))
  )

  (:durative-action do-step88
    :duration (= ?duration 60)
    :condition (and (at start (pending step88)) (at start (done_4)) (at start (done_10)) (at start (done_20)) (at start (done_63)))
    :effect (and (at start (not (pending step88))) (at end (step_done step88)) (at end (done_88)))
  )

  (:durative-action do-step89
    :duration (= ?duration 120)
    :condition (and (at start (pending step89)) (at start (done_30)) (at start (done_96)))
    :effect (and (at start (not (pending step89))) (at end (step_done step89)) (at end (done_89)))
  )

  (:durative-action do-step90
    :duration (= ?duration 120)
    :condition (and (at start (pending step90)) (at start (done_71)) (at start (done_77)))
    :effect (and (at start (not (pending step90))) (at end (step_done step90)) (at end (done_90)))
  )

  (:durative-action do-step91
    :duration (= ?duration 300)
    :condition (and (at start (pending step91)))
    :effect (and (at start (not (pending step91))) (at end (step_done step91)) (at end (done_91)))
  )

  (:durative-action do-step92
    :duration (= ?duration 30)
    :condition (and (at start (pending step92)) (at start (done_24)) (at start (done_71)) (at start (done_96)))
    :effect (and (at start (not (pending step92))) (at end (step_done step92)) (at end (done_92)))
  )

  (:durative-action do-step93
    :duration (= ?duration 120)
    :condition (and (at start (pending step93)) (at start (done_25)) (at start (done_32)) (at start (done_72)))
    :effect (and (at start (not (pending step93))) (at end (step_done step93)) (at end (done_93)))
  )

  (:durative-action do-step94
    :duration (= ?duration 15)
    :condition (and (at start (pending step94)) (at start (done_9)) (at start (done_11)) (at start (done_16)) (at start (done_17)) (at start (done_30)) (at start (done_42)))
    :effect (and (at start (not (pending step94))) (at end (step_done step94)) (at end (done_94)))
  )

  (:durative-action do-step95
    :duration (= ?duration 60)
    :condition (and (at start (pending step95)) (at start (done_18)) (at start (done_21)) (at start (done_24)) (at start (done_53)) (at start (done_70)) (at start (done_81)))
    :effect (and (at start (not (pending step95))) (at end (step_done step95)) (at end (done_95)))
  )

  (:durative-action do-step96
    :duration (= ?duration 120)
    :condition (and (at start (pending step96)) (at start (done_82)))
    :effect (and (at start (not (pending step96))) (at end (step_done step96)) (at end (done_96)))
  )

  (:durative-action do-step97
    :duration (= ?duration 180)
    :condition (and (at start (pending step97)) (at start (done_24)) (at start (done_46)))
    :effect (and (at start (not (pending step97))) (at end (step_done step97)) (at end (done_97)))
  )

  (:durative-action do-step98
    :duration (= ?duration 30)
    :condition (and (at start (pending step98)) (at start (done_29)) (at start (done_27)) (at start (done_93)))
    :effect (and (at start (not (pending step98))) (at end (step_done step98)) (at end (done_98)))
  )

  (:durative-action do-step99
    :duration (= ?duration 300)
    :condition (and (at start (pending step99)) (at start (done_1)) (at start (done_21)) (at start (done_52)) (at start (done_55)) (at start (done_56)) (at start (done_100)))
    :effect (and (at start (not (pending step99))) (at end (step_done step99)) (at end (done_99)))
  )

  (:durative-action do-step100
    :duration (= ?duration 60)
    :condition (and (at start (pending step100)) (at start (done_28)) (at start (done_39)) (at start (done_44)) (at start (done_61)) (at start (done_71)))
    :effect (and (at start (not (pending step100))) (at end (step_done step100)) (at end (done_100)))
  )
)
