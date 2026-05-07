(define (domain cite_apa)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending)
    (step_done)
    (pred_1) (pred_2) (pred_3) (pred_4) (pred_5) (pred_6) (pred_7) (pred_8) (pred_9) (pred_10)
    (pred_11) (pred_12) (pred_13) (pred_14) (pred_15) (pred_16) (pred_17) (pred_18) (pred_19) (pred_20)
    (pred_21) (pred_22) (pred_23) (pred_24) (pred_25) (pred_26) (pred_27) (pred_28) (pred_29) (pred_30)
    (pred_31) (pred_32) (pred_33) (pred_34) (pred_35) (pred_36) (pred_37) (pred_38) (pred_39) (pred_40)
    (pred_41) (pred_42) (pred_43) (pred_44) (pred_45) (pred_46) (pred_47) (pred_48) (pred_49) (pred_50)
    (pred_51) (pred_52) (pred_53) (pred_54) (pred_55) (pred_56) (pred_57) (pred_58) (pred_59) (pred_60)
    (pred_61) (pred_62) (pred_63) (pred_64) (pred_65) (pred_66) (pred_67) (pred_68) (pred_69) (pred_70)
    (pred_71) (pred_72) (pred_73) (pred_74) (pred_75) (pred_76) (pred_77) (pred_78) (pred_79) (pred_80))
  (:durative-action do_step_1
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_1))))
  (:durative-action do_step_2
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_21)) (at start (pred_23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_2))))
  (:durative-action do_step_3
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_3))))
  (:durative-action do_step_4
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_4))))
  (:durative-action do_step_5
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_5))))
  (:durative-action do_step_6
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_1)) (at start (pred_32)) (at start (pred_51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_6))))
  (:durative-action do_step_7
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_28)) (at start (pred_67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_7))))
  (:durative-action do_step_8
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (pred_43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_8))))
  (:durative-action do_step_9
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_9))))
  (:durative-action do_step_10
    :parameters (?s - step)
    :duration 360
    :condition (and (at start (step_pending ?s)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_10))))
  (:durative-action do_step_11
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_11))))
  (:durative-action do_step_12
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (pred_19)) (at start (pred_43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_12))))
  (:durative-action do_step_13
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_3)) (at start (pred_45)) (at start (pred_46)) (at start (pred_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_13))))
  (:durative-action do_step_14
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_47)) (at start (pred_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_14))))
  (:durative-action do_step_15
    :parameters (?s - step)
    :duration 480
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_15))))
  (:durative-action do_step_16
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_22)) (at start (pred_40)) (at start (pred_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_16))))
  (:durative-action do_step_17
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_14)) (at start (pred_30)) (at start (pred_32)) (at start (pred_63)) (at start (pred_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_17))))
  (:durative-action do_step_18
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_18))))
  (:durative-action do_step_19
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_19))))
  (:durative-action do_step_20
    :parameters (?s - step)
    :duration 360
    :condition (and (at start (step_pending ?s)) (at start (pred_40)) (at start (pred_46)) (at start (pred_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_20))))
  (:durative-action do_step_21
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_21))))
  (:durative-action do_step_22
    :parameters (?s - step)
    :duration 420
    :condition (and (at start (step_pending ?s)) (at start (pred_11)) (at start (pred_23)) (at start (pred_37)) (at start (pred_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_22))))
  (:durative-action do_step_23
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_23))))
  (:durative-action do_step_24
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_8)) (at start (pred_23)) (at start (pred_29)) (at start (pred_40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_24))))
  (:durative-action do_step_25
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (pred_22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_25))))
  (:durative-action do_step_26
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_5)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_26))))
  (:durative-action do_step_27
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_27))))
  (:durative-action do_step_28
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_28))))
  (:durative-action do_step_29
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_29))))
  (:durative-action do_step_30
    :parameters (?s - step)
    :duration 240
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_30))))
  (:durative-action do_step_31
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_54)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_31))))
  (:durative-action do_step_32
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_12)) (at start (pred_24)) (at start (pred_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_32))))
  (:durative-action do_step_33
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_4)) (at start (pred_51)) (at start (pred_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_33))))
  (:durative-action do_step_34
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (pred_3)) (at start (pred_9)) (at start (pred_27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_34))))
  (:durative-action do_step_35
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (pred_1)) (at start (pred_4)) (at start (pred_20)) (at start (pred_30)) (at start (pred_67)) (at start (pred_68)) (at start (pred_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_35))))
  (:durative-action do_step_36
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_36))))
  (:durative-action do_step_37
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_37))))
  (:durative-action do_step_38
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_26)) (at start (pred_47)) (at start (pred_62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_38))))
  (:durative-action do_step_39
    :parameters (?s - step)
    :duration 720
    :condition (and (at start (step_pending ?s)) (at start (pred_7)) (at start (pred_16)) (at start (pred_19)) (at start (pred_30)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_39))))
  (:durative-action do_step_40
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_5)) (at start (pred_57)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_40))))
  (:durative-action do_step_41
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_4)) (at start (pred_44)) (at start (pred_48)) (at start (pred_69)) (at start (pred_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_41))))
  (:durative-action do_step_42
    :parameters (?s - step)
    :duration 480
    :condition (and (at start (step_pending ?s)) (at start (pred_40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_42))))
  (:durative-action do_step_43
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (pred_10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_43))))
  (:durative-action do_step_44
    :parameters (?s - step)
    :duration 360
    :condition (and (at start (step_pending ?s)) (at start (pred_5)) (at start (pred_7)) (at start (pred_13)) (at start (pred_33)) (at start (pred_57)) (at start (pred_58)) (at start (pred_70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_44))))
  (:durative-action do_step_45
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_38)) (at start (pred_54)) (at start (pred_70)) (at start (pred_73)) (at start (pred_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_45))))
  (:durative-action do_step_46
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_46))))
  (:durative-action do_step_47
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_47))))
  (:durative-action do_step_48
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_48))))
  (:durative-action do_step_49
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_49))))
  (:durative-action do_step_50
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_19)) (at start (pred_31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_50))))
  (:durative-action do_step_51
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (pred_16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_51))))
  (:durative-action do_step_52
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (pred_4)) (at start (pred_21)) (at start (pred_26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_52))))
  (:durative-action do_step_53
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_53))))
  (:durative-action do_step_54
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_46)) (at start (pred_73)) (at start (pred_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_54))))
  (:durative-action do_step_55
    :parameters (?s - step)
    :duration 360
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_55))))
  (:durative-action do_step_56
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_2)) (at start (pred_29)) (at start (pred_40)) (at start (pred_62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_56))))
  (:durative-action do_step_57
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_57))))
  (:durative-action do_step_58
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_58))))
  (:durative-action do_step_59
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_8)) (at start (pred_65)) (at start (pred_69)) (at start (pred_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_59))))
  (:durative-action do_step_60
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_18)) (at start (pred_53)) (at start (pred_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_60))))
  (:durative-action do_step_61
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_37)) (at start (pred_38)) (at start (pred_43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_61))))
  (:durative-action do_step_62
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (pred_2)) (at start (pred_15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_62))))
  (:durative-action do_step_63
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_1)) (at start (pred_6)) (at start (pred_50)) (at start (pred_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_63))))
  (:durative-action do_step_64
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_9)) (at start (pred_28)) (at start (pred_31)) (at start (pred_55)) (at start (pred_63)) (at start (pred_71)) (at start (pred_75)) (at start (pred_76)) (at start (pred_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_64))))
  (:durative-action do_step_65
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_65))))
  (:durative-action do_step_66
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_66))))
  (:durative-action do_step_67
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_19)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_67))))
  (:durative-action do_step_68
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_10)) (at start (pred_26)) (at start (pred_66)) (at start (pred_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_68))))
  (:durative-action do_step_69
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (pred_49)) (at start (pred_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_69))))
  (:durative-action do_step_70
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_15)) (at start (pred_22)) (at start (pred_72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_70))))
  (:durative-action do_step_71
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (pred_18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_71))))
  (:durative-action do_step_72
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_72))))
  (:durative-action do_step_73
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_73))))
  (:durative-action do_step_74
    :parameters (?s - step)
    :duration 480
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_74))))
  (:durative-action do_step_75
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_9)) (at start (pred_20)) (at start (pred_32)) (at start (pred_41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_75))))
  (:durative-action do_step_76
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_3)) (at start (pred_22)) (at start (pred_28)) (at start (pred_29)) (at start (pred_62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_76))))
  (:durative-action do_step_77
    :parameters (?s - step)
    :duration 240
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_77))))
  (:durative-action do_step_78
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (pred_24)) (at start (pred_66)) (at start (pred_74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_78))))
  (:durative-action do_step_79
    :parameters (?s - step)
    :duration 420
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_79))))
  (:durative-action do_step_80
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (pred_15)) (at start (pred_38)) (at start (pred_42)) (at start (pred_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pred_80))))
)