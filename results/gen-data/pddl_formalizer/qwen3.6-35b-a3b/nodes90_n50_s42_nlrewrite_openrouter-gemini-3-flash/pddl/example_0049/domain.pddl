(define (domain movie_theater)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
    (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70)
    (s71) (s72) (s73) (s74) (s75) (s76) (s77) (s78) (s79) (s80)
    (s81) (s82) (s83) (s84) (s85) (s86) (s87) (s88) (s89) (s90))
  (:durative-action do_step1 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s78)) (at start (s82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1))))
  (:durative-action do_step2 (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s12)) (at start (s19)) (at start (s29)) (at start (s32)) (at start (s42)) (at start (s73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2))))
  (:durative-action do_step3 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3))))
  (:durative-action do_step4 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4))))
  (:durative-action do_step5 (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5))))
  (:durative-action do_step6 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6))))
  (:durative-action do_step7 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7))))
  (:durative-action do_step8 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s47)) (at start (s82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8))))
  (:durative-action do_step9 (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9))))
  (:durative-action do_step10 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10))))
  (:durative-action do_step11 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11))))
  (:durative-action do_step12 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s55)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12))))
  (:durative-action do_step13 (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13))))
  (:durative-action do_step14 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14))))
  (:durative-action do_step15 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s16)) (at start (s24)) (at start (s45)) (at start (s56)) (at start (s74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15))))
  (:durative-action do_step16 (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16))))
  (:durative-action do_step17 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s75)) (at start (s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17))))
  (:durative-action do_step18 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s16)) (at start (s21)) (at start (s29)) (at start (s54)) (at start (s57)) (at start (s81)) (at start (s83)) (at start (s87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18))))
  (:durative-action do_step19 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19))))
  (:durative-action do_step20 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20))))
  (:durative-action do_step21 (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21))))
  (:durative-action do_step22 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s49)) (at start (s61)) (at start (s71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22))))
  (:durative-action do_step23 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s20)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23))))
  (:durative-action do_step24 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s67)) (at start (s78)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24))))
  (:durative-action do_step25 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s50)) (at start (s81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25))))
  (:durative-action do_step26 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26))))
  (:durative-action do_step27 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s32)) (at start (s51)) (at start (s64)) (at start (s80)) (at start (s88)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27))))
  (:durative-action do_step28 (?s - step)
    :duration 480
    :condition (and (at start (step_pending ?s)) (at start (s67)) (at start (s86)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28))))
  (:durative-action do_step29 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s40)) (at start (s47)) (at start (s51)) (at start (s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29))))
  (:durative-action do_step30 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30))))
  (:durative-action do_step31 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31))))
  (:durative-action do_step32 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s24)) (at start (s71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32))))
  (:durative-action do_step33 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33))))
  (:durative-action do_step34 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s43)) (at start (s78)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34))))
  (:durative-action do_step35 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35))))
  (:durative-action do_step36 (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s70)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36))))
  (:durative-action do_step37 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s49)) (at start (s65)) (at start (s70)) (at start (s83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37))))
  (:durative-action do_step38 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s60)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38))))
  (:durative-action do_step39 (?s - step)
    :duration 9000
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s16)) (at start (s51)) (at start (s59)) (at start (s62)) (at start (s71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39))))
  (:durative-action do_step40 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s60)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40))))
  (:durative-action do_step41 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s27)) (at start (s28)) (at start (s32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41))))
  (:durative-action do_step42 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42))))
  (:durative-action do_step43 (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43))))
  (:durative-action do_step44 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s34)) (at start (s62)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44))))
  (:durative-action do_step45 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s11)) (at start (s38)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45))))
  (:durative-action do_step46 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s34)) (at start (s82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46))))
  (:durative-action do_step47 (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47))))
  (:durative-action do_step48 (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (s12)) (at start (s42)) (at start (s46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48))))
  (:durative-action do_step49 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49))))
  (:durative-action do_step50 (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s14)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50))))
  (:durative-action do_step51 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s37)) (at start (s40)) (at start (s72)) (at start (s87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51))))
  (:durative-action do_step52 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s6)) (at start (s46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52))))
  (:durative-action do_step53 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53))))
  (:durative-action do_step54 (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54))))
  (:durative-action do_step55 (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (s33)) (at start (s50)) (at start (s78)) (at start (s83)) (at start (s87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55))))
  (:durative-action do_step56 (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s52)) (at start (s53)) (at start (s76)) (at start (s87)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56))))
  (:durative-action do_step57 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57))))
  (:durative-action do_step58 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s45)) (at start (s49)) (at start (s79)) (at start (s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58))))
  (:durative-action do_step59 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s2)) (at start (s3)) (at start (s13)) (at start (s25)) (at start (s26)) (at start (s49)) (at start (s63)) (at start (s65)) (at start (s70)) (at start (s77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59))))
  (:durative-action do_step60 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60))))
  (:durative-action do_step61 (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s49)) (at start (s60)) (at start (s76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61))))
  (:durative-action do_step62 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s14)) (at start (s20)) (at start (s37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62))))
  (:durative-action do_step63 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s6)) (at start (s34)) (at start (s56)) (at start (s57)) (at start (s75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63))))
  (:durative-action do_step64 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64))))
  (:durative-action do_step65 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s81)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65))))
  (:durative-action do_step66 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s11)) (at start (s45)) (at start (s65)) (at start (s67)) (at start (s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66))))
  (:durative-action do_step67 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67))))
  (:durative-action do_step68 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s2)) (at start (s13)) (at start (s16)) (at start (s40)) (at start (s83)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68))))
  (:durative-action do_step69 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s24)) (at start (s30)) (at start (s33)) (at start (s40)) (at start (s55)) (at start (s60)) (at start (s74)) (at start (s82)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69))))
  (:durative-action do_step70 (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70))))
  (:durative-action do_step71 (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s71))))
  (:durative-action do_step72 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s6)) (at start (s37)) (at start (s55)) (at start (s67)) (at start (s77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s72))))
  (:durative-action do_step73 (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s73))))
  (:durative-action do_step74 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s60)) (at start (s70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s74))))
  (:durative-action do_step75 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s75))))
  (:durative-action do_step76 (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s21)) (at start (s64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s76))))
  (:durative-action do_step77 (?s - step)
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s77))))
  (:durative-action do_step78 (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s78))))
  (:durative-action do_step79 (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (s71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s79))))
  (:durative-action do_step80 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s80))))
  (:durative-action do_step81 (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s81))))
  (:durative-action do_step82 (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s17)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s82))))
  (:durative-action do_step83 (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s83))))
  (:durative-action do_step84 (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s52)) (at start (s61)) (at start (s89)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s84))))
  (:durative-action do_step85 (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s90)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s85))))
  (:durative-action do_step86 (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s86))))
  (:durative-action do_step87 (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s87))))
  (:durative-action do_step88 (?s - step)
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s88))))
  (:durative-action do_step89 (?s - step)
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s89))))
  (:durative-action do_step90 (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s20)) (at start (s75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s90))))
)
