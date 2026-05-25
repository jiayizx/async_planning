(define (domain sponge_rollers)
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
    (done_71) (done_72) (done_73) (done_74) (done_75) (done_76) (done_77) (done_78) (done_79) (done_80))
  (:durative-action step_1
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_1))))
  (:durative-action step_2
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_2))))
  (:durative-action step_3
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_34)) (at start (done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_3))))
  (:durative-action step_4
    :parameters (?s - step)
    :duration 15
    :condition (and (at start (step_pending ?s)) (at start (done_19)) (at start (done_25)) (at start (done_26)) (at start (done_49)) (at start (done_64)) (at start (done_67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_4))))
  (:durative-action step_5
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_5))))
  (:durative-action step_6
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_6))))
  (:durative-action step_7
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_5)) (at start (done_11)) (at start (done_55)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_7))))
  (:durative-action step_8
    :parameters (?s - step)
    :duration 45
    :condition (and (at start (step_pending ?s)) (at start (done_20)) (at start (done_26)) (at start (done_51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_8))))
  (:durative-action step_9
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_26)) (at start (done_36)) (at start (done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_9))))
  (:durative-action step_10
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_14)) (at start (done_17)) (at start (done_20)) (at start (done_25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_10))))
  (:durative-action step_11
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_11))))
  (:durative-action step_12
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_26)) (at start (done_45)) (at start (done_47)) (at start (done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_12))))
  (:durative-action step_13
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (done_16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_13))))
  (:durative-action step_14
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_14))))
  (:durative-action step_15
    :parameters (?s - step)
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (done_34)) (at start (done_41)) (at start (done_58)) (at start (done_63)) (at start (done_69)) (at start (done_70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_15))))
  (:durative-action step_16
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_16))))
  (:durative-action step_17
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done_45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_17))))
  (:durative-action step_18
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_18))))
  (:durative-action step_19
    :parameters (?s - step)
    :duration 45
    :condition (and (at start (step_pending ?s)) (at start (done_30)) (at start (done_43)) (at start (done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_19))))
  (:durative-action step_20
    :parameters (?s - step)
    :duration 480
    :condition (and (at start (step_pending ?s)) (at start (done_45)) (at start (done_63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_20))))
  (:durative-action step_21
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_21))))
  (:durative-action step_22
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_17)) (at start (done_41)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_22))))
  (:durative-action step_23
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_7)) (at start (done_17)) (at start (done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_23))))
  (:durative-action step_24
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_61)) (at start (done_62)) (at start (done_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_24))))
  (:durative-action step_25
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_25))))
  (:durative-action step_26
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_3)) (at start (done_20)) (at start (done_38)) (at start (done_50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_26))))
  (:durative-action step_27
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_27))))
  (:durative-action step_28
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_28))))
  (:durative-action step_29
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (done_17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_29))))
  (:durative-action step_30
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done_12)) (at start (done_13)) (at start (done_24)) (at start (done_28)) (at start (done_68)) (at start (done_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_30))))
  (:durative-action step_31
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_31))))
  (:durative-action step_32
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_12)) (at start (done_33)) (at start (done_44)) (at start (done_60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_32))))
  (:durative-action step_33
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done_16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_33))))
  (:durative-action step_34
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_34))))
  (:durative-action step_35
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_2)) (at start (done_20)) (at start (done_48)) (at start (done_56)) (at start (done_79)) (at start (done_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_35))))
  (:durative-action step_36
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_12)) (at start (done_40)) (at start (done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_36))))
  (:durative-action step_37
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_17)) (at start (done_66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_37))))
  (:durative-action step_38
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_38))))
  (:durative-action step_39
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_39))))
  (:durative-action step_40
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_40))))
  (:durative-action step_41
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_41))))
  (:durative-action step_42
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_19)) (at start (done_24)) (at start (done_47)) (at start (done_76)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_42))))
  (:durative-action step_43
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_43))))
  (:durative-action step_44
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_16)) (at start (done_27)) (at start (done_33)) (at start (done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_44))))
  (:durative-action step_45
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_45))))
  (:durative-action step_46
    :parameters (?s - step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (done_6)) (at start (done_11)) (at start (done_25)) (at start (done_44)) (at start (done_62)) (at start (done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_46))))
  (:durative-action step_47
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_47))))
  (:durative-action step_48
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_36)) (at start (done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_48))))
  (:durative-action step_49
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_49))))
  (:durative-action step_50
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_33)) (at start (done_63)) (at start (done_70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_50))))
  (:durative-action step_51
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (done_9)) (at start (done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_51))))
  (:durative-action step_52
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_24)) (at start (done_37)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_52))))
  (:durative-action step_53
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_53))))
  (:durative-action step_54
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_54))))
  (:durative-action step_55
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_9)) (at start (done_31)) (at start (done_39)) (at start (done_51)) (at start (done_74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_55))))
  (:durative-action step_56
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_12)) (at start (done_49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_56))))
  (:durative-action step_57
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_43)) (at start (done_45)) (at start (done_68)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_57))))
  (:durative-action step_58
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_58))))
  (:durative-action step_59
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (done_9)) (at start (done_30)) (at start (done_32)) (at start (done_46)) (at start (done_73)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_59))))
  (:durative-action step_60
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_2)) (at start (done_12)) (at start (done_40)) (at start (done_63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_60))))
  (:durative-action step_61
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_3)) (at start (done_32)) (at start (done_37)) (at start (done_62)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_61))))
  (:durative-action step_62
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_62))))
  (:durative-action step_63
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_63))))
  (:durative-action step_64
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (done_13)) (at start (done_26)) (at start (done_65)) (at start (done_76)) (at start (done_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_64))))
  (:durative-action step_65
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_53)) (at start (done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_65))))
  (:durative-action step_66
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_66))))
  (:durative-action step_67
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_67))))
  (:durative-action step_68
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_68))))
  (:durative-action step_69
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done_17)) (at start (done_36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_69))))
  (:durative-action step_70
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done_45)) (at start (done_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_70))))
  (:durative-action step_71
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_1)) (at start (done_7)) (at start (done_13)) (at start (done_18)) (at start (done_35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_71))))
  (:durative-action step_72
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_5)) (at start (done_19)) (at start (done_20)) (at start (done_30)) (at start (done_32)) (at start (done_41)) (at start (done_80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_72))))
  (:durative-action step_73
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_1)) (at start (done_13)) (at start (done_16)) (at start (done_37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_73))))
  (:durative-action step_74
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_28)) (at start (done_58)) (at start (done_63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_74))))
  (:durative-action step_75
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_75))))
  (:durative-action step_76
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_76))))
  (:durative-action step_77
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done_9)) (at start (done_51)) (at start (done_75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_77))))
  (:durative-action step_78
    :parameters (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (done_27)) (at start (done_31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_78))))
  (:durative-action step_79
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done_38)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_79))))
  (:durative-action step_80
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done_9)) (at start (done_39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_80))))
)