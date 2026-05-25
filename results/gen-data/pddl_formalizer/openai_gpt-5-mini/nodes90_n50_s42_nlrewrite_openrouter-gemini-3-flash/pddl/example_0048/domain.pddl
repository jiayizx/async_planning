(define (domain draw-cap)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_1) (done_2) (done_3) (done_4) (done_5) (done_6) (done_7) (done_8) (done_9) (done_10)
    (done_11) (done_12) (done_13) (done_14) (done_15) (done_16) (done_17) (done_18) (done_19) (done_20)
    (done_21) (done_22) (done_23) (done_24) (done_25) (done_26) (done_27) (done_28) (done_29) (done_30)
    (done_31) (done_32) (done_33) (done_34) (done_35) (done_36) (done_37) (done_38) (done_39) (done_40)
    (done_41) (done_42) (done_43) (done_44) (done_45) (done_46) (done_47) (done_48) (done_49) (done_50)
    (done_51) (done_52) (done_53) (done_54) (done_55) (done_56) (done_57) (done_58) (done_59) (done_60)
    (done_61) (done_62) (done_63) (done_64) (done_65) (done_66) (done_67) (done_68) (done_69) (done_70)
    (done_71) (done_72) (done_73) (done_74) (done_75) (done_76) (done_77) (done_78) (done_79) (done_80)
    (done_81) (done_82) (done_83) (done_84) (done_85) (done_86) (done_87) (done_88) (done_89) (done_90)
    (cap_drawn)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step1)) (at start (done_7)) (at start (done_69)) (at start (done_65)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (done_21)) (at start (done_67)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (done_30)) (at start (done_33)) (at start (done_62)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (done_29)) (at start (done_48)) (at start (done_54)) (at start (done_79)) (at start (done_87)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (done_2)) (at start (done_31)) (at start (done_77)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (done_19)) (at start (done_47)) (at start (done_61)) (at start (done_64)) (at start (done_68)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (done_9)) (at start (done_25)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (done_83)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (done_7)) (at start (done_12)) (at start (done_69)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (done_19)) (at start (done_42)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (done_65)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (done_15)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (done_2)) (at start (done_65)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (done_45)) (at start (done_47)) (at start (done_86)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)) (at start (done_27)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step17)) (at start (done_39)) (at start (done_48)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (done_73)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step19)) (at start (done_43)) (at start (done_84)) (at start (done_65)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step20)) (at start (done_3)) (at start (done_7)) (at start (done_8)) (at start (done_14)) (at start (done_24)) (at start (done_41)) (at start (done_62)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (done_84)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step22)) (at start (done_37)) (at start (done_44)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step23)) (at start (done_21)) (at start (done_75)) (at start (done_85)) (at start (done_84)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step24)) (at start (done_18)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (done_22)) (at start (done_76)) (at start (done_82)) (at start (done_88)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_26)) (at end (cap_drawn)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step28)) (at start (done_24)) (at start (done_56)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step29)) (at start (done_36)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_30)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (done_30)) (at start (done_84)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done_31)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step32)) (at start (done_12)) (at start (done_23)) (at start (done_45)) (at start (done_89)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done_32)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (done_9)) (at start (done_83)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done_33)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step34)) (at start (done_35)) (at start (done_43)) (at start (done_56)) (at start (done_65)) (at start (done_72)) (at start (done_85)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done_34)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step35)) (at start (done_41)) (at start (done_68)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done_35)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step36)) (at start (done_45)) (at start (done_55)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done_36)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step37)) (at start (done_8)) (at start (done_11)) (at start (done_25)) (at start (done_48)) (at start (done_56)) (at start (done_62)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done_37)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done_38)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step39)) (at start (done_12)) (at start (done_24)) (at start (done_25)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done_39)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (done_43)) (at start (done_61)) (at start (done_67)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done_40)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step41)) (at start (done_3)) (at start (done_67)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done_41)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (done_10)) (at start (done_18)) (at start (done_21)) (at start (done_25)) (at start (done_34)) (at start (done_75)) (at start (done_81)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done_42)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)) (at start (done_85)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done_43)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (done_27)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done_44)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step45)) (at start (done_73)) (at start (done_83)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done_45)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step46)) (at start (done_12)) (at start (done_44)) (at start (done_67)) (at start (done_73)) (at start (done_85)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done_46)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step47)) (at start (done_83)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done_47)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 540)
    :condition (and (at start (step_pending step48)) (at start (done_18)) (at start (done_83)) (at start (done_89)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done_48)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (done_15)) (at start (done_30)) (at start (done_37)) (at start (done_85)) (at start (done_90)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done_49)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step50)) (at start (done_1)) (at start (done_25)) (at start (done_48)) (at start (done_52)) (at start (done_64)) (at start (done_70)) (at start (done_77)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done_50)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step51)) (at start (done_4)) (at start (done_52)) (at start (done_89)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done_51)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step52)) (at start (done_77)) (at start (done_79)) (at start (done_65)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done_52)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (done_2)) (at start (done_69)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done_53)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step54)) (at start (done_12)) (at start (done_18)) (at start (done_66)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done_54)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step55)) (at start (done_83)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done_55)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step56)) (at start (done_84)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done_56)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step57)) (at start (done_19)) (at start (done_33)) (at start (done_55)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done_57)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step58)) (at start (done_14)) (at start (done_32)) (at start (done_54)) (at start (done_75)) (at start (done_65)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done_58)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step59)) (at start (done_10)) (at start (done_14)) (at start (done_31)) (at start (done_37)) (at start (done_40)) (at start (done_73)) (at start (done_90)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done_59)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step60)) (at start (done_14)) (at start (done_86)) (at start (done_19)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done_60)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step61)) (at start (done_9)) (at start (done_78)) (at start (done_62)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done_61)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step62)) (at start (done_65)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done_62)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step63)) (at start (done_14)) (at start (done_78)) (at start (done_84)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done_63)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step64)) (at start (done_9)) (at start (done_18)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done_64)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step65)) (at start (done_83)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done_65)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step66)) (at start (done_70)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done_66)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (done_43)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done_67)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step68)) (at start (done_3)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done_68)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step69)) (at start (done_23)) (at start (done_72)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done_69)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step70)) (at start (done_29)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done_70)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step71)) (at start (done_29)) (at start (done_30)) (at start (done_35)) (at start (done_72)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done_71)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step72)) (at start (done_8)) (at start (done_29)) (at start (done_30)) (at start (done_84)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done_72)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step73)) (at start (done_9)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done_73)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step74)) (at start (done_27)) (at start (done_69)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done_74)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done_75)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step76)) (at start (done_18)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done_76)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step77)) (at start (done_23)) (at start (done_37)) (at start (done_43)) (at start (done_68)) (at start (done_73)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done_77)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step78)) (at start (done_12)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done_78)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step79)) (at start (done_57)) (at start (done_83)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done_79)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step80)) (at start (done_56)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done_80)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step81)) (at start (done_68)) (at start (done_73)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done_81)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step82)) (at start (done_37)) (at start (done_73)) (at start (done_41)) (at start (done_85)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done_82)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step83))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done_83)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step84)) (at start (done_83)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done_84)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step85)) (at start (done_33)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done_85)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step86))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done_86)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step87)) (at start (done_7)) (at start (done_11)) (at start (done_16)) (at start (done_40)) (at start (done_68)) (at start (done_79)) (at start (done_85)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done_87)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step88)) (at start (done_4)) (at start (done_13)) (at start (done_89)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done_88)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step89)) (at start (done_2)) (at start (done_38)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done_89)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step90)) (at start (done_12)) (at start (done_73)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done_90)))
  )
)
