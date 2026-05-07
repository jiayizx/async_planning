(define (domain springsteen_show)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending step)
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
    (step_done_86) (step_done_87) (step_done_88) (step_done_89) (step_done_90))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)) (at start (step_done_24)) (at start (step_done_30)) (at start (step_done_48)) (at start (step_done_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_1))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_2))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_3))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_18)) (at start (step_done_47)) (at start (step_done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_4))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_38)) (at start (step_done_54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_5))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_6))))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_7))))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_3)) (at start (step_done_4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_8))))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_31)) (at start (step_done_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_9))))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (step_done_18)) (at start (step_done_27)) (at start (step_done_36)) (at start (step_done_45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_10))))
  (:durative-action do_step11
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_3)) (at start (step_done_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_11))))
  (:durative-action do_step12
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_12))))
  (:durative-action do_step13
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_10)) (at start (step_done_28)) (at start (step_done_43)) (at start (step_done_54)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_13))))
  (:durative-action do_step14
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step_done_29)) (at start (step_done_71)) (at start (step_done_87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_14))))
  (:durative-action do_step15
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_26)) (at start (step_done_35)) (at start (step_done_57)) (at start (step_done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_15))))
  (:durative-action do_step16
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_39)) (at start (step_done_62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_16))))
  (:durative-action do_step17
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_6)) (at start (step_done_21)) (at start (step_done_23)) (at start (step_done_31)) (at start (step_done_36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_17))))
  (:durative-action do_step18
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_41)) (at start (step_done_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_18))))
  (:durative-action do_step19
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_19))))
  (:durative-action do_step20
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step_done_11)) (at start (step_done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_20))))
  (:durative-action do_step21
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_6)) (at start (step_done_39)) (at start (step_done_74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_21))))
  (:durative-action do_step22
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_22))))
  (:durative-action do_step23
    :parameters (?s - step)
    :duration 86400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_23))))
  (:durative-action do_step24
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step_done_19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_24))))
  (:durative-action do_step25
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_25))))
  (:durative-action do_step26
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step_done_28)) (at start (step_done_34)) (at start (step_done_82)) (at start (step_done_83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_26))))
  (:durative-action do_step27
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_27))))
  (:durative-action do_step28
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_17)) (at start (step_done_47)) (at start (step_done_68)) (at start (step_done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_28))))
  (:durative-action do_step29
    :parameters (?s - step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_29))))
  (:durative-action do_step30
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step_done_3)) (at start (step_done_19)) (at start (step_done_22)) (at start (step_done_65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_30))))
  (:durative-action do_step31
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_31))))
  (:durative-action do_step32
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_9)) (at start (step_done_58)) (at start (step_done_60)) (at start (step_done_80)) (at start (step_done_85)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_32))))
  (:durative-action do_step33
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_11)) (at start (step_done_16)) (at start (step_done_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_33))))
  (:durative-action do_step34
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_34))))
  (:durative-action do_step35
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_35))))
  (:durative-action do_step36
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_29)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_36))))
  (:durative-action do_step37
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_5)) (at start (step_done_12)) (at start (step_done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_37))))
  (:durative-action do_step38
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)) (at start (step_done_9)) (at start (step_done_35)) (at start (step_done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_38))))
  (:durative-action do_step39
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_39))))
  (:durative-action do_step40
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_40))))
  (:durative-action do_step41
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_53)) (at start (step_done_54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_41))))
  (:durative-action do_step42
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_6)) (at start (step_done_34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_42))))
  (:durative-action do_step43
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_6)) (at start (step_done_47)) (at start (step_done_74)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_43))))
  (:durative-action do_step44
    :parameters (?s - step)
    :duration 360
    :condition (and (at start (step_pending ?s)) (at start (step_done_55)) (at start (step_done_58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_44))))
  (:durative-action do_step45
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (step_done_21)) (at start (step_done_31)) (at start (step_done_34)) (at start (step_done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_45))))
  (:durative-action do_step46
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_9)) (at start (step_done_14)) (at start (step_done_22)) (at start (step_done_35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_46))))
  (:durative-action do_step47
    :parameters (?s - step)
    :duration 10
    :condition (and (at start (step_pending ?s)) (at start (step_done_11)) (at start (step_done_40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_47))))
  (:durative-action do_step48
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_48))))
  (:durative-action do_step49
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_33)) (at start (step_done_61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_49))))
  (:durative-action do_step50
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (step_done_36)) (at start (step_done_40)) (at start (step_done_45)) (at start (step_done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_50))))
  (:durative-action do_step51
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_31)) (at start (step_done_34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_51))))
  (:durative-action do_step52
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_6)) (at start (step_done_31)) (at start (step_done_47)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_52))))
  (:durative-action do_step53
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_17)) (at start (step_done_35)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_53))))
  (:durative-action do_step54
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step_done_34)) (at start (step_done_39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_54))))
  (:durative-action do_step55
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_7)) (at start (step_done_56)) (at start (step_done_64)) (at start (step_done_70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_55))))
  (:durative-action do_step56
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_5)) (at start (step_done_38)) (at start (step_done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_56))))
  (:durative-action do_step57
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_57))))
  (:durative-action do_step58
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_5)) (at start (step_done_18)) (at start (step_done_34)) (at start (step_done_37)) (at start (step_done_51)) (at start (step_done_67)) (at start (step_done_71)) (at start (step_done_74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_58))))
  (:durative-action do_step59
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (step_done_5)) (at start (step_done_21)) (at start (step_done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_59))))
  (:durative-action do_step60
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_24)) (at start (step_done_40)) (at start (step_done_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_60))))
  (:durative-action do_step61
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (step_done_21)) (at start (step_done_42)) (at start (step_done_87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_61))))
  (:durative-action do_step62
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_62))))
  (:durative-action do_step63
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step_done_19)) (at start (step_done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_63))))
  (:durative-action do_step64
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_9)) (at start (step_done_48)) (at start (step_done_72)) (at start (step_done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_64))))
  (:durative-action do_step65
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_45)) (at start (step_done_52)) (at start (step_done_68)) (at start (step_done_72)) (at start (step_done_83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_65))))
  (:durative-action do_step66
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_19)) (at start (step_done_34)) (at start (step_done_65)) (at start (step_done_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_66))))
  (:durative-action do_step67
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_10)) (at start (step_done_12)) (at start (step_done_35)) (at start (step_done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_67))))
  (:durative-action do_step68
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step_done_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_68))))
  (:durative-action do_step69
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_15)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_69))))
  (:durative-action do_step70
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)) (at start (step_done_6)) (at start (step_done_17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_70))))
  (:durative-action do_step71
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_71))))
  (:durative-action do_step72
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_72))))
  (:durative-action do_step73
    :parameters (?s - step)
    :duration 10
    :condition (and (at start (step_pending ?s)) (at start (step_done_16)) (at start (step_done_51)) (at start (step_done_64)) (at start (step_done_71)) (at start (step_done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_73))))
  (:durative-action do_step74
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_74))))
  (:durative-action do_step75
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_31)) (at start (step_done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_75))))
  (:durative-action do_step76
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_3)) (at start (step_done_50)) (at start (step_done_70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_76))))
  (:durative-action do_step77
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_47)) (at start (step_done_54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_77))))
  (:durative-action do_step78
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step_done_24)) (at start (step_done_40)) (at start (step_done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_78))))
  (:durative-action do_step79
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_32)) (at start (step_done_34)) (at start (step_done_38)) (at start (step_done_45)) (at start (step_done_51)) (at start (step_done_58)) (at start (step_done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_79))))
  (:durative-action do_step80
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_13)) (at start (step_done_45)) (at start (step_done_81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_80))))
  (:durative-action do_step81
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_81))))
  (:durative-action do_step82
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_82))))
  (:durative-action do_step83
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step_done_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_83))))
  (:durative-action do_step84
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step_done_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_84))))
  (:durative-action do_step85
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step_done_11)) (at start (step_done_16)) (at start (step_done_18)) (at start (step_done_26)) (at start (step_done_45)) (at start (step_done_82)) (at start (step_done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_85))))
  (:durative-action do_step86
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (step_done_29)) (at start (step_done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_86))))
  (:durative-action do_step87
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step_done_18)) (at start (step_done_51)) (at start (step_done_64)) (at start (step_done_77)) (at start (step_done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_87))))
  (:durative-action do_step88
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step_done_19)) (at start (step_done_25)) (at start (step_done_39)) (at start (step_done_62)) (at start (step_done_71)) (at start (step_done_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_88))))
  (:durative-action do_step89
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_89))))
  (:durative-action do_step90
    :parameters (?s - step)
    :duration 15
    :condition (and (at start (step_pending ?s)) (at start (step_done_36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done_90)))))