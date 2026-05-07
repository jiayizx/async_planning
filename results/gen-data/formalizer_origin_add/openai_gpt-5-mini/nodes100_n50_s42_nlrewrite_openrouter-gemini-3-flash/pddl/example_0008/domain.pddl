(define (domain med_exam_steps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending_s1) (done_s1)
    (pending_s2) (done_s2)
    (pending_s3) (done_s3)
    (pending_s4) (done_s4)
    (pending_s5) (done_s5)
    (pending_s6) (done_s6)
    (pending_s7) (done_s7)
    (pending_s8) (done_s8)
    (pending_s9) (done_s9)
    (pending_s10) (done_s10)
    (pending_s11) (done_s11)
    (pending_s12) (done_s12)
    (pending_s13) (done_s13)
    (pending_s14) (done_s14)
    (pending_s15) (done_s15)
    (pending_s16) (done_s16)
    (pending_s17) (done_s17)
    (pending_s18) (done_s18)
    (pending_s19) (done_s19)
    (pending_s20) (done_s20)
    (pending_s21) (done_s21)
    (pending_s22) (done_s22)
    (pending_s23) (done_s23)
    (pending_s24) (done_s24)
    (pending_s25) (done_s25)
    (pending_s26) (done_s26)
    (pending_s27) (done_s27)
    (pending_s28) (done_s28)
    (pending_s29) (done_s29)
    (pending_s30) (done_s30)
    (pending_s31) (done_s31)
    (pending_s32) (done_s32)
    (pending_s33) (done_s33)
    (pending_s34) (done_s34)
    (pending_s35) (done_s35)
    (pending_s36) (done_s36)
    (pending_s37) (done_s37)
    (pending_s38) (done_s38)
    (pending_s39) (done_s39)
    (pending_s40) (done_s40)
    (pending_s41) (done_s41)
    (pending_s42) (done_s42)
    (pending_s43) (done_s43)
    (pending_s44) (done_s44)
    (pending_s45) (done_s45)
    (pending_s46) (done_s46)
    (pending_s47) (done_s47)
    (pending_s48) (done_s48)
    (pending_s49) (done_s49)
    (pending_s50) (done_s50)
    (pending_s51) (done_s51)
    (pending_s52) (done_s52)
    (pending_s53) (done_s53)
    (pending_s54) (done_s54)
    (pending_s55) (done_s55)
    (pending_s56) (done_s56)
    (pending_s57) (done_s57)
    (pending_s58) (done_s58)
    (pending_s59) (done_s59)
    (pending_s60) (done_s60)
    (pending_s61) (done_s61)
    (pending_s62) (done_s62)
    (pending_s63) (done_s63)
    (pending_s64) (done_s64)
    (pending_s65) (done_s65)
    (pending_s66) (done_s66)
    (pending_s67) (done_s67)
    (pending_s68) (done_s68)
    (pending_s69) (done_s69)
    (pending_s70) (done_s70)
    (pending_s71) (done_s71)
    (pending_s72) (done_s72)
    (pending_s73) (done_s73)
    (pending_s74) (done_s74)
    (pending_s75) (done_s75)
    (pending_s76) (done_s76)
    (pending_s77) (done_s77)
    (pending_s78) (done_s78)
    (pending_s79) (done_s79)
    (pending_s80) (done_s80)
    (pending_s81) (done_s81)
    (pending_s82) (done_s82)
    (pending_s83) (done_s83)
    (pending_s84) (done_s84)
    (pending_s85) (done_s85)
    (pending_s86) (done_s86)
    (pending_s87) (done_s87)
    (pending_s88) (done_s88)
    (pending_s89) (done_s89)
    (pending_s90) (done_s90)
    (pending_s91) (done_s91)
    (pending_s92) (done_s92)
    (pending_s93) (done_s93)
    (pending_s94) (done_s94)
    (pending_s95) (done_s95)
    (pending_s96) (done_s96)
    (pending_s97) (done_s97)
    (pending_s98) (done_s98)
    (pending_s99) (done_s99)
    (pending_s100) (done_s100)
  )

  ;; Each durative action uses a single :condition clause and one :effect clause.

  (:durative-action do_step_1
    :duration (= ?duration 23328000)
    :condition (at start (pending_s1))
    :effect (and (at start (not (pending_s1))) (at end (done_s1)))
  )

  (:durative-action do_step_2
    :duration (= ?duration 10368000)
    :condition (and (at start (pending_s2)) (at start (done_s34)) (at start (done_s40)) (at start (done_s50)) (at start (done_s56)) (at start (done_s85)))
    :effect (and (at start (not (pending_s2))) (at end (done_s2)))
  )

  (:durative-action do_step_3
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s3)) (at start (done_s7)) (at start (done_s96)))
    :effect (and (at start (not (pending_s3))) (at end (done_s3)))
  )

  (:durative-action do_step_4
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s4)) (at start (done_s40)) (at start (done_s88)) (at start (done_s92)) (at start (done_s97)))
    :effect (and (at start (not (pending_s4))) (at end (done_s4)))
  )

  (:durative-action do_step_5
    :duration (= ?duration 23328000)
    :condition (and (at start (pending_s5)) (at start (done_s45)) (at start (done_s90)))
    :effect (and (at start (not (pending_s5))) (at end (done_s5)))
  )

  (:durative-action do_step_6
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s6)) (at start (done_s10)) (at start (done_s59)) (at start (done_s84)) (at start (done_s87)))
    :effect (and (at start (not (pending_s6))) (at end (done_s6)))
  )

  (:durative-action do_step_7
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s7)) (at start (done_s6)) (at start (done_s59)) (at start (done_s71)) (at start (done_s49)))
    :effect (and (at start (not (pending_s7))) (at end (done_s7)))
  )

  (:durative-action do_step_8
    :duration (= ?duration 1814400)
    :condition (at start (pending_s8))
    :effect (and (at start (not (pending_s8))) (at end (done_s8)))
  )

  (:durative-action do_step_9
    :duration (= ?duration 5184000)
    :condition (and (at start (pending_s9)) (at start (done_s66)))
    :effect (and (at start (not (pending_s9))) (at end (done_s9)))
  )

  (:durative-action do_step_10
    :duration (= ?duration 126144000)
    :condition (and (at start (pending_s10)) (at start (done_s45)))
    :effect (and (at start (not (pending_s10))) (at end (done_s10)))
  )

  (:durative-action do_step_11
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s11)) (at start (done_s18)) (at start (done_s53)))
    :effect (and (at start (not (pending_s11))) (at end (done_s11)))
  )

  (:durative-action do_step_12
    :duration (= ?duration 94608000)
    :condition (and (at start (pending_s12)) (at start (done_s40)) (at start (done_s89)) (at start (done_s50)) (at start (done_s56)))
    :effect (and (at start (not (pending_s12))) (at end (done_s12)))
  )

  (:durative-action do_step_13
    :duration (= ?duration 126144000)
    :condition (and (at start (pending_s13)) (at start (done_s49)))
    :effect (and (at start (not (pending_s13))) (at end (done_s13)))
  )

  (:durative-action do_step_14
    :duration (= ?duration 15552000)
    :condition (at start (pending_s14))
    :effect (and (at start (not (pending_s14))) (at end (done_s14)))
  )

  (:durative-action do_step_15
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s15)) (at start (done_s14)) (at start (done_s73)))
    :effect (and (at start (not (pending_s15))) (at end (done_s15)))
  )

  (:durative-action do_step_16
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s16)) (at start (done_s10)) (at start (done_s14)) (at start (done_s43)))
    :effect (and (at start (not (pending_s16))) (at end (done_s16)))
  )

  (:durative-action do_step_17
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s17)) (at start (done_s32)) (at start (done_s73)))
    :effect (and (at start (not (pending_s17))) (at end (done_s17)))
  )

  (:durative-action do_step_18
    :duration (= ?duration 10368000)
    :condition (at start (pending_s18))
    :effect (and (at start (not (pending_s18))) (at end (done_s18)))
  )

  (:durative-action do_step_19
    :duration (= ?duration 31536000)
    :condition (at start (pending_s19))
    :effect (and (at start (not (pending_s19))) (at end (done_s19)))
  )

  (:durative-action do_step_20
    :duration (= ?duration 15552000)
    :condition (and (at start (pending_s20)) (at start (done_s21)))
    :effect (and (at start (not (pending_s20))) (at end (done_s20)))
  )

  (:durative-action do_step_21
    :duration (= ?duration 5184000)
    :condition (at start (pending_s21))
    :effect (and (at start (not (pending_s21))) (at end (done_s21)))
  )

  (:durative-action do_step_22
    :duration (= ?duration 10368000)
    :condition (and (at start (pending_s22)) (at start (done_s1)) (at start (done_s35)) (at start (done_s91)) (at start (done_s49)))
    :effect (and (at start (not (pending_s22))) (at end (done_s22)))
  )

  (:durative-action do_step_23
    :duration (= ?duration 5184000)
    :condition (and (at start (pending_s23)) (at start (done_s67)) (at start (done_s70)))
    :effect (and (at start (not (pending_s23))) (at end (done_s23)))
  )

  (:durative-action do_step_24
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s24)) (at start (done_s5)) (at start (done_s25)) (at start (done_s13)) (at start (done_s64)) (at start (done_s80)))
    :effect (and (at start (not (pending_s24))) (at end (done_s24)))
  )

  (:durative-action do_step_25
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s25)) (at start (done_s5)) (at start (done_s59)) (at start (done_s94)))
    :effect (and (at start (not (pending_s25))) (at end (done_s25)))
  )

  (:durative-action do_step_26
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s26)) (at start (done_s32)) (at start (done_s92)) (at start (done_s79)))
    :effect (and (at start (not (pending_s26))) (at end (done_s26)))
  )

  (:durative-action do_step_27
    :duration (= ?duration 259200)
    :condition (and (at start (pending_s27)) (at start (done_s22)) (at start (done_s42)) (at start (done_s74)))
    :effect (and (at start (not (pending_s27))) (at end (done_s27)))
  )

  (:durative-action do_step_28
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s28)) (at start (done_s87)))
    :effect (and (at start (not (pending_s28))) (at end (done_s28)))
  )

  (:durative-action do_step_29
    :duration (= ?duration 5184000)
    :condition (and (at start (pending_s29)) (at start (done_s20)) (at start (done_s34)) (at start (done_s67)) (at start (done_s95)))
    :effect (and (at start (not (pending_s29))) (at end (done_s29)))
  )

  (:durative-action do_step_30
    :duration (= ?duration 259200)
    :condition (and (at start (pending_s30)) (at start (done_s32)) (at start (done_s41)) (at start (done_s61)) (at start (done_s67)) (at start (done_s72)) (at start (done_s95)))
    :effect (and (at start (not (pending_s30))) (at end (done_s30)))
  )

  (:durative-action do_step_31
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s31)) (at start (done_s10)) (at start (done_s79)))
    :effect (and (at start (not (pending_s31))) (at end (done_s31)))
  )

  (:durative-action do_step_32
    :duration (= ?duration 2592000)
    :condition (at start (pending_s32))
    :effect (and (at start (not (pending_s32))) (at end (done_s32)))
  )

  (:durative-action do_step_33
    :duration (= ?duration 3600)
    :condition (at start (pending_s33))
    :effect (and (at start (not (pending_s33))) (at end (done_s33)))
  )

  (:durative-action do_step_34
    :duration (= ?duration 23328000)
    :condition (and (at start (pending_s34)) (at start (done_s75)) (at start (done_s49)))
    :effect (and (at start (not (pending_s34))) (at end (done_s34)))
  )

  (:durative-action do_step_35
    :duration (= ?duration 10368000)
    :condition (and (at start (pending_s35)) (at start (done_s36)) (at start (done_s87)))
    :effect (and (at start (not (pending_s35))) (at end (done_s35)))
  )

  (:durative-action do_step_36
    :duration (= ?duration 25200)
    :condition (and (at start (pending_s36)) (at start (done_s73)) (at start (done_s84)))
    :effect (and (at start (not (pending_s36))) (at end (done_s36)))
  )

  (:durative-action do_step_37
    :duration (= ?duration 31536000)
    :condition (and (at start (pending_s37)) (at start (done_s28)) (at start (done_s42)) (at start (done_s43)) (at start (done_s84)))
    :effect (and (at start (not (pending_s37))) (at end (done_s37)))
  )

  (:durative-action do_step_38
    :duration (= ?duration 172800)
    :condition (and (at start (pending_s38)) (at start (done_s9)) (at start (done_s40)) (at start (done_s72)) (at start (done_s92)) (at start (done_s99)) (at start (done_s84)))
    :effect (and (at start (not (pending_s38))) (at end (done_s38)))
  )

  (:durative-action do_step_39
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s39)) (at start (done_s5)) (at start (done_s15)) (at start (done_s50)) (at start (done_s70)))
    :effect (and (at start (not (pending_s39))) (at end (done_s39)))
  )

  (:durative-action do_step_40
    :duration (= ?duration 31536000)
    :condition (and (at start (pending_s40)) (at start (done_s19)) (at start (done_s41)) (at start (done_s58)))
    :effect (and (at start (not (pending_s40))) (at end (done_s40)))
  )

  (:durative-action do_step_41
    :duration (= ?duration 2592000)
    :condition (at start (pending_s41))
    :effect (and (at start (not (pending_s41))) (at end (done_s41)))
  )

  (:durative-action do_step_42
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s42)) (at start (done_s52)) (at start (done_s66)))
    :effect (and (at start (not (pending_s42))) (at end (done_s42)))
  )

  (:durative-action do_step_43
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s43)) (at start (done_s79)))
    :effect (and (at start (not (pending_s43))) (at end (done_s43)))
  )

  (:durative-action do_step_44
    :duration (= ?duration 172800)
    :condition (and (at start (pending_s44)) (at start (done_s70)))
    :effect (and (at start (not (pending_s44))) (at end (done_s44)))
  )

  (:durative-action do_step_45
    :duration (= ?duration 126144000)
    :condition (and (at start (pending_s45)) (at start (done_s13)))
    :effect (and (at start (not (pending_s45))) (at end (done_s45)))
  )

  (:durative-action do_step_46
    :duration (= ?duration 172800)
    :condition (and (at start (pending_s46)) (at start (done_s59)) (at start (done_s66)) (at start (done_s90)))
    :effect (and (at start (not (pending_s46))) (at end (done_s46)))
  )

  (:durative-action do_step_47
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s47)) (at start (done_s15)) (at start (done_s28)) (at start (done_s41)) (at start (done_s44)) (at start (done_s59)) (at start (done_s66)) (at start (done_s67)) (at start (done_s79)))
    :effect (and (at start (not (pending_s47))) (at end (done_s47)))
  )

  (:durative-action do_step_48
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s48)) (at start (done_s12)) (at start (done_s25)) (at start (done_s38)) (at start (done_s49)) (at start (done_s43)))
    :effect (and (at start (not (pending_s48))) (at end (done_s48)))
  )

  (:durative-action do_step_49
    :duration (= ?duration 31536000)
    :condition (at start (pending_s49))
    :effect (and (at start (not (pending_s49))) (at end (done_s49)))
  )

  (:durative-action do_step_50
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s50)) (at start (done_s95)))
    :effect (and (at start (not (pending_s50))) (at end (done_s50)))
  )

  (:durative-action do_step_51
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s51)) (at start (done_s9)) (at start (done_s34)) (at start (done_s48)) (at start (done_s93)))
    :effect (and (at start (not (pending_s51))) (at end (done_s51)))
  )

  (:durative-action do_step_52
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s52)) (at start (done_s5)) (at start (done_s66)))
    :effect (and (at start (not (pending_s52))) (at end (done_s52)))
  )

  (:durative-action do_step_53
    :duration (= ?duration 12960000)
    :condition (and (at start (pending_s53)) (at start (done_s5)) (at start (done_s7)) (at start (done_s23)) (at start (done_s31)) (at start (done_s35)) (at start (done_s90)))
    :effect (and (at start (not (pending_s53))) (at end (done_s53)))
  )

  (:durative-action do_step_54
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s54)) (at start (done_s5)) (at start (done_s8)) (at start (done_s10)) (at start (done_s11)) (at start (done_s19)) (at start (done_s25)))
    :effect (and (at start (not (pending_s54))) (at end (done_s54)))
  )

  (:durative-action do_step_55
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s55)) (at start (done_s10)) (at start (done_s96)))
    :effect (and (at start (not (pending_s55))) (at end (done_s55)))
  )

  (:durative-action do_step_56
    :duration (= ?duration 31536000)
    :condition (and (at start (pending_s56)) (at start (done_s46)) (at start (done_s88)) (at start (done_s78)))
    :effect (and (at start (not (pending_s56))) (at end (done_s56)))
  )

  (:durative-action do_step_57
    :duration (= ?duration 172800)
    :condition (at start (pending_s57))
    :effect (and (at start (not (pending_s57))) (at end (done_s57)))
  )

  (:durative-action do_step_58
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s58)) (at start (done_s8)) (at start (done_s32)) (at start (done_s41)))
    :effect (and (at start (not (pending_s58))) (at end (done_s58)))
  )

  (:durative-action do_step_59
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s59)) (at start (done_s49)))
    :effect (and (at start (not (pending_s59))) (at end (done_s59)))
  )

  (:durative-action do_step_60
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s60)) (at start (done_s13)) (at start (done_s36)) (at start (done_s35)) (at start (done_s79)))
    :effect (and (at start (not (pending_s60))) (at end (done_s60)))
  )

  (:durative-action do_step_61
    :duration (= ?duration 5184000)
    :condition (and (at start (pending_s61)) (at start (done_s25)) (at start (done_s34)) (at start (done_s35)) (at start (done_s57)) (at start (done_s58)) (at start (done_s59)))
    :effect (and (at start (not (pending_s61))) (at end (done_s61)))
  )

  (:durative-action do_step_62
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s62)) (at start (done_s46)) (at start (done_s55)))
    :effect (and (at start (not (pending_s62))) (at end (done_s62)))
  )

  (:durative-action do_step_63
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s63)) (at start (done_s42)) (at start (done_s81)) (at start (done_s14)))
    :effect (and (at start (not (pending_s63))) (at end (done_s63)))
  )

  (:durative-action do_step_64
    :duration (= ?duration 10368000)
    :condition (and (at start (pending_s64)) (at start (done_s1)) (at start (done_s77)) (at start (done_s88)) (at start (done_s94)) (at start (done_s86)))
    :effect (and (at start (not (pending_s64))) (at end (done_s64)))
  )

  (:durative-action do_step_65
    :duration (= ?duration 14400)
    :condition (and (at start (pending_s65)) (at start (done_s24)) (at start (done_s36)) (at start (done_s80)) (at start (done_s86)) (at start (done_s81)) (at start (done_s40)))
    :effect (and (at start (not (pending_s65))) (at end (done_s65)))
  )

  (:durative-action do_step_66
    :duration (= ?duration 31536000)
    :condition (and (at start (pending_s66)) (at start (done_s45)))
    :effect (and (at start (not (pending_s66))) (at end (done_s66)))
  )

  (:durative-action do_step_67
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s67)) (at start (done_s45)) (at start (done_s41)))
    :effect (and (at start (not (pending_s67))) (at end (done_s67)))
  )

  (:durative-action do_step_68
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s68)) (at start (done_s9)) (at start (done_s16)) (at start (done_s22)) (at start (done_s34)) (at start (done_s91)))
    :effect (and (at start (not (pending_s68))) (at end (done_s68)))
  )

  (:durative-action do_step_69
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s69)) (at start (done_s23)))
    :effect (and (at start (not (pending_s69))) (at end (done_s69)))
  )

  (:durative-action do_step_70
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s70)) (at start (done_s59)) (at start (done_s81)))
    :effect (and (at start (not (pending_s70))) (at end (done_s70)))
  )

  (:durative-action do_step_71
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s71)) (at start (done_s5)) (at start (done_s10)))
    :effect (and (at start (not (pending_s71))) (at end (done_s71)))
  )

  (:durative-action do_step_72
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s72)) (at start (done_s15)))
    :effect (and (at start (not (pending_s72))) (at end (done_s72)))
  )

  (:durative-action do_step_73
    :duration (= ?duration 23328000)
    :condition (and (at start (pending_s73)) (at start (done_s49)))
    :effect (and (at start (not (pending_s73))) (at end (done_s73)))
  )

  (:durative-action do_step_74
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s74)) (at start (done_s60)))
    :effect (and (at start (not (pending_s74))) (at end (done_s74)))
  )

  (:durative-action do_step_75
    :duration (= ?duration 2592000)
    :condition (at start (pending_s75))
    :effect (and (at start (not (pending_s75))) (at end (done_s75)))
  )

  (:durative-action do_step_76
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s76)) (at start (done_s21)) (at start (done_s33)) (at start (done_s47)) (at start (done_s86)))
    :effect (and (at start (not (pending_s76))) (at end (done_s76)))
  )

  (:durative-action do_step_77
    :duration (= ?duration 23328000)
    :condition (and (at start (pending_s77)) (at start (done_s7)) (at start (done_s35)) (at start (done_s49)) (at start (done_s88)))
    :effect (and (at start (not (pending_s77))) (at end (done_s77)))
  )

  (:durative-action do_step_78
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s78)) (at start (done_s45)))
    :effect (and (at start (not (pending_s78))) (at end (done_s78)))
  )

  (:durative-action do_step_79
    :duration (= ?duration 31536000)
    :condition (at start (pending_s79))
    :effect (and (at start (not (pending_s79))) (at end (done_s79)))
  )

  (:durative-action do_step_80
    :duration (= ?duration 18000)
    :condition (and (at start (pending_s80)) (at start (done_s9)) (at start (done_s62)) (at start (done_s91)))
    :effect (and (at start (not (pending_s80))) (at end (done_s80)))
  )

  (:durative-action do_step_81
    :duration (= ?duration 604800)
    :condition (at start (pending_s81))
    :effect (and (at start (not (pending_s81))) (at end (done_s81)))
  )

  (:durative-action do_step_82
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s82)) (at start (done_s10)) (at start (done_s23)) (at start (done_s28)) (at start (done_s50)) (at start (done_s62)) (at start (done_s65)) (at start (done_s79)))
    :effect (and (at start (not (pending_s82))) (at end (done_s82)))
  )

  (:durative-action do_step_83
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s83)) (at start (done_s81)))
    :effect (and (at start (not (pending_s83))) (at end (done_s83)))
  )

  (:durative-action do_step_84
    :duration (= ?duration 31536000)
    :condition (at start (pending_s84))
    :effect (and (at start (not (pending_s84))) (at end (done_s84)))
  )

  (:durative-action do_step_85
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s85)) (at start (done_s39)) (at start (done_s93)) (at start (done_s38)) (at start (done_s36)) (at start (done_s44)) (at start (done_s88)))
    :effect (and (at start (not (pending_s85))) (at end (done_s85)))
  )

  (:durative-action do_step_86
    :duration (= ?duration 15552000)
    :condition (and (at start (pending_s86)) (at start (done_s17)) (at start (done_s88)))
    :effect (and (at start (not (pending_s86))) (at end (done_s86)))
  )

  (:durative-action do_step_87
    :duration (= ?duration 10368000)
    :condition (at start (pending_s87))
    :effect (and (at start (not (pending_s87))) (at end (done_s87)))
  )

  (:durative-action do_step_88
    :duration (= ?duration 2592000)
    :condition (at start (pending_s88))
    :effect (and (at start (not (pending_s88))) (at end (done_s88)))
  )

  (:durative-action do_step_89
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s89)) (at start (done_s8)))
    :effect (and (at start (not (pending_s89))) (at end (done_s89)))
  )

  (:durative-action do_step_90
    :duration (= ?duration 86400)
    :condition (at start (pending_s90))
    :effect (and (at start (not (pending_s90))) (at end (done_s90)))
  )

  (:durative-action do_step_91
    :duration (= ?duration 5184000)
    :condition (and (at start (pending_s91)) (at start (done_s16)) (at start (done_s23)) (at start (done_s84)) (at start (done_s78)))
    :effect (and (at start (not (pending_s91))) (at end (done_s91)))
  )

  (:durative-action do_step_92
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s92)) (at start (done_s7)) (at start (done_s39)) (at start (done_s66)) (at start (done_s70)) (at start (done_s77)))
    :effect (and (at start (not (pending_s92))) (at end (done_s92)))
  )

  (:durative-action do_step_93
    :duration (= ?duration 126144000)
    :condition (and (at start (pending_s93)) (at start (done_s26)) (at start (done_s39)) (at start (done_s52)) (at start (done_s53)) (at start (done_s72)) (at start (done_s92)) (at start (done_s41)))
    :effect (and (at start (not (pending_s93))) (at end (done_s93)))
  )

  (:durative-action do_step_94
    :duration (= ?duration 15552000)
    :condition (and (at start (pending_s94)) (at start (done_s20)))
    :effect (and (at start (not (pending_s94))) (at end (done_s94)))
  )

  (:durative-action do_step_95
    :duration (= ?duration 1209600)
    :condition (and (at start (pending_s95)) (at start (done_s45)))
    :effect (and (at start (not (pending_s95))) (at end (done_s95)))
  )

  (:durative-action do_step_96
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s96)) (at start (done_s23)) (at start (done_s40)))
    :effect (and (at start (not (pending_s96))) (at end (done_s96)))
  )

  (:durative-action do_step_97
    :duration (= ?duration 7776000)
    :condition (and (at start (pending_s97)) (at start (done_s29)) (at start (done_s34)) (at start (done_s35)) (at start (done_s84)) (at start (done_s87)))
    :effect (and (at start (not (pending_s97))) (at end (done_s97)))
  )

  (:durative-action do_step_98
    :duration (= ?duration 172800)
    :condition (and (at start (pending_s98)) (at start (done_s13)) (at start (done_s66)))
    :effect (and (at start (not (pending_s98))) (at end (done_s98)))
  )

  (:durative-action do_step_99
    :duration (= ?duration 2592000)
    :condition (and (at start (pending_s99)) (at start (done_s16)))
    :effect (and (at start (not (pending_s99))) (at end (done_s99)))
  )

  (:durative-action do_step_100
    :duration (= ?duration 604800)
    :condition (and (at start (pending_s100)) (at start (done_s29)) (at start (done_s49)) (at start (done_s59)))
    :effect (and (at start (not (pending_s100))) (at end (done_s100)))
  )
)
