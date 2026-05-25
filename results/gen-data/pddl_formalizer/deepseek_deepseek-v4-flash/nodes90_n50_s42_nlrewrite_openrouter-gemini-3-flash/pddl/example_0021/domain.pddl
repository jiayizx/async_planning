(define (domain restrain_dog)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (semantic_done ?s - step)
  )
  (:durative-action do_step_1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (semantic_done step5)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (semantic_done step1)))
  )
  (:durative-action do_step_2
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (semantic_done step86)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (semantic_done step2)))
  )
  (:durative-action do_step_3
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (semantic_done step8)) (at start (semantic_done step29)) (at start (semantic_done step59)) (at start (semantic_done step68)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (semantic_done step3)))
  )
  (:durative-action do_step_4
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (semantic_done step72)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (semantic_done step4)))
  )
  (:durative-action do_step_5
    :duration (= ?duration 600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (semantic_done step5)))
  )
  (:durative-action do_step_6
    :duration (= ?duration 120)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (semantic_done step6)))
  )
  (:durative-action do_step_7
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (semantic_done step22)) (at start (semantic_done step25)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (semantic_done step7)))
  )
  (:durative-action do_step_8
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step8)) (at start (semantic_done step50)) (at start (semantic_done step77)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (semantic_done step8)))
  )
  (:durative-action do_step_9
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (semantic_done step7)) (at start (semantic_done step49)) (at start (semantic_done step56)) (at start (semantic_done step90)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (semantic_done step9)))
  )
  (:durative-action do_step_10
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step10)) (at start (semantic_done step4)) (at start (semantic_done step12)) (at start (semantic_done step79)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (semantic_done step10)))
  )
  (:durative-action do_step_11
    :duration (= ?duration 60)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (semantic_done step11)))
  )
  (:durative-action do_step_12
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step12)) (at start (semantic_done step52)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (semantic_done step12)))
  )
  (:durative-action do_step_13
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (semantic_done step8)) (at start (semantic_done step73)) (at start (semantic_done step74)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (semantic_done step13)))
  )
  (:durative-action do_step_14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (semantic_done step1)) (at start (semantic_done step15)) (at start (semantic_done step40)) (at start (semantic_done step44)) (at start (semantic_done step45)) (at start (semantic_done step46)) (at start (semantic_done step49)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (semantic_done step14)))
  )
  (:durative-action do_step_15
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step15)) (at start (semantic_done step21)) (at start (semantic_done step26)) (at start (semantic_done step32)) (at start (semantic_done step33)) (at start (semantic_done step88)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (semantic_done step15)))
  )
  (:durative-action do_step_16
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (semantic_done step11)) (at start (semantic_done step37)) (at start (semantic_done step43)) (at start (semantic_done step60)) (at start (semantic_done step69)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (semantic_done step16)))
  )
  (:durative-action do_step_17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (semantic_done step27)) (at start (semantic_done step38)) (at start (semantic_done step44)) (at start (semantic_done step57)) (at start (semantic_done step87)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (semantic_done step17)))
  )
  (:durative-action do_step_18
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step18)) (at start (semantic_done step40)) (at start (semantic_done step48)) (at start (semantic_done step60)) (at start (semantic_done step65)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (semantic_done step18)))
  )
  (:durative-action do_step_19
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (semantic_done step2)) (at start (semantic_done step9)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (semantic_done step19)))
  )
  (:durative-action do_step_20
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step20)) (at start (semantic_done step29)) (at start (semantic_done step60)) (at start (semantic_done step74)) (at start (semantic_done step76)) (at start (semantic_done step90)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (semantic_done step20)))
  )
  (:durative-action do_step_21
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step21)) (at start (semantic_done step12)) (at start (semantic_done step29)) (at start (semantic_done step43)) (at start (semantic_done step57)) (at start (semantic_done step79)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (semantic_done step21)))
  )
  (:durative-action do_step_22
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (semantic_done step4)) (at start (semantic_done step30)) (at start (semantic_done step33)) (at start (semantic_done step65)) (at start (semantic_done step80)) (at start (semantic_done step87)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (semantic_done step22)))
  )
  (:durative-action do_step_23
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step23)) (at start (semantic_done step1)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (semantic_done step23)))
  )
  (:durative-action do_step_24
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step24)) (at start (semantic_done step2)) (at start (semantic_done step63)) (at start (semantic_done step72)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (semantic_done step24)))
  )
  (:durative-action do_step_25
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step25)) (at start (semantic_done step56)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (semantic_done step25)))
  )
  (:durative-action do_step_26
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (semantic_done step62)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (semantic_done step26)))
  )
  (:durative-action do_step_27
    :duration (= ?duration 60)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (semantic_done step27)))
  )
  (:durative-action do_step_28
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step28)) (at start (semantic_done step16)) (at start (semantic_done step49)) (at start (semantic_done step55)) (at start (semantic_done step58)) (at start (semantic_done step71)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (semantic_done step28)))
  )
  (:durative-action do_step_29
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (semantic_done step74)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (semantic_done step29)))
  )
  (:durative-action do_step_30
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step30)) (at start (semantic_done step51)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (semantic_done step30)))
  )
  (:durative-action do_step_31
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step31)) (at start (semantic_done step10)) (at start (semantic_done step38)) (at start (semantic_done step46)) (at start (semantic_done step58)) (at start (semantic_done step86)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (semantic_done step31)))
  )
  (:durative-action do_step_32
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step32)) (at start (semantic_done step72)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (semantic_done step32)))
  )
  (:durative-action do_step_33
    :duration (= ?duration 120)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (semantic_done step33)))
  )
  (:durative-action do_step_34
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step34)) (at start (semantic_done step26)) (at start (semantic_done step88)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (semantic_done step34)))
  )
  (:durative-action do_step_35
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step35)) (at start (semantic_done step62)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (semantic_done step35)))
  )
  (:durative-action do_step_36
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step36)) (at start (semantic_done step5)) (at start (semantic_done step8)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (semantic_done step36)))
  )
  (:durative-action do_step_37
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (semantic_done step8)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (semantic_done step37)))
  )
  (:durative-action do_step_38
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step38)) (at start (semantic_done step49)) (at start (semantic_done step60)) (at start (semantic_done step82)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (semantic_done step38)))
  )
  (:durative-action do_step_39
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step39)) (at start (semantic_done step4)) (at start (semantic_done step13)) (at start (semantic_done step14)) (at start (semantic_done step24)) (at start (semantic_done step68)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (semantic_done step39)))
  )
  (:durative-action do_step_40
    :duration (= ?duration 60)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (semantic_done step40)))
  )
  (:durative-action do_step_41
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (semantic_done step12)) (at start (semantic_done step26)) (at start (semantic_done step33)) (at start (semantic_done step69)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (semantic_done step41)))
  )
  (:durative-action do_step_42
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step42)) (at start (semantic_done step80)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (semantic_done step42)))
  )
  (:durative-action do_step_43
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step43)) (at start (semantic_done step68)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (semantic_done step43)))
  )
  (:durative-action do_step_44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (semantic_done step25)) (at start (semantic_done step35)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (semantic_done step44)))
  )
  (:durative-action do_step_45
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step45)) (at start (semantic_done step11)) (at start (semantic_done step44)) (at start (semantic_done step69)) (at start (semantic_done step84)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (semantic_done step45)))
  )
  (:durative-action do_step_46
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step46)) (at start (semantic_done step55)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (semantic_done step46)))
  )
  (:durative-action do_step_47
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step47)) (at start (semantic_done step29)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (semantic_done step47)))
  )
  (:durative-action do_step_48
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (semantic_done step82)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (semantic_done step48)))
  )
  (:durative-action do_step_49
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step49)) (at start (semantic_done step4)) (at start (semantic_done step42)) (at start (semantic_done step89)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (semantic_done step49)))
  )
  (:durative-action do_step_50
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step50)) (at start (semantic_done step74)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (semantic_done step50)))
  )
  (:durative-action do_step_51
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step51)) (at start (semantic_done step12)) (at start (semantic_done step77)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (semantic_done step51)))
  )
  (:durative-action do_step_52
    :duration (= ?duration 300)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (semantic_done step52)))
  )
  (:durative-action do_step_53
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step53)) (at start (semantic_done step33)) (at start (semantic_done step61)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (semantic_done step53)))
  )
  (:durative-action do_step_54
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step54)) (at start (semantic_done step68)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (semantic_done step54)))
  )
  (:durative-action do_step_55
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step55)) (at start (semantic_done step63)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (semantic_done step55)))
  )
  (:durative-action do_step_56
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step56)) (at start (semantic_done step1)) (at start (semantic_done step23)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (semantic_done step56)))
  )
  (:durative-action do_step_57
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step57)) (at start (semantic_done step4)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (semantic_done step57)))
  )
  (:durative-action do_step_58
    :duration (= ?duration 120)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (semantic_done step58)))
  )
  (:durative-action do_step_59
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step59)) (at start (semantic_done step79)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (semantic_done step59)))
  )
  (:durative-action do_step_60
    :duration (= ?duration 60)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (semantic_done step60)))
  )
  (:durative-action do_step_61
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step61)) (at start (semantic_done step80)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (semantic_done step61)))
  )
  (:durative-action do_step_62
    :duration (= ?duration 300)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (semantic_done step62)))
  )
  (:durative-action do_step_63
    :duration (= ?duration 120)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (semantic_done step63)))
  )
  (:durative-action do_step_64
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step64)) (at start (semantic_done step68)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (semantic_done step64)))
  )
  (:durative-action do_step_65
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step65)) (at start (semantic_done step5)) (at start (semantic_done step12)) (at start (semantic_done step32)) (at start (semantic_done step88)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (semantic_done step65)))
  )
  (:durative-action do_step_66
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step66)) (at start (semantic_done step5)) (at start (semantic_done step47)) (at start (semantic_done step57)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (semantic_done step66)))
  )
  (:durative-action do_step_67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (semantic_done step62)) (at start (semantic_done step89)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (semantic_done step67)))
  )
  (:durative-action do_step_68
    :duration (= ?duration 30)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (semantic_done step68)))
  )
  (:durative-action do_step_69
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step69)) (at start (semantic_done step12)) (at start (semantic_done step49)) (at start (semantic_done step66)) (at start (semantic_done step82)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (semantic_done step69)))
  )
  (:durative-action do_step_70
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step70)) (at start (semantic_done step62)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (semantic_done step70)))
  )
  (:durative-action do_step_71
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step71)) (at start (semantic_done step42)) (at start (semantic_done step44)) (at start (semantic_done step46)) (at start (semantic_done step73)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (semantic_done step71)))
  )
  (:durative-action do_step_72
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step72)) (at start (semantic_done step33)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (semantic_done step72)))
  )
  (:durative-action do_step_73
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step73)) (at start (semantic_done step25)) (at start (semantic_done step70)) (at start (semantic_done step75)) (at start (semantic_done step90)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (semantic_done step73)))
  )
  (:durative-action do_step_74
    :duration (= ?duration 120)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (semantic_done step74)))
  )
  (:durative-action do_step_75
    :duration (= ?duration 120)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (semantic_done step75)))
  )
  (:durative-action do_step_76
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step76)) (at start (semantic_done step10)) (at start (semantic_done step23)) (at start (semantic_done step36)) (at start (semantic_done step52)) (at start (semantic_done step62)) (at start (semantic_done step72)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (semantic_done step76)))
  )
  (:durative-action do_step_77
    :duration (= ?duration 60)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (semantic_done step77)))
  )
  (:durative-action do_step_78
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step78)) (at start (semantic_done step9)) (at start (semantic_done step31)) (at start (semantic_done step50)) (at start (semantic_done step77)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (semantic_done step78)))
  )
  (:durative-action do_step_79
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step79)) (at start (semantic_done step12)) (at start (semantic_done step47)) (at start (semantic_done step80)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (semantic_done step79)))
  )
  (:durative-action do_step_80
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step80)) (at start (semantic_done step50)) (at start (semantic_done step52)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (semantic_done step80)))
  )
  (:durative-action do_step_81
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step81)) (at start (semantic_done step58)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (semantic_done step81)))
  )
  (:durative-action do_step_82
    :duration (= ?duration 180)
    :condition (at start (step_pending step82))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (semantic_done step82)))
  )
  (:durative-action do_step_83
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step83)) (at start (semantic_done step3)) (at start (semantic_done step22)) (at start (semantic_done step28)) (at start (semantic_done step50)) (at start (semantic_done step82)) (at start (semantic_done step87)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (semantic_done step83)))
  )
  (:durative-action do_step_84
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step84)) (at start (semantic_done step3)) (at start (semantic_done step9)) (at start (semantic_done step29)) (at start (semantic_done step60)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (semantic_done step84)))
  )
  (:durative-action do_step_85
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step85)) (at start (semantic_done step11)) (at start (semantic_done step24)) (at start (semantic_done step31)) (at start (semantic_done step36)) (at start (semantic_done step49)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (semantic_done step85)))
  )
  (:durative-action do_step_86
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step86)) (at start (semantic_done step8)) (at start (semantic_done step68)) (at start (semantic_done step72)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (semantic_done step86)))
  )
  (:durative-action do_step_87
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step87)) (at start (semantic_done step6)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (semantic_done step87)))
  )
  (:durative-action do_step_88
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step88)) (at start (semantic_done step2)) (at start (semantic_done step4)) (at start (semantic_done step26)) (at start (semantic_done step57)) (at start (semantic_done step66)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (semantic_done step88)))
  )
  (:durative-action do_step_89
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step89)) (at start (semantic_done step5)) (at start (semantic_done step23)) (at start (semantic_done step74)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (semantic_done step89)))
  )
  (:durative-action do_step_90
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step90)) (at start (semantic_done step52)) (at start (semantic_done step89)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (semantic_done step90)))
  )
)
