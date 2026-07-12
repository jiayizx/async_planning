(define (domain cupcake-stand)
 (:requirements :durative-actions :typing)
 (:types step)
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
  (step_pending_91) (step_pending_92) (step_pending_93) (step_pending_94) (step_pending_95)
  (step_pending_96) (step_pending_97) (step_pending_98) (step_pending_99) (step_pending_100)
  (step_done ?s - step)
  (completed_1) (completed_2) (completed_3) (completed_4) (completed_5)
  (completed_6) (completed_7) (completed_8) (completed_9) (completed_10)
  (completed_11) (completed_12) (completed_13) (completed_14) (completed_15)
  (completed_16) (completed_17) (completed_18) (completed_19) (completed_20)
  (completed_21) (completed_22) (completed_23) (completed_24) (completed_25)
  (completed_26) (completed_27) (completed_28) (completed_29) (completed_30)
  (completed_31) (completed_32) (completed_33) (completed_34) (completed_35)
  (completed_36) (completed_37) (completed_38) (completed_39) (completed_40)
  (completed_41) (completed_42) (completed_43) (completed_44) (completed_45)
  (completed_46) (completed_47) (completed_48) (completed_49) (completed_50)
  (completed_51) (completed_52) (completed_53) (completed_54) (completed_55)
  (completed_56) (completed_57) (completed_58) (completed_59) (completed_60)
  (completed_61) (completed_62) (completed_63) (completed_64) (completed_65)
  (completed_66) (completed_67) (completed_68) (completed_69) (completed_70)
  (completed_71) (completed_72) (completed_73) (completed_74) (completed_75)
  (completed_76) (completed_77) (completed_78) (completed_79) (completed_80)
  (completed_81) (completed_82) (completed_83) (completed_84) (completed_85)
  (completed_86) (completed_87) (completed_88) (completed_89) (completed_90)
  (completed_91) (completed_92) (completed_93) (completed_94) (completed_95)
  (completed_96) (completed_97) (completed_98) (completed_99) (completed_100)
 )

 (:durative-action do_step_1
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending_1)) (at start (completed_10)) (at start (completed_24)) (at start (completed_79)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_1))) (at end (step_done ?s)) (at end (completed_1))))
 (:durative-action do_step_2
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_2)) (at start (completed_42)) (at start (completed_96)))
  :effect (and (at start (not (step_pending_2))) (at end (step_done ?s)) (at end (completed_2))))
 (:durative-action do_step_3
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (at start (step_pending_3))
  :effect (and (at start (not (step_pending_3))) (at end (step_done ?s)) (at end (completed_3))))
 (:durative-action do_step_4
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending_4)) (at start (completed_21)) (at start (completed_24)) (at start (completed_62)) (at start (completed_85)) (at start (completed_96)))
  :effect (and (at start (not (step_pending_4))) (at end (step_done ?s)) (at end (completed_4))))
 (:durative-action do_step_5
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (at start (step_pending_5))
  :effect (and (at start (not (step_pending_5))) (at end (step_done ?s)) (at end (completed_5))))
 (:durative-action do_step_6
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_6)) (at start (completed_10)) (at start (completed_37)) (at start (completed_57)) (at start (completed_65)) (at start (completed_95)))
  :effect (and (at start (not (step_pending_6))) (at end (step_done ?s)) (at end (completed_6))))
 (:durative-action do_step_7
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_7)) (at start (completed_6)) (at start (completed_49)) (at start (completed_64)) (at start (completed_74)))
  :effect (and (at start (not (step_pending_7))) (at end (step_done ?s)) (at end (completed_7))))
 (:durative-action do_step_8
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (at start (step_pending_8))
  :effect (and (at start (not (step_pending_8))) (at end (step_done ?s)) (at end (completed_8))))
 (:durative-action do_step_9
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_9)) (at start (completed_45)) (at start (completed_78)))
  :effect (and (at start (not (step_pending_9))) (at end (step_done ?s)) (at end (completed_9))))
 (:durative-action do_step_10
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_10)) (at start (completed_14)) (at start (completed_29)) (at start (completed_41)) (at start (completed_77)) (at start (completed_91)))
  :effect (and (at start (not (step_pending_10))) (at end (step_done ?s)) (at end (completed_10))))
 (:durative-action do_step_11
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (at start (step_pending_11))
  :effect (and (at start (not (step_pending_11))) (at end (step_done ?s)) (at end (completed_11))))
 (:durative-action do_step_12
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_12))
  :effect (and (at start (not (step_pending_12))) (at end (step_done ?s)) (at end (completed_12))))
 (:durative-action do_step_13
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (step_pending_13)) (at start (completed_11)) (at start (completed_29)) (at start (completed_47)) (at start (completed_57)) (at start (completed_63)))
  :effect (and (at start (not (step_pending_13))) (at end (step_done ?s)) (at end (completed_13))))
 (:durative-action do_step_14
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_14)) (at start (completed_91)))
  :effect (and (at start (not (step_pending_14))) (at end (step_done ?s)) (at end (completed_14))))
 (:durative-action do_step_15
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_15)) (at start (completed_20)) (at start (completed_64)))
  :effect (and (at start (not (step_pending_15))) (at end (step_done ?s)) (at end (completed_15))))
 (:durative-action do_step_16
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_16)) (at start (completed_49)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_16))) (at end (step_done ?s)) (at end (completed_16))))
 (:durative-action do_step_17
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_17)) (at start (completed_2)) (at start (completed_42)) (at start (completed_45)) (at start (completed_46)) (at start (completed_62)) (at start (completed_76)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_17))) (at end (step_done ?s)) (at end (completed_17))))
 (:durative-action do_step_18
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_18)) (at start (completed_11)) (at start (completed_16)) (at start (completed_49)))
  :effect (and (at start (not (step_pending_18))) (at end (step_done ?s)) (at end (completed_18))))
 (:durative-action do_step_19
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_19)) (at start (completed_83)) (at start (completed_89)))
  :effect (and (at start (not (step_pending_19))) (at end (step_done ?s)) (at end (completed_19))))
 (:durative-action do_step_20
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_20)) (at start (completed_11)) (at start (completed_19)) (at start (completed_28)))
  :effect (and (at start (not (step_pending_20))) (at end (step_done ?s)) (at end (completed_20))))
 (:durative-action do_step_21
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending_21)) (at start (completed_17)) (at start (completed_46)) (at start (completed_47)) (at start (completed_49)) (at start (completed_94)) (at start (completed_95)))
  :effect (and (at start (not (step_pending_21))) (at end (step_done ?s)) (at end (completed_21))))
 (:durative-action do_step_22
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_22)) (at start (completed_8)) (at start (completed_89)))
  :effect (and (at start (not (step_pending_22))) (at end (step_done ?s)) (at end (completed_22))))
 (:durative-action do_step_23
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending_23)) (at start (completed_11)) (at start (completed_31)) (at start (completed_38)) (at start (completed_59)) (at start (completed_68)))
  :effect (and (at start (not (step_pending_23))) (at end (step_done ?s)) (at end (completed_23))))
 (:durative-action do_step_24
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_24)) (at start (completed_10)) (at start (completed_19)) (at start (completed_70)) (at start (completed_91)) (at start (completed_99)))
  :effect (and (at start (not (step_pending_24))) (at end (step_done ?s)) (at end (completed_24))))
 (:durative-action do_step_25
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending_25)) (at start (completed_16)) (at start (completed_40)) (at start (completed_63)) (at start (completed_70)) (at start (completed_79)) (at start (completed_89)))
  :effect (and (at start (not (step_pending_25))) (at end (step_done ?s)) (at end (completed_25))))
 (:durative-action do_step_26
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_26)) (at start (completed_16)) (at start (completed_22)) (at start (completed_35)) (at start (completed_87)))
  :effect (and (at start (not (step_pending_26))) (at end (step_done ?s)) (at end (completed_26))))
 (:durative-action do_step_27
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_27)) (at start (completed_35)))
  :effect (and (at start (not (step_pending_27))) (at end (step_done ?s)) (at end (completed_27))))
 (:durative-action do_step_28
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (at start (step_pending_28))
  :effect (and (at start (not (step_pending_28))) (at end (step_done ?s)) (at end (completed_28))))
 (:durative-action do_step_29
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_29)) (at start (completed_18)) (at start (completed_19)) (at start (completed_77)))
  :effect (and (at start (not (step_pending_29))) (at end (step_done ?s)) (at end (completed_29))))
 (:durative-action do_step_30
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_30)) (at start (completed_11)))
  :effect (and (at start (not (step_pending_30))) (at end (step_done ?s)) (at end (completed_30))))
 (:durative-action do_step_31
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending_31)) (at start (completed_24)) (at start (completed_78)) (at start (completed_83)) (at start (completed_96)))
  :effect (and (at start (not (step_pending_31))) (at end (step_done ?s)) (at end (completed_31))))
 (:durative-action do_step_32
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_32)) (at start (completed_47)))
  :effect (and (at start (not (step_pending_32))) (at end (step_done ?s)) (at end (completed_32))))
 (:durative-action do_step_33
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_33)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_33))) (at end (step_done ?s)) (at end (completed_33))))
 (:durative-action do_step_34
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_34))
  :effect (and (at start (not (step_pending_34))) (at end (step_done ?s)) (at end (completed_34))))
 (:durative-action do_step_35
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_35))
  :effect (and (at start (not (step_pending_35))) (at end (step_done ?s)) (at end (completed_35))))
 (:durative-action do_step_36
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_36)) (at start (completed_43)) (at start (completed_60)) (at start (completed_64)) (at start (completed_90)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_36))) (at end (step_done ?s)) (at end (completed_36))))
 (:durative-action do_step_37
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_37))
  :effect (and (at start (not (step_pending_37))) (at end (step_done ?s)) (at end (completed_37))))
 (:durative-action do_step_38
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_38)) (at start (completed_91)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_38))) (at end (step_done ?s)) (at end (completed_38))))
 (:durative-action do_step_39
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending_39)) (at start (completed_22)) (at start (completed_42)) (at start (completed_55)) (at start (completed_57)) (at start (completed_79)))
  :effect (and (at start (not (step_pending_39))) (at end (step_done ?s)) (at end (completed_39))))
 (:durative-action do_step_40
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_40)) (at start (completed_2)) (at start (completed_31)) (at start (completed_47)))
  :effect (and (at start (not (step_pending_40))) (at end (step_done ?s)) (at end (completed_40))))
 (:durative-action do_step_41
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_41)) (at start (completed_28)) (at start (completed_56)))
  :effect (and (at start (not (step_pending_41))) (at end (step_done ?s)) (at end (completed_41))))
 (:durative-action do_step_42
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending_42)) (at start (completed_69)) (at start (completed_90)))
  :effect (and (at start (not (step_pending_42))) (at end (step_done ?s)) (at end (completed_42))))
 (:durative-action do_step_43
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (at start (step_pending_43))
  :effect (and (at start (not (step_pending_43))) (at end (step_done ?s)) (at end (completed_43))))
 (:durative-action do_step_44
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending_44)) (at start (completed_3)) (at start (completed_6)) (at start (completed_39)) (at start (completed_68)) (at start (completed_89)) (at start (completed_96)))
  :effect (and (at start (not (step_pending_44))) (at end (step_done ?s)) (at end (completed_44))))
 (:durative-action do_step_45
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_45)) (at start (completed_52)) (at start (completed_56)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_45))) (at end (step_done ?s)) (at end (completed_45))))
 (:durative-action do_step_46
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_46)) (at start (completed_15)) (at start (completed_99)))
  :effect (and (at start (not (step_pending_46))) (at end (step_done ?s)) (at end (completed_46))))
 (:durative-action do_step_47
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (at start (step_pending_47))
  :effect (and (at start (not (step_pending_47))) (at end (step_done ?s)) (at end (completed_47))))
 (:durative-action do_step_48
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending_48)) (at start (completed_42)) (at start (completed_77)))
  :effect (and (at start (not (step_pending_48))) (at end (step_done ?s)) (at end (completed_48))))
 (:durative-action do_step_49
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_49)) (at start (completed_90)))
  :effect (and (at start (not (step_pending_49))) (at end (step_done ?s)) (at end (completed_49))))
 (:durative-action do_step_50
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending_50)) (at start (completed_14)) (at start (completed_15)) (at start (completed_20)) (at start (completed_28)) (at start (completed_38)) (at start (completed_96)))
  :effect (and (at start (not (step_pending_50))) (at end (step_done ?s)) (at end (completed_50))))
 (:durative-action do_step_51
  :parameters (?s - step) :duration (= ?duration 3000)
  :condition (and (at start (step_pending_51)) (at start (completed_13)) (at start (completed_18)) (at start (completed_55)) (at start (completed_68)) (at start (completed_91)) (at start (completed_98)))
  :effect (and (at start (not (step_pending_51))) (at end (step_done ?s)) (at end (completed_51))))
 (:durative-action do_step_52
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_52)) (at start (completed_56)))
  :effect (and (at start (not (step_pending_52))) (at end (step_done ?s)) (at end (completed_52))))
 (:durative-action do_step_53
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending_53)) (at start (completed_11)) (at start (completed_56)))
  :effect (and (at start (not (step_pending_53))) (at end (step_done ?s)) (at end (completed_53))))
 (:durative-action do_step_54
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending_54)) (at start (completed_17)) (at start (completed_34)) (at start (completed_44)) (at start (completed_55)) (at start (completed_65)) (at start (completed_90)))
  :effect (and (at start (not (step_pending_54))) (at end (step_done ?s)) (at end (completed_54))))
 (:durative-action do_step_55
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_55)) (at start (completed_43)) (at start (completed_70)))
  :effect (and (at start (not (step_pending_55))) (at end (step_done ?s)) (at end (completed_55))))
 (:durative-action do_step_56
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (at start (step_pending_56))
  :effect (and (at start (not (step_pending_56))) (at end (step_done ?s)) (at end (completed_56))))
 (:durative-action do_step_57
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_57)) (at start (completed_43)) (at start (completed_61)) (at start (completed_67)) (at start (completed_95)))
  :effect (and (at start (not (step_pending_57))) (at end (step_done ?s)) (at end (completed_57))))
 (:durative-action do_step_58
  :parameters (?s - step) :duration (= ?duration 21600)
  :condition (and (at start (step_pending_58)) (at start (completed_19)) (at start (completed_93)))
  :effect (and (at start (not (step_pending_58))) (at end (step_done ?s)) (at end (completed_58))))
 (:durative-action do_step_59
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (at start (step_pending_59))
  :effect (and (at start (not (step_pending_59))) (at end (step_done ?s)) (at end (completed_59))))
 (:durative-action do_step_60
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_60)) (at start (completed_5)) (at start (completed_28)) (at start (completed_48)) (at start (completed_86)) (at start (completed_90)))
  :effect (and (at start (not (step_pending_60))) (at end (step_done ?s)) (at end (completed_60))))
 (:durative-action do_step_61
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_61)) (at start (completed_20)) (at start (completed_37)) (at start (completed_64)) (at start (completed_83)) (at start (completed_89)))
  :effect (and (at start (not (step_pending_61))) (at end (step_done ?s)) (at end (completed_61))))
 (:durative-action do_step_62
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_62)) (at start (completed_19)) (at start (completed_49)))
  :effect (and (at start (not (step_pending_62))) (at end (step_done ?s)) (at end (completed_62))))
 (:durative-action do_step_63
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending_63)) (at start (completed_27)) (at start (completed_47)) (at start (completed_97)))
  :effect (and (at start (not (step_pending_63))) (at end (step_done ?s)) (at end (completed_63))))
 (:durative-action do_step_64
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_64)) (at start (completed_11)) (at start (completed_47)))
  :effect (and (at start (not (step_pending_64))) (at end (step_done ?s)) (at end (completed_64))))
 (:durative-action do_step_65
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending_65)) (at start (completed_19)) (at start (completed_70)))
  :effect (and (at start (not (step_pending_65))) (at end (step_done ?s)) (at end (completed_65))))
 (:durative-action do_step_66
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_66)) (at start (completed_1)) (at start (completed_10)) (at start (completed_17)) (at start (completed_28)) (at start (completed_68)) (at start (completed_91)) (at start (completed_98)))
  :effect (and (at start (not (step_pending_66))) (at end (step_done ?s)) (at end (completed_66))))
 (:durative-action do_step_67
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_67)) (at start (completed_90)))
  :effect (and (at start (not (step_pending_67))) (at end (step_done ?s)) (at end (completed_67))))
 (:durative-action do_step_68
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending_68)) (at start (completed_13)) (at start (completed_64)) (at start (completed_95)))
  :effect (and (at start (not (step_pending_68))) (at end (step_done ?s)) (at end (completed_68))))
 (:durative-action do_step_69
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending_69)) (at start (completed_86)) (at start (completed_97)))
  :effect (and (at start (not (step_pending_69))) (at end (step_done ?s)) (at end (completed_69))))
 (:durative-action do_step_70
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_70)) (at start (completed_47)))
  :effect (and (at start (not (step_pending_70))) (at end (step_done ?s)) (at end (completed_70))))
 (:durative-action do_step_71
  :parameters (?s - step) :duration (= ?duration 3000)
  :condition (and (at start (step_pending_71)) (at start (completed_5)) (at start (completed_14)) (at start (completed_45)) (at start (completed_46)) (at start (completed_64)))
  :effect (and (at start (not (step_pending_71))) (at end (step_done ?s)) (at end (completed_71))))
 (:durative-action do_step_72
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending_72)) (at start (completed_24)) (at start (completed_71)) (at start (completed_79)))
  :effect (and (at start (not (step_pending_72))) (at end (step_done ?s)) (at end (completed_72))))
 (:durative-action do_step_73
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_73)) (at start (completed_3)) (at start (completed_33)) (at start (completed_46)))
  :effect (and (at start (not (step_pending_73))) (at end (step_done ?s)) (at end (completed_73))))
 (:durative-action do_step_74
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_74)) (at start (completed_14)) (at start (completed_40)) (at start (completed_46)) (at start (completed_49)) (at start (completed_60)) (at start (completed_95)))
  :effect (and (at start (not (step_pending_74))) (at end (step_done ?s)) (at end (completed_74))))
 (:durative-action do_step_75
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_75)) (at start (completed_47)) (at start (completed_49)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_75))) (at end (step_done ?s)) (at end (completed_75))))
 (:durative-action do_step_76
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_76)) (at start (completed_35)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_76))) (at end (step_done ?s)) (at end (completed_76))))
 (:durative-action do_step_77
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_77)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_77))) (at end (step_done ?s)) (at end (completed_77))))
 (:durative-action do_step_78
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_78))
  :effect (and (at start (not (step_pending_78))) (at end (step_done ?s)) (at end (completed_78))))
 (:durative-action do_step_79
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending_79)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_79))) (at end (step_done ?s)) (at end (completed_79))))
 (:durative-action do_step_80
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_80)) (at start (completed_8)) (at start (completed_42)) (at start (completed_45)) (at start (completed_48)) (at start (completed_57)) (at start (completed_58)) (at start (completed_60)))
  :effect (and (at start (not (step_pending_80))) (at end (step_done ?s)) (at end (completed_80))))
 (:durative-action do_step_81
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_81)) (at start (completed_42)))
  :effect (and (at start (not (step_pending_81))) (at end (step_done ?s)) (at end (completed_81))))
 (:durative-action do_step_82
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending_82)) (at start (completed_3)) (at start (completed_50)) (at start (completed_63)) (at start (completed_91)))
  :effect (and (at start (not (step_pending_82))) (at end (step_done ?s)) (at end (completed_82))))
 (:durative-action do_step_83
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending_83)) (at start (completed_56)))
  :effect (and (at start (not (step_pending_83))) (at end (step_done ?s)) (at end (completed_83))))
 (:durative-action do_step_84
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending_84)) (at start (completed_35)) (at start (completed_56)) (at start (completed_75)) (at start (completed_89)))
  :effect (and (at start (not (step_pending_84))) (at end (step_done ?s)) (at end (completed_84))))
 (:durative-action do_step_85
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending_85)) (at start (completed_19)) (at start (completed_33)) (at start (completed_41)) (at start (completed_61)) (at start (completed_86)))
  :effect (and (at start (not (step_pending_85))) (at end (step_done ?s)) (at end (completed_85))))
 (:durative-action do_step_86
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_86)) (at start (completed_56)))
  :effect (and (at start (not (step_pending_86))) (at end (step_done ?s)) (at end (completed_86))))
 (:durative-action do_step_87
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_87)) (at start (completed_42)))
  :effect (and (at start (not (step_pending_87))) (at end (step_done ?s)) (at end (completed_87))))
 (:durative-action do_step_88
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_88)) (at start (completed_5)))
  :effect (and (at start (not (step_pending_88))) (at end (step_done ?s)) (at end (completed_88))))
 (:durative-action do_step_89
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (at start (step_pending_89))
  :effect (and (at start (not (step_pending_89))) (at end (step_done ?s)) (at end (completed_89))))
 (:durative-action do_step_90
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_90)) (at start (completed_92)))
  :effect (and (at start (not (step_pending_90))) (at end (step_done ?s)) (at end (completed_90))))
 (:durative-action do_step_91
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (step_pending_91))
  :effect (and (at start (not (step_pending_91))) (at end (step_done ?s)) (at end (completed_91))))
 (:durative-action do_step_92
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (step_pending_92))
  :effect (and (at start (not (step_pending_92))) (at end (step_done ?s)) (at end (completed_92))))
 (:durative-action do_step_93
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (step_pending_93)) (at start (completed_1)) (at start (completed_14)) (at start (completed_37)) (at start (completed_52)) (at start (completed_63)) (at start (completed_86)) (at start (completed_99)))
  :effect (and (at start (not (step_pending_93))) (at end (step_done ?s)) (at end (completed_93))))
 (:durative-action do_step_94
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_94)) (at start (completed_43)) (at start (completed_69)) (at start (completed_95)) (at start (completed_99)))
  :effect (and (at start (not (step_pending_94))) (at end (step_done ?s)) (at end (completed_94))))
 (:durative-action do_step_95
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending_95)) (at start (completed_11)) (at start (completed_59)) (at start (completed_69)))
  :effect (and (at start (not (step_pending_95))) (at end (step_done ?s)) (at end (completed_95))))
 (:durative-action do_step_96
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending_96)) (at start (completed_9)) (at start (completed_20)) (at start (completed_29)) (at start (completed_33)) (at start (completed_41)) (at start (completed_61)))
  :effect (and (at start (not (step_pending_96))) (at end (step_done ?s)) (at end (completed_96))))
 (:durative-action do_step_97
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (step_pending_97))
  :effect (and (at start (not (step_pending_97))) (at end (step_done ?s)) (at end (completed_97))))
 (:durative-action do_step_98
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending_98)) (at start (completed_12)) (at start (completed_27)) (at start (completed_39)) (at start (completed_69)))
  :effect (and (at start (not (step_pending_98))) (at end (step_done ?s)) (at end (completed_98))))
 (:durative-action do_step_99
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending_99)) (at start (completed_41)))
  :effect (and (at start (not (step_pending_99))) (at end (step_done ?s)) (at end (completed_99))))
 (:durative-action do_step_100
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending_100)) (at start (completed_66)) (at start (completed_79)) (at start (completed_85)))
  :effect (and (at start (not (step_pending_100))) (at end (step_done ?s)) (at end (completed_100))))
)