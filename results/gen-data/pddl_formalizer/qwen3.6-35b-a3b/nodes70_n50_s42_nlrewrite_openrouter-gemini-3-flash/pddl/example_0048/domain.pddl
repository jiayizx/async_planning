(define (domain chipmunk_puppet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (semantic_1) (semantic_2) (semantic_3) (semantic_4) (semantic_5)
    (semantic_6) (semantic_7) (semantic_8) (semantic_9) (semantic_10)
    (semantic_11) (semantic_12) (semantic_13) (semantic_14) (semantic_15)
    (semantic_16) (semantic_17) (semantic_18) (semantic_19) (semantic_20)
    (semantic_21) (semantic_22) (semantic_23) (semantic_24) (semantic_25)
    (semantic_26) (semantic_27) (semantic_28) (semantic_29) (semantic_30)
    (semantic_31) (semantic_32) (semantic_33) (semantic_34) (semantic_35)
    (semantic_36) (semantic_37) (semantic_38) (semantic_39) (semantic_40)
    (semantic_41) (semantic_42) (semantic_43) (semantic_44) (semantic_45)
    (semantic_46) (semantic_47) (semantic_48) (semantic_49) (semantic_50)
    (semantic_51) (semantic_52) (semantic_53) (semantic_54) (semantic_55)
    (semantic_56) (semantic_57) (semantic_58) (semantic_59) (semantic_60)
    (semantic_61) (semantic_62) (semantic_63) (semantic_64) (semantic_65)
    (semantic_66) (semantic_67) (semantic_68) (semantic_69) (semantic_70))
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (semantic_55)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (semantic_1))))
  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (semantic_67)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (semantic_2))))
  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (semantic_2)) (at start (semantic_42)) (at start (semantic_45)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (semantic_3))))
  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (semantic_4))))
  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (semantic_54)) (at start (semantic_64)) (at start (semantic_66)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (semantic_5))))
  (:durative-action do_step6
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step6)) (at start (semantic_1)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (semantic_6))))
  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (semantic_7))))
  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (semantic_30)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (semantic_8))))
  (:durative-action do_step9
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (semantic_17)) (at start (semantic_66)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (semantic_9))))
  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (semantic_55)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (semantic_10))))
  (:durative-action do_step11
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step11)) (at start (semantic_16)) (at start (semantic_17)) (at start (semantic_19)) (at start (semantic_21)) (at start (semantic_56)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (semantic_11))))
  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (semantic_7)) (at start (semantic_54)) (at start (semantic_59)) (at start (semantic_70)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (semantic_12))))
  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (semantic_13))))
  (:durative-action do_step14
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (semantic_17)) (at start (semantic_22)) (at start (semantic_25)) (at start (semantic_56)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (semantic_14))))
  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (semantic_10)) (at start (semantic_43)) (at start (semantic_62)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (semantic_15))))
  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (semantic_18)) (at start (semantic_27)) (at start (semantic_33)) (at start (semantic_43)) (at start (semantic_70)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (semantic_16))))
  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (semantic_34)) (at start (semantic_49)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (semantic_17))))
  (:durative-action do_step18
    :duration (= ?duration 120)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (semantic_18))))
  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (semantic_16)) (at start (semantic_56)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (semantic_19))))
  (:durative-action do_step20
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step20)) (at start (semantic_52)) (at start (semantic_60)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (semantic_20))))
  (:durative-action do_step21
    :duration (= ?duration 60)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (semantic_21))))
  (:durative-action do_step22
    :duration (= ?duration 240)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (semantic_22))))
  (:durative-action do_step23
    :duration (= ?duration 300)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (semantic_23))))
  (:durative-action do_step24
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step24)) (at start (semantic_11)) (at start (semantic_25)) (at start (semantic_57)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (semantic_24))))
  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (semantic_1)) (at start (semantic_17)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (semantic_25))))
  (:durative-action do_step26
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (semantic_12)) (at start (semantic_17)) (at start (semantic_21)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (semantic_26))))
  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (semantic_55)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (semantic_27))))
  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (semantic_38)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (semantic_28))))
  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (semantic_29))))
  (:durative-action do_step30
    :duration (= ?duration 2400)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (semantic_30))))
  (:durative-action do_step31
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step31)) (at start (semantic_7)) (at start (semantic_39)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (semantic_31))))
  (:durative-action do_step32
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step32)) (at start (semantic_55)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (semantic_32))))
  (:durative-action do_step33
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step33)) (at start (semantic_41)) (at start (semantic_44)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (semantic_33))))
  (:durative-action do_step34
    :duration (= ?duration 1200)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (semantic_34))))
  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (semantic_1)) (at start (semantic_6)) (at start (semantic_16)) (at start (semantic_44)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (semantic_35))))
  (:durative-action do_step36
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step36)) (at start (semantic_8)) (at start (semantic_39)) (at start (semantic_57)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (semantic_36))))
  (:durative-action do_step37
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (semantic_20)) (at start (semantic_52)) (at start (semantic_61)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (semantic_37))))
  (:durative-action do_step38
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step38)) (at start (semantic_59)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (semantic_38))))
  (:durative-action do_step39
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step39)) (at start (semantic_13)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (semantic_39))))
  (:durative-action do_step40
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step40)) (at start (semantic_7)) (at start (semantic_8)) (at start (semantic_15)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (semantic_40))))
  (:durative-action do_step41
    :duration (= ?duration 60)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (semantic_41))))
  (:durative-action do_step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (semantic_33)) (at start (semantic_43)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (semantic_42))))
  (:durative-action do_step43
    :duration (= ?duration 180)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (semantic_43))))
  (:durative-action do_step44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (semantic_29)) (at start (semantic_34)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (semantic_44))))
  (:durative-action do_step45
    :duration (= ?duration 480)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (semantic_45))))
  (:durative-action do_step46
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step46)) (at start (semantic_15)) (at start (semantic_23)) (at start (semantic_43)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (semantic_46))))
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (semantic_10)) (at start (semantic_39)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (semantic_47))))
  (:durative-action do_step48
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step48)) (at start (semantic_56)) (at start (semantic_64)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (semantic_48))))
  (:durative-action do_step49
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step49)) (at start (semantic_13)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (semantic_49))))
  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step50)) (at start (semantic_5)) (at start (semantic_27)) (at start (semantic_29)) (at start (semantic_37)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (semantic_50))))
  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (semantic_4)) (at start (semantic_15)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (semantic_51))))
  (:durative-action do_step52
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step52)) (at start (semantic_6)) (at start (semantic_7)) (at start (semantic_32)) (at start (semantic_56)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (semantic_52))))
  (:durative-action do_step53
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step53)) (at start (semantic_29)) (at start (semantic_64)) (at start (semantic_68)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (semantic_53))))
  (:durative-action do_step54
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step54)) (at start (semantic_34)) (at start (semantic_45)) (at start (semantic_47)) (at start (semantic_60)) (at start (semantic_61)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (semantic_54))))
  (:durative-action do_step55
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step55)) (at start (semantic_60)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (semantic_55))))
  (:durative-action do_step56
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step56)) (at start (semantic_23)) (at start (semantic_59)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (semantic_56))))
  (:durative-action do_step57
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step57)) (at start (semantic_22)) (at start (semantic_60)) (at start (semantic_62)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (semantic_57))))
  (:durative-action do_step58
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step58)) (at start (semantic_3)) (at start (semantic_15)) (at start (semantic_39)) (at start (semantic_42)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (semantic_58))))
  (:durative-action do_step59
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step59)) (at start (semantic_30)) (at start (semantic_56)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (semantic_59))))
  (:durative-action do_step60
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step60)) (at start (semantic_8)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (semantic_60))))
  (:durative-action do_step61
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step61)) (at start (semantic_4)) (at start (semantic_41)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (semantic_61))))
  (:durative-action do_step62
    :duration (= ?duration 300)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (semantic_62))))
  (:durative-action do_step63
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step63)) (at start (semantic_13)) (at start (semantic_67)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (semantic_63))))
  (:durative-action do_step64
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step64)) (at start (semantic_2)) (at start (semantic_4)) (at start (semantic_18)) (at start (semantic_29)) (at start (semantic_63)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (semantic_64))))
  (:durative-action do_step65
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step65)) (at start (semantic_18)) (at start (semantic_21)) (at start (semantic_25)) (at start (semantic_39)) (at start (semantic_46)) (at start (semantic_57)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (semantic_65))))
  (:durative-action do_step66
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step66)) (at start (semantic_7)) (at start (semantic_67)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (semantic_66))))
  (:durative-action do_step67
    :duration (= ?duration 600)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (semantic_67))))
  (:durative-action do_step68
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step68)) (at start (semantic_1)) (at start (semantic_28)) (at start (semantic_66)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (semantic_68))))
  (:durative-action do_step69
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step69)) (at start (semantic_9)) (at start (semantic_30)) (at start (semantic_55)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (semantic_69))))
  (:durative-action do_step70
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step70)) (at start (semantic_10)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (semantic_70)))))
