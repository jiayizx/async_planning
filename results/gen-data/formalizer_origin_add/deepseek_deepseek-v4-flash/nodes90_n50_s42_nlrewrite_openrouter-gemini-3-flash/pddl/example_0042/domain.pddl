(define (domain have_money_domain)
  (:requirements :durative-actions :typing)
  (:predicates
    (step_pending_1) (step_pending_2) (step_pending_3) (step_pending_4) (step_pending_5)
    (step_pending_6) (step_pending_7) (step_pending_8) (step_pending_9) (step_pending_10)
    (step_pending_11) (step_pending_12) (step_pending_13) (step_pending_14) (step_pending_15)
    (step_pending_16) (step_pending_17) (step_pending_18) (step_pending_19) (step_pending_20)
    (step_pending_21) (step_pending_22) (step_pending_23) (step_pending_24) (step_pending_25)
    (step_pending_26) (step_pending_27) (step_pending_28) (step_pending_29) (step_pending_30)
    (step_pending_31) (step_pending_32) (step_pending_33) (step_pending_34) (step_pending_35)
    (step_pending_36) (step_pending_37) (step_pending_38) (step_pending_39) (step_pending_40)
    (step_pending_41) (step_pending_42) (step_pending_43) (step_pending_44) (step_pending_45)
    (step_pending_46) (step_pending_47) (step_pending_48) (step_pending_49) (step_pending_50)
    (step_pending_51) (step_pending_52) (step_pending_53) (step_pending_54) (step_pending_55)
    (step_pending_56) (step_pending_57) (step_pending_58) (step_pending_59) (step_pending_60)
    (step_pending_61) (step_pending_62) (step_pending_63) (step_pending_64) (step_pending_65)
    (step_pending_66) (step_pending_67) (step_pending_68) (step_pending_69) (step_pending_70)
    (step_pending_71) (step_pending_72) (step_pending_73) (step_pending_74) (step_pending_75)
    (step_pending_76) (step_pending_77) (step_pending_78) (step_pending_79) (step_pending_80)
    (step_pending_81) (step_pending_82) (step_pending_83) (step_pending_84) (step_pending_85)
    (step_pending_86) (step_pending_87) (step_pending_88) (step_pending_89) (step_pending_90)
    (step_done_1) (step_done_2) (step_done_3) (step_done_4) (step_done_5)
    (step_done_6) (step_done_7) (step_done_8) (step_done_9) (step_done_10)
    (step_done_11) (step_done_12) (step_done_13) (step_done_14) (step_done_15)
    (step_done_16) (step_done_17) (step_done_18) (step_done_19) (step_done_20)
    (step_done_21) (step_done_22) (step_done_23) (step_done_24) (step_done_25)
    (step_done_26) (step_done_27) (step_done_28) (step_done_29) (step_done_30)
    (step_done_31) (step_done_32) (step_done_33) (step_done_34) (step_done_35)
    (step_done_36) (step_done_37) (step_done_38) (step_done_39) (step_done_40)
    (step_done_41) (step_done_42) (step_done_43) (step_done_44) (step_done_45)
    (step_done_46) (step_done_47) (step_done_48) (step_done_49) (step_done_50)
    (step_done_51) (step_done_52) (step_done_53) (step_done_54) (step_done_55)
    (step_done_56) (step_done_57) (step_done_58) (step_done_59) (step_done_60)
    (step_done_61) (step_done_62) (step_done_63) (step_done_64) (step_done_65)
    (step_done_66) (step_done_67) (step_done_68) (step_done_69) (step_done_70)
    (step_done_71) (step_done_72) (step_done_73) (step_done_74) (step_done_75)
    (step_done_76) (step_done_77) (step_done_78) (step_done_79) (step_done_80)
    (step_done_81) (step_done_82) (step_done_83) (step_done_84) (step_done_85)
    (step_done_86) (step_done_87) (step_done_88) (step_done_89) (step_done_90)
    (money_obtained)
  )

  (:durative-action do_step1
    :duration (= ?duration 172800)
    :condition (at start (step_pending_1))
    :effect (and (at start (not (step_pending_1))) (at end (step_done_1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_2)) (at start (step_done_14)) (at start (step_done_39)))
    :effect (and (at start (not (step_pending_2))) (at end (step_done_2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_3)) (at start (step_done_32)) (at start (step_done_69)) (at start (step_done_78)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_3))) (at end (step_done_3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 604800)
    :condition (at start (step_pending_4))
    :effect (and (at start (not (step_pending_4))) (at end (step_done_4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending_5)) (at start (step_done_1)))
    :effect (and (at start (not (step_pending_5))) (at end (step_done_5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending_6)) (at start (step_done_25)))
    :effect (and (at start (not (step_pending_6))) (at end (step_done_6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_7)) (at start (step_done_2)) (at start (step_done_21)) (at start (step_done_26)) (at start (step_done_66)) (at start (step_done_78)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_7))) (at end (step_done_7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending_8)) (at start (step_done_40)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending_8))) (at end (step_done_8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (at start (step_pending_9))
    :effect (and (at start (not (step_pending_9))) (at end (step_done_9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :condition (at start (step_pending_10))
    :effect (and (at start (not (step_pending_10))) (at end (step_done_10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_11)) (at start (step_done_66)) (at start (step_done_69)))
    :effect (and (at start (not (step_pending_11))) (at end (step_done_11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 604800)
    :condition (at start (step_pending_12))
    :effect (and (at start (not (step_pending_12))) (at end (step_done_12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending_13)) (at start (step_done_83)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending_13))) (at end (step_done_13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_14)) (at start (step_done_32)))
    :effect (and (at start (not (step_pending_14))) (at end (step_done_14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_15)) (at start (step_done_4)))
    :effect (and (at start (not (step_pending_15))) (at end (step_done_15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_16)) (at start (step_done_28)) (at start (step_done_35)) (at start (step_done_56)) (at start (step_done_60)) (at start (step_done_71)) (at start (step_done_72)) (at start (step_done_78)) (at start (step_done_82)) (at start (step_done_83)))
    :effect (and (at start (not (step_pending_16))) (at end (step_done_16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_17)) (at start (step_done_9)) (at start (step_done_25)) (at start (step_done_33)) (at start (step_done_34)) (at start (step_done_73)))
    :effect (and (at start (not (step_pending_17))) (at end (step_done_17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending_18)) (at start (step_done_13)))
    :effect (and (at start (not (step_pending_18))) (at end (step_done_18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_19)) (at start (step_done_1)) (at start (step_done_12)) (at start (step_done_56)) (at start (step_done_68)) (at start (step_done_76)))
    :effect (and (at start (not (step_pending_19))) (at end (step_done_19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_20)) (at start (step_done_15)) (at start (step_done_72)) (at start (step_done_76)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_20))) (at end (step_done_20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_21)) (at start (step_done_8)) (at start (step_done_35)) (at start (step_done_38)) (at start (step_done_49)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending_21))) (at end (step_done_21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_22)) (at start (step_done_77)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_22))) (at end (step_done_22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_23)) (at start (step_done_28)) (at start (step_done_37)) (at start (step_done_40)))
    :effect (and (at start (not (step_pending_23))) (at end (step_done_23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_24)) (at start (step_done_1)))
    :effect (and (at start (not (step_pending_24))) (at end (step_done_24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 864000)
    :condition (at start (step_pending_25))
    :effect (and (at start (not (step_pending_25))) (at end (step_done_25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending_26)) (at start (step_done_56)))
    :effect (and (at start (not (step_pending_26))) (at end (step_done_26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending_27)) (at start (step_done_14)) (at start (step_done_48)) (at start (step_done_75)))
    :effect (and (at start (not (step_pending_27))) (at end (step_done_27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_28)) (at start (step_done_18)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_28))) (at end (step_done_28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending_29)) (at start (step_done_4)))
    :effect (and (at start (not (step_pending_29))) (at end (step_done_29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_30)) (at start (step_done_41)))
    :effect (and (at start (not (step_pending_30))) (at end (step_done_30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 345600)
    :condition (at start (step_pending_31))
    :effect (and (at start (not (step_pending_31))) (at end (step_done_31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_32)) (at start (step_done_41)) (at start (step_done_58)) (at start (step_done_66)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_32))) (at end (step_done_32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_33)) (at start (step_done_11)) (at start (step_done_80)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_33))) (at end (step_done_33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending_34)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending_34))) (at end (step_done_34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_35)) (at start (step_done_29)) (at start (step_done_62)) (at start (step_done_78)))
    :effect (and (at start (not (step_pending_35))) (at end (step_done_35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending_36)) (at start (step_done_19)) (at start (step_done_34)) (at start (step_done_62)) (at start (step_done_74)))
    :effect (and (at start (not (step_pending_36))) (at end (step_done_36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 86400)
    :condition (at start (step_pending_37))
    :effect (and (at start (not (step_pending_37))) (at end (step_done_37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_38)) (at start (step_done_75)) (at start (step_done_80)))
    :effect (and (at start (not (step_pending_38))) (at end (step_done_38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending_39)) (at start (step_done_5)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending_39))) (at end (step_done_39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_40)) (at start (step_done_58)) (at start (step_done_69)))
    :effect (and (at start (not (step_pending_40))) (at end (step_done_40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_41)) (at start (step_done_58)))
    :effect (and (at start (not (step_pending_41))) (at end (step_done_41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending_42)) (at start (step_done_1)) (at start (step_done_24)))
    :effect (and (at start (not (step_pending_42))) (at end (step_done_42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending_43)) (at start (step_done_46)) (at start (step_done_53)) (at start (step_done_57)) (at start (step_done_59)) (at start (step_done_78)) (at start (step_done_79)))
    :effect (and (at start (not (step_pending_43))) (at end (step_done_43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_44)) (at start (step_done_4)) (at start (step_done_83)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_44))) (at end (step_done_44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_45)) (at start (step_done_6)) (at start (step_done_30)) (at start (step_done_31)) (at start (step_done_72)))
    :effect (and (at start (not (step_pending_45))) (at end (step_done_45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending_46)) (at start (step_done_1)) (at start (step_done_31)) (at start (step_done_33)) (at start (step_done_40)) (at start (step_done_79)) (at start (step_done_90)))
    :effect (and (at start (not (step_pending_46))) (at end (step_done_46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_47)) (at start (step_done_68)) (at start (step_done_78)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_47))) (at end (step_done_47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_48)) (at start (step_done_6)) (at start (step_done_37)) (at start (step_done_57)) (at start (step_done_79)))
    :effect (and (at start (not (step_pending_48))) (at end (step_done_48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_49)) (at start (step_done_37)))
    :effect (and (at start (not (step_pending_49))) (at end (step_done_49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_50)) (at start (step_done_12)) (at start (step_done_42)) (at start (step_done_56)) (at start (step_done_66)) (at start (step_done_78)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending_50))) (at end (step_done_50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_51)) (at start (step_done_31)) (at start (step_done_37)) (at start (step_done_54)) (at start (step_done_63)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_51))) (at end (step_done_51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_52)) (at start (step_done_11)) (at start (step_done_16)) (at start (step_done_61)) (at start (step_done_74)))
    :effect (and (at start (not (step_pending_52))) (at end (step_done_52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 2592000)
    :condition (at start (step_pending_53))
    :effect (and (at start (not (step_pending_53))) (at end (step_done_53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending_54)) (at start (step_done_4)) (at start (step_done_32)))
    :effect (and (at start (not (step_pending_54))) (at end (step_done_54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_55)) (at start (step_done_24)) (at start (step_done_73)) (at start (step_done_86)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending_55))) (at end (step_done_55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 604800)
    :condition (at start (step_pending_56))
    :effect (and (at start (not (step_pending_56))) (at end (step_done_56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_57)) (at start (step_done_13)) (at start (step_done_66)) (at start (step_done_83)))
    :effect (and (at start (not (step_pending_57))) (at end (step_done_57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 604800)
    :condition (at start (step_pending_58))
    :effect (and (at start (not (step_pending_58))) (at end (step_done_58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_59)) (at start (step_done_1)) (at start (step_done_9)) (at start (step_done_14)) (at start (step_done_23)) (at start (step_done_70)) (at start (step_done_71)) (at start (step_done_83)))
    :effect (and (at start (not (step_pending_59))) (at end (step_done_59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_60)) (at start (step_done_3)) (at start (step_done_37)) (at start (step_done_70)) (at start (step_done_73)))
    :effect (and (at start (not (step_pending_60))) (at end (step_done_60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_61)) (at start (step_done_28)) (at start (step_done_36)) (at start (step_done_41)) (at start (step_done_54)) (at start (step_done_79)))
    :effect (and (at start (not (step_pending_61))) (at end (step_done_61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending_62)) (at start (step_done_17)))
    :effect (and (at start (not (step_pending_62))) (at end (step_done_62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_63)) (at start (step_done_4)) (at start (step_done_8)) (at start (step_done_38)) (at start (step_done_58)))
    :effect (and (at start (not (step_pending_63))) (at end (step_done_63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_64)) (at start (step_done_28)) (at start (step_done_40)) (at start (step_done_55)))
    :effect (and (at start (not (step_pending_64))) (at end (step_done_64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_65)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending_65))) (at end (step_done_65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 604800)
    :condition (at start (step_pending_66))
    :effect (and (at start (not (step_pending_66))) (at end (step_done_66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_67)) (at start (step_done_63)) (at start (step_done_68)))
    :effect (and (at start (not (step_pending_67))) (at end (step_done_67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_68)) (at start (step_done_24)) (at start (step_done_31)) (at start (step_done_33)) (at start (step_done_66)) (at start (step_done_69)))
    :effect (and (at start (not (step_pending_68))) (at end (step_done_68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 864000)
    :condition (at start (step_pending_69))
    :effect (and (at start (not (step_pending_69))) (at end (step_done_69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending_70)) (at start (step_done_12)))
    :effect (and (at start (not (step_pending_70))) (at end (step_done_70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending_71)) (at start (step_done_12)) (at start (step_done_88)))
    :effect (and (at start (not (step_pending_71))) (at end (step_done_71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 604800)
    :condition (at start (step_pending_72))
    :effect (and (at start (not (step_pending_72))) (at end (step_done_72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 900)
    :condition (at start (step_pending_73))
    :effect (and (at start (not (step_pending_73))) (at end (step_done_73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_74)) (at start (step_done_69)))
    :effect (and (at start (not (step_pending_74))) (at end (step_done_74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_75)) (at start (step_done_74)))
    :effect (and (at start (not (step_pending_75))) (at end (step_done_75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending_76)) (at start (step_done_6)) (at start (step_done_67)))
    :effect (and (at start (not (step_pending_76))) (at end (step_done_76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_77)) (at start (step_done_29)) (at start (step_done_69)))
    :effect (and (at start (not (step_pending_77))) (at end (step_done_77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 172800)
    :condition (at start (step_pending_78))
    :effect (and (at start (not (step_pending_78))) (at end (step_done_78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending_79)) (at start (step_done_29)) (at start (step_done_33)) (at start (step_done_41)))
    :effect (and (at start (not (step_pending_79))) (at end (step_done_79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 172800)
    :condition (at start (step_pending_80))
    :effect (and (at start (not (step_pending_80))) (at end (step_done_80)))
  )

  (:durative-action do_step81
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_81)) (at start (step_done_12)) (at start (step_done_13)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending_81))) (at end (step_done_81)))
  )

  (:durative-action do_step82
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending_82)) (at start (step_done_8)) (at start (step_done_24)) (at start (step_done_38)) (at start (step_done_40)) (at start (step_done_44)))
    :effect (and (at start (not (step_pending_82))) (at end (step_done_82)))
  )

  (:durative-action do_step83
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending_83)) (at start (step_done_12)) (at start (step_done_29)))
    :effect (and (at start (not (step_pending_83))) (at end (step_done_83)))
  )

  (:durative-action do_step84
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_84)) (at start (step_done_15)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending_84))) (at end (step_done_84)))
  )

  (:durative-action do_step85
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_85)) (at start (step_done_29)) (at start (step_done_57)) (at start (step_done_76)))
    :effect (and (at start (not (step_pending_85))) (at end (step_done_85)))
  )

  (:durative-action do_step86
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending_86)) (at start (step_done_4)) (at start (step_done_9)) (at start (step_done_36)) (at start (step_done_60)))
    :effect (and (at start (not (step_pending_86))) (at end (step_done_86)))
  )

  (:durative-action do_step87
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending_87)) (at start (step_done_10)) (at start (step_done_34)) (at start (step_done_88)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending_87))) (at end (step_done_87)))
  )

  (:durative-action do_step88
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending_88)) (at start (step_done_26)) (at start (step_done_75)))
    :effect (and (at start (not (step_pending_88))) (at end (step_done_88)))
  )

  (:durative-action do_step89
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending_89)) (at start (step_done_38)))
    :effect (and (at start (not (step_pending_89))) (at end (step_done_89)))
  )

  (:durative-action do_step90
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending_90)) (at start (step_done_13)) (at start (step_done_68)))
    :effect (and (at start (not (step_pending_90))) (at end (step_done_90)) (at end (money_obtained)))
  )
)
