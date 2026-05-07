(define (domain cupcake_stand)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pred_1) (pred_2) (pred_3) (pred_4) (pred_5) (pred_6) (pred_7) (pred_8) (pred_9) (pred_10)
    (pred_11) (pred_12) (pred_13) (pred_14) (pred_15) (pred_16) (pred_17) (pred_18) (pred_19) (pred_20)
    (pred_21) (pred_22) (pred_23) (pred_24) (pred_25) (pred_26) (pred_27) (pred_28) (pred_29) (pred_30)
    (pred_31) (pred_32) (pred_33) (pred_34) (pred_35) (pred_36) (pred_37) (pred_38) (pred_39) (pred_40)
    (pred_41) (pred_42) (pred_43) (pred_44) (pred_45) (pred_46) (pred_47) (pred_48) (pred_49) (pred_50)
    (pred_51) (pred_52) (pred_53) (pred_54) (pred_55) (pred_56) (pred_57) (pred_58) (pred_59) (pred_60)
    (pred_61) (pred_62) (pred_63) (pred_64) (pred_65) (pred_66) (pred_67) (pred_68) (pred_69) (pred_70)
    (pred_71) (pred_72) (pred_73) (pred_74) (pred_75) (pred_76) (pred_77) (pred_78) (pred_79) (pred_80)
    (pred_81) (pred_82) (pred_83) (pred_84) (pred_85) (pred_86) (pred_87) (pred_88) (pred_89) (pred_90)
    (pred_91) (pred_92) (pred_93) (pred_94) (pred_95) (pred_96) (pred_97) (pred_98) (pred_99) (pred_100)))

  (:durative-action step_1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (pred_10)) (at start (pred_24)) (at start (pred_79)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (pred_1))))

  (:durative-action step_2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (pred_42)) (at start (pred_96)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (pred_2))))

  (:durative-action step_3
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (pred_3))))

  (:durative-action step_4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (pred_21)) (at start (pred_24)) (at start (pred_62)) (at start (pred_85)) (at start (pred_96)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (pred_4))))

  (:durative-action step_5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (pred_5))))

  (:durative-action step_6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (pred_10)) (at start (pred_37)) (at start (pred_57)) (at start (pred_65)) (at start (pred_95)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (pred_6))))

  (:durative-action step_7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (pred_6)) (at start (pred_49)) (at start (pred_64)) (at start (pred_74)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (pred_7))))

  (:durative-action step_8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (pred_8))))

  (:durative-action step_9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (pred_45)) (at start (pred_78)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (pred_9))))

  (:durative-action step_10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (pred_14)) (at start (pred_29)) (at start (pred_41)) (at start (pred_77)) (at start (pred_91)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (pred_10))))

  (:durative-action step_11
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (pred_11))))

  (:durative-action step_12
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (pred_12))))

  (:durative-action step_13
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step13)) (at start (pred_11)) (at start (pred_29)) (at start (pred_47)) (at start (pred_63)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (pred_13))))

  (:durative-action step_14
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (pred_91)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (pred_14))))

  (:durative-action step_15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (pred_20)) (at start (pred_64)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (pred_15))))

  (:durative-action step_16
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (pred_49)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (pred_16))))

  (:durative-action step_17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step17)) (at start (pred_2)) (at start (pred_42)) (at start (pred_45)) (at start (pred_46)) (at start (pred_62)) (at start (pred_76)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (pred_17))))

  (:durative-action step_18
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (pred_11)) (at start (pred_16)) (at start (pred_49)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (pred_18))))

  (:durative-action step_19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step19)) (at start (pred_83)) (at start (pred_89)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (pred_19))))

  (:durative-action step_20
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step20)) (at start (pred_11)) (at start (pred_19)) (at start (pred_28)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (pred_20))))

  (:durative-action step_21
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step21)) (at start (pred_17)) (at start (pred_46)) (at start (pred_47)) (at start (pred_49)) (at start (pred_94)) (at start (pred_95)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (pred_21))))

  (:durative-action step_22
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (pred_8)) (at start (pred_89)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (pred_22))))

  (:durative-action step_23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (pred_11)) (at start (pred_31)) (at start (pred_38)) (at start (pred_59)) (at start (pred_68)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (pred_23))))

  (:durative-action step_24
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (pred_10)) (at start (pred_19)) (at start (pred_70)) (at start (pred_91)) (at start (pred_99)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (pred_24))))

  (:durative-action step_25
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step25)) (at start (pred_16)) (at start (pred_40)) (at start (pred_63)) (at start (pred_70)) (at start (pred_79)) (at start (pred_89)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (pred_25))))

  (:durative-action step_26
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step26)) (at start (pred_16)) (at start (pred_22)) (at start (pred_35)) (at start (pred_87)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (pred_26))))

  (:durative-action step_27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (pred_35)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (pred_27))))

  (:durative-action step_28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (pred_28))))

  (:durative-action step_29
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (pred_18)) (at start (pred_19)) (at start (pred_77)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (pred_29))))

  (:durative-action step_30
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (pred_11)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (pred_30))))

  (:durative-action step_31
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (pred_24)) (at start (pred_78)) (at start (pred_83)) (at start (pred_96)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (pred_31))))

  (:durative-action step_32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (pred_47)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (pred_32))))

  (:durative-action step_33
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step33)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (pred_33))))

  (:durative-action step_34
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (pred_34))))

  (:durative-action step_35
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (pred_35))))

  (:durative-action step_36
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (pred_43)) (at start (pred_60)) (at start (pred_64)) (at start (pred_90)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (pred_36))))

  (:durative-action step_37
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (pred_37))))

  (:durative-action step_38
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step38)) (at start (pred_91)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (pred_38))))

  (:durative-action step_39
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step39)) (at start (pred_22)) (at start (pred_42)) (at start (pred_55)) (at start (pred_57)) (at start (pred_79)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (pred_39))))

  (:durative-action step_40
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (pred_2)) (at start (pred_31)) (at start (pred_47)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (pred_40))))

  (:durative-action step_41
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step41)) (at start (pred_28)) (at start (pred_56)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (pred_41))))

  (:durative-action step_42
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step42)) (at start (pred_69)) (at start (pred_90)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (pred_42))))

  (:durative-action step_43
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (pred_43))))

  (:durative-action step_44
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step44)) (at start (pred_3)) (at start (pred_6)) (at start (pred_39)) (at start (pred_68)) (at start (pred_89)) (at start (pred_96)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (pred_44))))

  (:durative-action step_45
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)) (at start (pred_52)) (at start (pred_56)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (pred_45))))

  (:durative-action step_46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (pred_15)) (at start (pred_99)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (pred_46))))

  (:durative-action step_47
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (pred_47))))

  (:durative-action step_48
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step48)) (at start (pred_42)) (at start (pred_77)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (pred_48))))

  (:durative-action step_49
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step49)) (at start (pred_90)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (pred_49))))

  (:durative-action step_50
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step50)) (at start (pred_14)) (at start (pred_15)) (at start (pred_20)) (at start (pred_28)) (at start (pred_38)) (at start (pred_96)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (pred_50))))

  (:durative-action step_51
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step51)) (at start (pred_13)) (at start (pred_18)) (at start (pred_55)) (at start (pred_68)) (at start (pred_91)) (at start (pred_98)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (pred_51))))

  (:durative-action step_52
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step52)) (at start (pred_56)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (pred_52))))

  (:durative-action step_53
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step53)) (at start (pred_11)) (at start (pred_56)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (pred_53))))

  (:durative-action step_54
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step54)) (at start (pred_17)) (at start (pred_34)) (at start (pred_44)) (at start (pred_55)) (at start (pred_65)) (at start (pred_90)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (pred_54))))

  (:durative-action step_55
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step55)) (at start (pred_43)) (at start (pred_70)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (pred_55))))

  (:durative-action step_56
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (pred_56))))

  (:durative-action step_57
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step57)) (at start (pred_61)) (at start (pred_67)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (pred_57))))

  (:durative-action step_58
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step58)) (at start (pred_19)) (at start (pred_93)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (pred_58))))

  (:durative-action step_59
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (pred_59))))

  (:durative-action step_60
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step60)) (at start (pred_5)) (at start (pred_28)) (at start (pred_48)) (at start (pred_86)) (at start (pred_90)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (pred_60))))

  (:durative-action step_61
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step61)) (at start (pred_20)) (at start (pred_37)) (at start (pred_64)) (at start (pred_83)) (at start (pred_89)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (pred_61))))

  (:durative-action step_62
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step62)) (at start (pred_19)) (at start (pred_49)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (pred_62))))

  (:durative-action step_63
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step63)) (at start (pred_27)) (at start (pred_47)) (at start (pred_97)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (pred_63))))

  (:durative-action step_64
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step64)) (at start (pred_11)) (at start (pred_47)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (pred_64))))

  (:durative-action step_65
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step65)) (at start (pred_19)) (at start (pred_70)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (pred_65))))

  (:durative-action step_66
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (pred_1)) (at start (pred_10)) (at start (pred_17)) (at start (pred_28)) (at start (pred_68)) (at start (pred_91)) (at start (pred_98)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (pred_66))))

  (:durative-action step_67
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (pred_90)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (pred_67))))

  (:durative-action step_68
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step68)) (at start (pred_13)) (at start (pred_64)) (at start (pred_95)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (pred_68))))

  (:durative-action step_69
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step69)) (at start (pred_86)) (at start (pred_97)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (pred_69))))

  (:durative-action step_70
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step70)) (at start (pred_47)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (pred_70))))

  (:durative-action step_71
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step71)) (at start (pred_5)) (at start (pred_14)) (at start (pred_45)) (at start (pred_46)) (at start (pred_64)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (pred_71))))

  (:durative-action step_72
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step72)) (at start (pred_24)) (at start (pred_71)) (at start (pred_79)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (pred_72))))

  (:durative-action step_73
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step73)) (at start (pred_3)) (at start (pred_33)) (at start (pred_46)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (pred_73))))

  (:durative-action step_74
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step74)) (at start (pred_14)) (at start (pred_40)) (at start (pred_46)) (at start (pred_49)) (at start (pred_60)) (at start (pred_95)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (pred_74))))

  (:durative-action step_75
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step75)) (at start (pred_47)) (at start (pred_49)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (pred_75))))

  (:durative-action step_76
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step76)) (at start (pred_35)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (pred_76))))

  (:durative-action step_77
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (pred_77))))

  (:durative-action step_78
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (pred_78))))

  (:durative-action step_79
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step79)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (pred_79))))

  (:durative-action step_80
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step80)) (at start (pred_8)) (at start (pred_42)) (at start (pred_45)) (at start (pred_48)) (at start (pred_57)) (at start (pred_58)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (pred_80))))

  (:durative-action step_81
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step81)) (at start (pred_42)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (pred_81))))

  (:durative-action step_82
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step82)) (at start (pred_3)) (at start (pred_50)) (at start (pred_63)) (at start (pred_91)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (pred_82))))

  (:durative-action step_83
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step83)) (at start (pred_56)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (pred_83))))

  (:durative-action step_84
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step84)) (at start (pred_35)) (at start (pred_75)) (at start (pred_89)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (pred_84))))

  (:durative-action step_85
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step85)) (at start (pred_19)) (at start (pred_41)) (at start (pred_61)) (at start (pred_86)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (pred_85))))

  (:durative-action step_86
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step86)) (at start (pred_56)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (pred_86))))

  (:durative-action step_87
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step87)) (at start (pred_42)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (pred_87))))

  (:durative-action step_88
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step88)) (at start (pred_5)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (pred_88))))

  (:durative-action step_89
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step89))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (pred_89))))

  (:durative-action step_90
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step90)) (at start (pred_92)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (pred_90))))

  (:durative-action step_91
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step91))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (pred_91))))

  (:durative-action step_92
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step92))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (pred_92))))

  (:durative-action step_93
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step93)) (at start (pred_1)) (at start (pred_14)) (at start (pred_37)) (at start (pred_52)) (at start (pred_63)) (at start (pred_86)) (at start (pred_99)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (pred_93))))

  (:durative-action step_94
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step94)) (at start (pred_43)) (at start (pred_69)) (at start (pred_95)) (at start (pred_99)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (pred_94))))

  (:durative-action step_95
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step95)) (at start (pred_11)) (at start (pred_59)) (at start (pred_69)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (pred_95))))

  (:durative-action step_96
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step96)) (at start (pred_9)) (at start (pred_20)) (at start (pred_29)) (at start (pred_33)) (at start (pred_41)) (at start (pred_61)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (pred_96))))

  (:durative-action step_97
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step97))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (pred_97))))

  (:durative-action step_98
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step98)) (at start (pred_12)) (at start (pred_27)) (at start (pred_39)) (at start (pred_69)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (pred_98))))

  (:durative-action step_99
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step99)) (at start (pred_41)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (pred_99))))

  (:durative-action step_100
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step100)) (at start (pred_66)) (at start (pred_79)) (at start (pred_85)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (pred_100))))
)