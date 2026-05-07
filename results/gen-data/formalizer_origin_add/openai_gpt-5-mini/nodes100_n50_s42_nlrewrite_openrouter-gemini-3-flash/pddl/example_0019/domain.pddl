(define (domain conservation_officer_steps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; identity predicates to let domain actions refer to specific step objects without using object names directly
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
    (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
    (is_step51 ?s - step) (is_step52 ?s - step) (is_step53 ?s - step) (is_step54 ?s - step) (is_step55 ?s - step)
    (is_step56 ?s - step) (is_step57 ?s - step) (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
    (is_step61 ?s - step) (is_step62 ?s - step) (is_step63 ?s - step) (is_step64 ?s - step) (is_step65 ?s - step)
    (is_step66 ?s - step) (is_step67 ?s - step) (is_step68 ?s - step) (is_step69 ?s - step) (is_step70 ?s - step)
    (is_step71 ?s - step) (is_step72 ?s - step) (is_step73 ?s - step) (is_step74 ?s - step) (is_step75 ?s - step)
    (is_step76 ?s - step) (is_step77 ?s - step) (is_step78 ?s - step) (is_step79 ?s - step) (is_step80 ?s - step)
    (is_step81 ?s - step) (is_step82 ?s - step) (is_step83 ?s - step) (is_step84 ?s - step) (is_step85 ?s - step)
    (is_step86 ?s - step) (is_step87 ?s - step) (is_step88 ?s - step) (is_step89 ?s - step) (is_step90 ?s - step)
    (is_step91 ?s - step) (is_step92 ?s - step) (is_step93 ?s - step) (is_step94 ?s - step) (is_step95 ?s - step)
    (is_step96 ?s - step) (is_step97 ?s - step) (is_step98 ?s - step) (is_step99 ?s - step) (is_step100 ?s - step)

    ; unique semantic predicates produced by each action (no arguments)
    (done_1) (done_2) (done_3) (done_4) (done_5) (done_6) (done_7) (done_8) (done_9) (done_10)
    (done_11) (done_12) (done_13) (done_14) (done_15) (done_16) (done_17) (done_18) (done_19) (done_20)
    (done_21) (done_22) (done_23) (done_24) (done_25) (done_26) (done_27) (done_28) (done_29) (done_30)
    (done_31) (done_32) (done_33) (done_34) (done_35) (done_36) (done_37) (done_38) (done_39) (done_40)
    (done_41) (done_42) (done_43) (done_44) (done_45) (done_46) (done_47) (done_48) (done_49) (done_50)
    (done_51) (done_52) (done_53) (done_54) (done_55) (done_56) (done_57) (done_58) (done_59) (done_60)
    (done_61) (done_62) (done_63) (done_64) (done_65) (done_66) (done_67) (done_68) (done_69) (done_70)
    (done_71) (done_72) (done_73) (done_74) (done_75) (done_76) (done_77) (done_78) (done_79) (done_80)
    (done_81) (done_82) (done_83) (done_84) (done_85) (done_86) (done_87) (done_88) (done_89) (done_90)
    (done_91) (done_92) (done_93) (done_94) (done_95) (done_96) (done_97) (done_98) (done_99) (done_100)
  )

  ; One durative-action per step. Each action is parameterized by ?s and uses an identity predicate
  ; to tie the action to the correct object. All predecessor requirements are expressed as at start conditions

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (done_42)) (at start (done_50)) (at start (done_61)) (at start (done_71)) (at start (done_79)) (at start (done_100)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (done_76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (done_14)) (at start (done_52)) (at start (done_100)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (done_17)) (at start (done_19)) (at start (done_85)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (done_73)) (at start (done_85)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (done_12)) (at start (done_33)) (at start (done_83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (done_28)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (done_67)) (at start (done_48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (done_8)) (at start (done_23)) (at start (done_27)) (at start (done_49)) (at start (done_96)) (at start (done_98)) (at start (done_7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (done_38)) (at start (done_39)) (at start (done_54)) (at start (done_57)) (at start (done_66)) (at start (done_41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (done_5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 126144000)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (done_21)) (at start (done_42)) (at start (done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (done_58)) (at start (done_98)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (done_4)) (at start (done_54)) (at start (done_67)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (done_1)) (at start (done_5)) (at start (done_20)) (at start (done_54)) (at start (done_62)) (at start (done_66)) (at start (done_68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (done_61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (done_27)) (at start (done_39)) (at start (done_59)) (at start (done_96)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_20)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_21)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (done_26)) (at start (done_27)) (at start (done_53)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_22)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (done_51)) (at start (done_55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_23)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (done_42)) (at start (done_27)) (at start (done_92)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_24)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (done_29)) (at start (done_43)) (at start (done_47)) (at start (done_89)) (at start (done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_25)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (done_66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_26)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_27)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (done_13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_28)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (done_87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_29)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (done_6)) (at start (done_16)) (at start (done_44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_30)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (done_4)) (at start (done_24)) (at start (done_61)) (at start (done_64)) (at start (done_71)) (at start (done_73)) (at start (done_83)) (at start (done_87)) (at start (done_93)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_31)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (done_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_32)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (done_32)) (at start (done_37)) (at start (done_54)) (at start (done_57)) (at start (done_82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_33)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (done_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_34)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (done_77)) (at start (done_93)) (at start (done_94)) (at start (done_99)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_35)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (done_3)) (at start (done_23)) (at start (done_50)) (at start (done_51)) (at start (done_64)) (at start (done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_36)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (done_67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_37)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (done_48)) (at start (done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_38)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (done_21)) (at start (done_73)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_39)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (done_50)) (at start (done_74)) (at start (done_100)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_40)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (done_4)) (at start (done_19)) (at start (done_50)) (at start (done_81)) (at start (done_96)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_41)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 126144000)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_42)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (done_12)) (at start (done_13)) (at start (done_32)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_43)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_44)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (done_13)) (at start (done_32)) (at start (done_71)) (at start (done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_45)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)) (at start (done_6)) (at start (done_49)) (at start (done_65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_46)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (done_66)) (at start (done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_47)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)) (at start (done_14)) (at start (done_22)) (at start (done_26)) (at start (done_53)) (at start (done_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_48)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_49)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_50)))
  )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step51 ?s)) (at start (done_5)) (at start (done_27)) (at start (done_81)) (at start (done_71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_51)))
  )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step52 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_52)))
  )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step53 ?s)) (at start (done_12)) (at start (done_26)) (at start (done_27)) (at start (done_34)) (at start (done_47)) (at start (done_61)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_53)))
  )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step54 ?s)) (at start (done_26)) (at start (done_66)) (at start (done_96)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_54)))
  )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step55 ?s)) (at start (done_30)) (at start (done_57)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_55)))
  )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step56 ?s)) (at start (done_96)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_56)))
  )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step57 ?s)) (at start (done_28)) (at start (done_76)) (at start (done_78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_57)))
  )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step58 ?s)) (at start (done_19)) (at start (done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_58)))
  )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step59 ?s)) (at start (done_19)) (at start (done_74)) (at start (done_78)) (at start (done_87)) (at start (done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_59)))
  )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step60 ?s)) (at start (done_53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_60)))
  )

  (:durative-action do_step61
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step61 ?s)) (at start (done_89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_61)))
  )

  (:durative-action do_step62
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step62 ?s)) (at start (done_51)) (at start (done_61)) (at start (done_81)) (at start (done_93)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_62)))
  )

  (:durative-action do_step63
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step63 ?s)) (at start (done_2)) (at start (done_30)) (at start (done_40)) (at start (done_54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_63)))
  )

  (:durative-action do_step64
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step64 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_64)))
  )

  (:durative-action do_step65
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step65 ?s)) (at start (done_57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_65)))
  )

  (:durative-action do_step66
    :parameters (?s - step)
    :duration (= ?duration 63072000)
    :condition (and (at start (step_pending ?s)) (at start (is_step66 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_66)))
  )

  (:durative-action do_step67
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (is_step67 ?s)) (at start (done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_67)))
  )

  (:durative-action do_step68
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step68 ?s)) (at start (done_8)) (at start (done_9)) (at start (done_13)) (at start (done_20)) (at start (done_27)) (at start (done_87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_68)))
  )

  (:durative-action do_step69
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step69 ?s)) (at start (done_73)) (at start (done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_69)))
  )

  (:durative-action do_step70
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step70 ?s)) (at start (done_1)) (at start (done_5)) (at start (done_20)) (at start (done_27)) (at start (done_40)) (at start (done_50)) (at start (done_86)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_70)))
  )

  (:durative-action do_step71
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step71 ?s)) (at start (done_2)) (at start (done_54)) (at start (done_67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_71)))
  )

  (:durative-action do_step72
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step72 ?s)) (at start (done_27)) (at start (done_42)) (at start (done_59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_72)))
  )

  (:durative-action do_step73
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step73 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_73)))
  )

  (:durative-action do_step74
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step74 ?s)) (at start (done_5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_74)))
  )

  (:durative-action do_step75
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step75 ?s)) (at start (done_19)) (at start (done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_75)))
  )

  (:durative-action do_step76
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step76 ?s)) (at start (done_42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_76)))
  )

  (:durative-action do_step77
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step77 ?s)) (at start (done_21)) (at start (done_74)) (at start (done_84)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_77)))
  )

  (:durative-action do_step78
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step78 ?s)) (at start (done_5)) (at start (done_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_78)))
  )

  (:durative-action do_step79
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step79 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_79)))
  )

  (:durative-action do_step80
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step80 ?s)) (at start (done_12)) (at start (done_13)) (at start (done_17)) (at start (done_50)) (at start (done_73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_80)))
  )

  (:durative-action do_step81
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step81 ?s)) (at start (done_19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_81)))
  )

  (:durative-action do_step82
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step82 ?s)) (at start (done_14)) (at start (done_24)) (at start (done_31)) (at start (done_41)) (at start (done_51)) (at start (done_73)) (at start (done_74)) (at start (done_78)) (at start (done_83)) (at start (done_93)) (at start (done_99)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_82)))
  )

  (:durative-action do_step83
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step83 ?s)) (at start (done_6)) (at start (done_30)) (at start (done_55)) (at start (done_69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_83)))
  )

  (:durative-action do_step84
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step84 ?s)) (at start (done_14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_84)))
  )

  (:durative-action do_step85
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step85 ?s)) (at start (done_13)) (at start (done_66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_85)))
  )

  (:durative-action do_step86
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step86 ?s)) (at start (done_61)) (at start (done_47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_86)))
  )

  (:durative-action do_step87
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step87 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_87)))
  )

  (:durative-action do_step88
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step88 ?s)) (at start (done_41)) (at start (done_64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_88)))
  )

  (:durative-action do_step89
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step89 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_89)))
  )

  (:durative-action do_step90
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (is_step90 ?s)) (at start (done_12)) (at start (done_14)) (at start (done_74)) (at start (done_28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_90)))
  )

  (:durative-action do_step91
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step91 ?s)) (at start (done_90)) (at start (done_93)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_91)))
  )

  (:durative-action do_step92
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step92 ?s)) (at start (done_22)) (at start (done_25)) (at start (done_46)) (at start (done_68)) (at start (done_99)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_92)))
  )

  (:durative-action do_step93
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step93 ?s)) (at start (done_32)) (at start (done_90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_93)))
  )

  (:durative-action do_step94
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step94 ?s)) (at start (done_28)) (at start (done_77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_94)))
  )

  (:durative-action do_step95
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step95 ?s)) (at start (done_15)) (at start (done_99)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_95)))
  )

  (:durative-action do_step96
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step96 ?s)) (at start (done_12)) (at start (done_74)) (at start (done_93)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_96)))
  )

  (:durative-action do_step97
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step97 ?s)) (at start (done_6)) (at start (done_14)) (at start (done_55)) (at start (done_58)) (at start (done_64)) (at start (done_65)) (at start (done_66)) (at start (done_79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_97)))
  )

  (:durative-action do_step98
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step98 ?s)) (at start (done_54)) (at start (done_59)) (at start (done_61)) (at start (done_87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_98)))
  )

  (:durative-action do_step99
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step99 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_99)))
  )

  (:durative-action do_step100
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step100 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_100)))
  )

)
