(define (domain beach_dress)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done) (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done) (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done) (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done) (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
    (step81_done) (step82_done) (step83_done) (step84_done) (step85_done) (step86_done) (step87_done) (step88_done) (step89_done) (step90_done))
  (:durative-action step_1
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_1)) (at start (step7_done)) (at start (step41_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step_1))) (at end (step_done step_1)) (at end (step1_done))))
  (:durative-action step_2
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_2)) (at start (step18_done)))
    :effect (and (at start (not (step_pending step_2))) (at end (step_done step_2)) (at end (step2_done))))
  (:durative-action step_3
    :parameters ()
    :duration 180
    :condition (at start (step_pending step_3))
    :effect (and (at start (not (step_pending step_3))) (at end (step_done step_3)) (at end (step3_done))))
  (:durative-action step_4
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_4))
    :effect (and (at start (not (step_pending step_4))) (at end (step_done step_4)) (at end (step4_done))))
  (:durative-action step_5
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step_5)) (at start (step4_done)) (at start (step31_done)) (at start (step35_done)) (at start (step36_done)) (at start (step49_done)))
    :effect (and (at start (not (step_pending step_5))) (at end (step_done step_5)) (at end (step5_done))))
  (:durative-action step_6
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_6)) (at start (step35_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_6))) (at end (step_done step_6)) (at end (step6_done))))
  (:durative-action step_7
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_7)) (at start (step65_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending step_7))) (at end (step_done step_7)) (at end (step7_done))))
  (:durative-action step_8
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_8)) (at start (step45_done)) (at start (step46_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step_8))) (at end (step_done step_8)) (at end (step8_done))))
  (:durative-action step_9
    :parameters ()
    :duration 45
    :condition (and (at start (step_pending step_9)) (at start (step7_done)) (at start (step24_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending step_9))) (at end (step_done step_9)) (at end (step9_done))))
  (:durative-action step_10
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_10)) (at start (step3_done)) (at start (step23_done)) (at start (step48_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending step_10))) (at end (step_done step_10)) (at end (step10_done))))
  (:durative-action step_11
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_11)) (at start (step23_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending step_11))) (at end (step_done step_11)) (at end (step11_done))))
  (:durative-action step_12
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_12)) (at start (step27_done)) (at start (step43_done)))
    :effect (and (at start (not (step_pending step_12))) (at end (step_done step_12)) (at end (step12_done))))
  (:durative-action step_13
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_13))
    :effect (and (at start (not (step_pending step_13))) (at end (step_done step_13)) (at end (step13_done))))
  (:durative-action step_14
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_14)) (at start (step33_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step_14))) (at end (step_done step_14)) (at end (step14_done))))
  (:durative-action step_15
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_15))
    :effect (and (at start (not (step_pending step_15))) (at end (step_done step_15)) (at end (step15_done))))
  (:durative-action step_16
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_16)) (at start (step42_done)))
    :effect (and (at start (not (step_pending step_16))) (at end (step_done step_16)) (at end (step16_done))))
  (:durative-action step_17
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_17)) (at start (step2_done)) (at start (step13_done)) (at start (step55_done)) (at start (step68_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending step_17))) (at end (step_done step_17)) (at end (step17_done))))
  (:durative-action step_18
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_18)) (at start (step22_done)) (at start (step29_done)) (at start (step53_done)) (at start (step56_done)) (at start (step81_done)))
    :effect (and (at start (not (step_pending step_18))) (at end (step_done step_18)) (at end (step18_done))))
  (:durative-action step_19
    :parameters ()
    :duration 45
    :condition (and (at start (step_pending step_19)) (at start (step22_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending step_19))) (at end (step_done step_19)) (at end (step19_done))))
  (:durative-action step_20
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_20)) (at start (step28_done)) (at start (step63_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending step_20))) (at end (step_done step_20)) (at end (step20_done))))
  (:durative-action step_21
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_21))
    :effect (and (at start (not (step_pending step_21))) (at end (step_done step_21)) (at end (step21_done))))
  (:durative-action step_22
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step_22)) (at start (step25_done)) (at start (step50_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_22))) (at end (step_done step_22)) (at end (step22_done))))
  (:durative-action step_23
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_23)) (at start (step15_done)) (at start (step31_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending step_23))) (at end (step_done step_23)) (at end (step23_done))))
  (:durative-action step_24
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step_24)) (at start (step25_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step_24))) (at end (step_done step_24)) (at end (step24_done))))
  (:durative-action step_25
    :parameters ()
    :duration 240
    :condition (and (at start (step_pending step_25)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step_25))) (at end (step_done step_25)) (at end (step25_done))))
  (:durative-action step_26
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_26)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step_26))) (at end (step_done step_26)) (at end (step26_done))))
  (:durative-action step_27
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_27)) (at start (step25_done)) (at start (step30_done)) (at start (step52_done)) (at start (step53_done)) (at start (step57_done)) (at start (step81_done)))
    :effect (and (at start (not (step_pending step_27))) (at end (step_done step_27)) (at end (step27_done))))
  (:durative-action step_28
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_28)) (at start (step48_done)))
    :effect (and (at start (not (step_pending step_28))) (at end (step_done step_28)) (at end (step28_done))))
  (:durative-action step_29
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_29)) (at start (step4_done)) (at start (step53_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending step_29))) (at end (step_done step_29)) (at end (step29_done))))
  (:durative-action step_30
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_30))
    :effect (and (at start (not (step_pending step_30))) (at end (step_done step_30)) (at end (step30_done))))
  (:durative-action step_31
    :parameters ()
    :duration 240
    :condition (and (at start (step_pending step_31)) (at start (step7_done)) (at start (step40_done)) (at start (step42_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending step_31))) (at end (step_done step_31)) (at end (step31_done))))
  (:durative-action step_32
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_32)) (at start (step28_done)) (at start (step30_done)) (at start (step40_done)) (at start (step54_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_32))) (at end (step_done step_32)) (at end (step32_done))))
  (:durative-action step_33
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_33)) (at start (step46_done)))
    :effect (and (at start (not (step_pending step_33))) (at end (step_done step_33)) (at end (step33_done))))
  (:durative-action step_34
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_34)) (at start (step43_done)) (at start (step52_done)) (at start (step57_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step_34))) (at end (step_done step_34)) (at end (step34_done))))
  (:durative-action step_35
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step_35)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step_35))) (at end (step_done step_35)) (at end (step35_done))))
  (:durative-action step_36
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_36)) (at start (step35_done)) (at start (step50_done)))
    :effect (and (at start (not (step_pending step_36))) (at end (step_done step_36)) (at end (step36_done))))
  (:durative-action step_37
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_37)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step_37))) (at end (step_done step_37)) (at end (step37_done))))
  (:durative-action step_38
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_38))
    :effect (and (at start (not (step_pending step_38))) (at end (step_done step_38)) (at end (step38_done))))
  (:durative-action step_39
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_39)) (at start (step33_done)) (at start (step44_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_39))) (at end (step_done step_39)) (at end (step39_done))))
  (:durative-action step_40
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_40))
    :effect (and (at start (not (step_pending step_40))) (at end (step_done step_40)) (at end (step40_done))))
  (:durative-action step_41
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step_41)) (at start (step16_done)) (at start (step25_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending step_41))) (at end (step_done step_41)) (at end (step41_done))))
  (:durative-action step_42
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_42))
    :effect (and (at start (not (step_pending step_42))) (at end (step_done step_42)) (at end (step42_done))))
  (:durative-action step_43
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step_43)) (at start (step22_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step_43))) (at end (step_done step_43)) (at end (step43_done))))
  (:durative-action step_44
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_44)) (at start (step40_done)) (at start (step59_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending step_44))) (at end (step_done step_44)) (at end (step44_done))))
  (:durative-action step_45
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_45)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step_45))) (at end (step_done step_45)) (at end (step45_done))))
  (:durative-action step_46
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_46)) (at start (step78_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_46))) (at end (step_done step_46)) (at end (step46_done))))
  (:durative-action step_47
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_47)) (at start (step6_done)) (at start (step22_done)) (at start (step64_done)) (at start (step65_done)) (at start (step67_done)) (at start (step83_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_47))) (at end (step_done step_47)) (at end (step47_done))))
  (:durative-action step_48
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step_48)) (at start (step15_done)) (at start (step22_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step_48))) (at end (step_done step_48)) (at end (step48_done))))
  (:durative-action step_49
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_49)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step_49))) (at end (step_done step_49)) (at end (step49_done))))
  (:durative-action step_50
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_50)) (at start (step46_done)))
    :effect (and (at start (not (step_pending step_50))) (at end (step_done step_50)) (at end (step50_done))))
  (:durative-action step_51
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_51)) (at start (step40_done)) (at start (step69_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending step_51))) (at end (step_done step_51)) (at end (step51_done))))
  (:durative-action step_52
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_52))
    :effect (and (at start (not (step_pending step_52))) (at end (step_done step_52)) (at end (step52_done))))
  (:durative-action step_53
    :parameters ()
    :duration 300
    :condition (at start (step_pending step_53))
    :effect (and (at start (not (step_pending step_53))) (at end (step_done step_53)) (at end (step53_done))))
  (:durative-action step_54
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_54))
    :effect (and (at start (not (step_pending step_54))) (at end (step_done step_54)) (at end (step54_done))))
  (:durative-action step_55
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_55)) (at start (step54_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending step_55))) (at end (step_done step_55)) (at end (step55_done))))
  (:durative-action step_56
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_56))
    :effect (and (at start (not (step_pending step_56))) (at end (step_done step_56)) (at end (step56_done))))
  (:durative-action step_57
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_57))
    :effect (and (at start (not (step_pending step_57))) (at end (step_done step_57)) (at end (step57_done))))
  (:durative-action step_58
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_58)) (at start (step30_done)) (at start (step31_done)) (at start (step37_done)) (at start (step41_done)) (at start (step42_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step_58))) (at end (step_done step_58)) (at end (step58_done))))
  (:durative-action step_59
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_59)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step_59))) (at end (step_done step_59)) (at end (step59_done))))
  (:durative-action step_60
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_60)) (at start (step18_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step_60))) (at end (step_done step_60)) (at end (step60_done))))
  (:durative-action step_61
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step_61)) (at start (step38_done)))
    :effect (and (at start (not (step_pending step_61))) (at end (step_done step_61)) (at end (step61_done))))
  (:durative-action step_62
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_62)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step_62))) (at end (step_done step_62)) (at end (step62_done))))
  (:durative-action step_63
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_63)) (at start (step3_done)) (at start (step24_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending step_63))) (at end (step_done step_63)) (at end (step63_done))))
  (:durative-action step_64
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_64)) (at start (step3_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step_64))) (at end (step_done step_64)) (at end (step64_done))))
  (:durative-action step_65
    :parameters ()
    :duration 300
    :condition (at start (step_pending step_65))
    :effect (and (at start (not (step_pending step_65))) (at end (step_done step_65)) (at end (step65_done))))
  (:durative-action step_66
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_66)) (at start (step21_done)))
    :effect (and (at start (not (step_pending step_66))) (at end (step_done step_66)) (at end (step66_done))))
  (:durative-action step_67
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step_67)) (at start (step46_done)) (at start (step79_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_67))) (at end (step_done step_67)) (at end (step67_done))))
  (:durative-action step_68
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_68)) (at start (step18_done)) (at start (step31_done)))
    :effect (and (at start (not (step_pending step_68))) (at end (step_done step_68)) (at end (step68_done))))
  (:durative-action step_69
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step_69)) (at start (step15_done)) (at start (step22_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step_69))) (at end (step_done step_69)) (at end (step69_done))))
  (:durative-action step_70
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_70)) (at start (step5_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending step_70))) (at end (step_done step_70)) (at end (step70_done))))
  (:durative-action step_71
    :parameters ()
    :duration 15
    :condition (and (at start (step_pending step_71)) (at start (step2_done)) (at start (step51_done)) (at start (step81_done)))
    :effect (and (at start (not (step_pending step_71))) (at end (step_done step_71)) (at end (step71_done))))
  (:durative-action step_72
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_72)) (at start (step42_done)))
    :effect (and (at start (not (step_pending step_72))) (at end (step_done step_72)) (at end (step72_done))))
  (:durative-action step_73
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_73)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step_73))) (at end (step_done step_73)) (at end (step73_done))))
  (:durative-action step_74
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_74)) (at start (step6_done)) (at start (step36_done)) (at start (step65_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending step_74))) (at end (step_done step_74)) (at end (step74_done))))
  (:durative-action step_75
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_75)) (at start (step22_done)) (at start (step64_done)) (at start (step72_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step_75))) (at end (step_done step_75)) (at end (step75_done))))
  (:durative-action step_76
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_76)) (at start (step18_done)) (at start (step56_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending step_76))) (at end (step_done step_76)) (at end (step76_done))))
  (:durative-action step_77
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_77)) (at start (step12_done)) (at start (step68_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending step_77))) (at end (step_done step_77)) (at end (step77_done))))
  (:durative-action step_78
    :parameters ()
    :duration 600
    :condition (at start (step_pending step_78))
    :effect (and (at start (not (step_pending step_78))) (at end (step_done step_78)) (at end (step78_done))))
  (:durative-action step_79
    :parameters ()
    :duration 180
    :condition (at start (step_pending step_79))
    :effect (and (at start (not (step_pending step_79))) (at end (step_done step_79)) (at end (step79_done))))
  (:durative-action step_80
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_80)) (at start (step29_done)) (at start (step31_done)) (at start (step52_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending step_80))) (at end (step_done step_80)) (at end (step80_done))))
  (:durative-action step_81
    :parameters ()
    :duration 60
    :condition (at start (step_pending step_81))
    :effect (and (at start (not (step_pending step_81))) (at end (step_done step_81)) (at end (step81_done))))
  (:durative-action step_82
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step_82)) (at start (step2_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending step_82))) (at end (step_done step_82)) (at end (step82_done))))
  (:durative-action step_83
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_83)) (at start (step16_done)) (at start (step28_done)) (at start (step30_done)) (at start (step52_done)) (at start (step66_done)) (at start (step81_done)) (at start (step82_done)))
    :effect (and (at start (not (step_pending step_83))) (at end (step_done step_83)) (at end (step83_done))))
  (:durative-action step_84
    :parameters ()
    :duration 120
    :condition (at start (step_pending step_84))
    :effect (and (at start (not (step_pending step_84))) (at end (step_done step_84)) (at end (step84_done))))
  (:durative-action step_85
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_85)) (at start (step25_done)) (at start (step49_done)) (at start (step54_done)) (at start (step58_done)) (at start (step81_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step_85))) (at end (step_done step_85)) (at end (step85_done))))
  (:durative-action step_86
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_86)) (at start (step9_done)) (at start (step34_done)) (at start (step44_done)) (at start (step89_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step_86))) (at end (step_done step_86)) (at end (step86_done))))
  (:durative-action step_87
    :parameters ()
    :duration 15
    :condition (and (at start (step_pending step_87)) (at start (step32_done)) (at start (step65_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending step_87))) (at end (step_done step_87)) (at end (step87_done))))
  (:durative-action step_88
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_88)) (at start (step34_done)) (at start (step42_done)) (at start (step49_done)) (at start (step56_done)) (at start (step62_done)) (at start (step65_done)) (at start (step67_done)) (at start (step73_done)))
    :effect (and (at start (not (step_pending step_88))) (at end (step_done step_88)) (at end (step88_done))))
  (:durative-action step_89
    :parameters ()
    :duration 15
    :condition (at start (step_pending step_89))
    :effect (and (at start (not (step_pending step_89))) (at end (step_done step_89)) (at end (step89_done))))
  (:durative-action step_90
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step_90)) (at start (step31_done)) (at start (step37_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step_90))) (at end (step_done step_90)) (at end (step90_done)))))