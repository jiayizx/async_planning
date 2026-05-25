(define (domain congrats-domain)
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
  )

  ;; Note: Each durative-action corresponds exactly to one step. Actions are written without
  ;; action parameters and refer to the step objects by name (these objects are declared in the problem).

  (:durative-action do_step1
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (done_2)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (done_1)) (at start (done_22)) (at start (done_3)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (done_55)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (done_48)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (done_20)) (at start (done_37)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (done_2)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (done_1)) (at start (done_26)) (at start (done_55)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (done_1)) (at start (done_42)) (at start (done_63)) (at start (done_64)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (done_32)) (at start (done_37)) (at start (done_39)) (at start (done_51)) (at start (done_59)) (at start (done_70)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (done_1)) (at start (done_24)) (at start (done_70)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (done_28)) (at start (done_66)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (done_9)) (at start (done_11)) (at start (done_65)) (at start (done_67)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (done_19)) (at start (done_37)) (at start (done_45)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (done_57)) (at start (done_66)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step17)) (at start (done_1)) (at start (done_21)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step18)) (at start (done_6)) (at start (done_33)) (at start (done_54)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (done_20)) (at start (done_39)) (at start (done_48)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (done_24)) (at start (done_37)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step22)) (at start (done_42)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step23)) (at start (done_43)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step25)) (at start (done_22)) (at start (done_56)) (at start (done_70)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (done_17)) (at start (done_21)) (at start (done_68)) (at start (done_4)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (done_39)) (at start (done_66)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (done_45)) (at start (done_17)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step30)) (at start (done_24)) (at start (done_41)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step31)) (at start (done_3)) (at start (done_36)) (at start (done_61)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done_31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step32)) (at start (done_21)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done_32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 3600)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done_33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step34)) (at start (done_16)) (at start (done_54)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done_34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step35)) (at start (done_57)) (at start (done_70)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done_35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (done_45)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done_36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 2700)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done_37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (done_5)) (at start (done_8)) (at start (done_26)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done_38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 3600)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done_39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (done_47)) (at start (done_50)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done_40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 1200)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done_41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (done_57)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done_42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step43)) (at start (done_69)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done_43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (done_22)) (at start (done_42)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done_44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done_45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step46)) (at start (done_21)) (at start (done_32)) (at start (done_35)) (at start (done_36)) (at start (done_38)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done_46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step47)) (at start (done_4)) (at start (done_25)) (at start (done_68)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done_47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step48)) (at start (done_16)) (at start (done_33)) (at start (done_38)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done_48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (done_16)) (at start (done_35)) (at start (done_37)) (at start (done_41)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done_49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 1800)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done_50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step51)) (at start (done_6)) (at start (done_34)) (at start (done_55)) (at start (done_59)) (at start (done_64)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done_51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step52)) (at start (done_21)) (at start (done_66)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done_52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (done_13)) (at start (done_18)) (at start (done_38)) (at start (done_49)) (at start (done_67)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done_53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step54)) (at start (done_21)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done_54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 900)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done_55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step56)) (at start (done_26)) (at start (done_39)) (at start (done_55)) (at start (done_4)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done_56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 600)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done_57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step58)) (at start (done_15)) (at start (done_16)) (at start (done_57)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done_58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step59)) (at start (done_16)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done_59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step60)) (at start (done_7)) (at start (done_45)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done_60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step61)) (at start (done_46)) (at start (done_51)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done_61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step62)) (at start (done_4)) (at start (done_41)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done_62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step63)) (at start (done_68)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done_63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step64)) (at start (done_22)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done_64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step65)) (at start (done_19)) (at start (done_51)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done_65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step66)) (at start (done_20)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done_66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step67)) (at start (done_3)) (at start (done_5)) (at start (done_40)) (at start (done_45)) (at start (done_59)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done_67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 900)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done_68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 1800)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done_69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step70)) (at start (done_29)) (at start (done_52)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done_70)))
  )
)
