(define (domain boat-trip)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (unused1) (unused2) (unused3) (unused4) (unused5) (unused6) (unused7) (unused8) (unused9) (unused10)
  (unused11) (unused12) (unused13) (unused14) (unused15) (unused16) (unused17) (unused18) (unused19) (unused20)
  (unused21) (unused22) (unused23) (unused24) (unused25) (unused26) (unused27) (unused28) (unused29) (unused30)
  (unused31) (unused32) (unused33) (unused34) (unused35) (unused36) (unused37) (unused38) (unused39) (unused40)
  (unused41) (unused42) (unused43) (unused44) (unused45) (unused46) (unused47) (unused48) (unused49) (unused50)
  (unused51) (unused52) (unused53) (unused54) (unused55) (unused56) (unused57) (unused58) (unused59) (unused60)
  (unused61) (unused62) (unused63) (unused64) (unused65) (unused66) (unused67) (unused68) (unused69) (unused70)
  (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
  (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
  (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
  (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
  (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
  (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
  (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70)
 )
 (:durative-action do-step1
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused1)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused1))) (at end (step_done ?x)) (at end (s1))))
 (:durative-action do-step2
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused2)) (at start (s18)) (at start (s48)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused2))) (at end (step_done ?x)) (at end (s2))))
 (:durative-action do-step3
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused3)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused3))) (at end (step_done ?x)) (at end (s3))))
 (:durative-action do-step4
  :parameters (?x - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?x)) (at start (unused4)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused4))) (at end (step_done ?x)) (at end (s4))))
 (:durative-action do-step5
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (unused5)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused5))) (at end (step_done ?x)) (at end (s5))))
 (:durative-action do-step6
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused6)) (at start (s15)) (at start (s21)) (at start (s63)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused6))) (at end (step_done ?x)) (at end (s6))))
 (:durative-action do-step7
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused7)) (at start (s10)) (at start (s12)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused7))) (at end (step_done ?x)) (at end (s7))))
 (:durative-action do-step8
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused8)) (at start (s17)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused8))) (at end (step_done ?x)) (at end (s8))))
 (:durative-action do-step9
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused9)) (at start (s3)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused9))) (at end (step_done ?x)) (at end (s9))))
 (:durative-action do-step10
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused10)) (at start (s8)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused10))) (at end (step_done ?x)) (at end (s10))))
 (:durative-action do-step11
  :parameters (?x - step) :duration (= ?duration 28800)
  :condition (and (at start (step_pending ?x)) (at start (unused11)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused11))) (at end (step_done ?x)) (at end (s11))))
 (:durative-action do-step12
  :parameters (?x - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (unused12)) (at start (s36)) (at start (s51)) (at start (s66)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused12))) (at end (step_done ?x)) (at end (s12))))
 (:durative-action do-step13
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused13)) (at start (s8)) (at start (s34)) (at start (s50)) (at start (s53)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused13))) (at end (step_done ?x)) (at end (s13))))
 (:durative-action do-step14
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (unused14)) (at start (s9)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused14))) (at end (step_done ?x)) (at end (s14))))
 (:durative-action do-step15
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused15)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused15))) (at end (step_done ?x)) (at end (s15))))
 (:durative-action do-step16
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused16)) (at start (s21)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused16))) (at end (step_done ?x)) (at end (s16))))
 (:durative-action do-step17
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused17)) (at start (s1)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused17))) (at end (step_done ?x)) (at end (s17))))
 (:durative-action do-step18
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused18)) (at start (s28)) (at start (s55)) (at start (s63)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused18))) (at end (step_done ?x)) (at end (s18))))
 (:durative-action do-step19
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused19)) (at start (s2)) (at start (s9)) (at start (s51)) (at start (s55)) (at start (s57)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused19))) (at end (step_done ?x)) (at end (s19))))
 (:durative-action do-step20
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused20)) (at start (s12)) (at start (s61)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused20))) (at end (step_done ?x)) (at end (s20))))
 (:durative-action do-step21
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused21)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused21))) (at end (step_done ?x)) (at end (s21))))
 (:durative-action do-step22
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused22)) (at start (s9)) (at start (s52)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused22))) (at end (step_done ?x)) (at end (s22))))
 (:durative-action do-step23
  :parameters (?x - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (unused23)) (at start (s10)) (at start (s46)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused23))) (at end (step_done ?x)) (at end (s23))))
 (:durative-action do-step24
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused24)) (at start (s11)) (at start (s14)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused24))) (at end (step_done ?x)) (at end (s24))))
 (:durative-action do-step25
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused25)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused25))) (at end (step_done ?x)) (at end (s25))))
 (:durative-action do-step26
  :parameters (?x - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?x)) (at start (unused26)) (at start (s21)) (at start (s29)) (at start (s51)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused26))) (at end (step_done ?x)) (at end (s26))))
 (:durative-action do-step27
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused27)) (at start (s16)) (at start (s37)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused27))) (at end (step_done ?x)) (at end (s27))))
 (:durative-action do-step28
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused28)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused28))) (at end (step_done ?x)) (at end (s28))))
 (:durative-action do-step29
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused29)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused29))) (at end (step_done ?x)) (at end (s29))))
 (:durative-action do-step30
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused30)) (at start (s10)) (at start (s11)) (at start (s25)) (at start (s36)) (at start (s54)) (at start (s61)) (at start (s62)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused30))) (at end (step_done ?x)) (at end (s30))))
 (:durative-action do-step31
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused31)) (at start (s52)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused31))) (at end (step_done ?x)) (at end (s31))))
 (:durative-action do-step32
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused32)) (at start (s19)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused32))) (at end (step_done ?x)) (at end (s32))))
 (:durative-action do-step33
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (unused33)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused33))) (at end (step_done ?x)) (at end (s33))))
 (:durative-action do-step34
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused34)) (at start (s18)) (at start (s44)) (at start (s66)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused34))) (at end (step_done ?x)) (at end (s34))))
 (:durative-action do-step35
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused35)) (at start (s5)) (at start (s17)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused35))) (at end (step_done ?x)) (at end (s35))))
 (:durative-action do-step36
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused36)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused36))) (at end (step_done ?x)) (at end (s36))))
 (:durative-action do-step37
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused37)) (at start (s8)) (at start (s15)) (at start (s34)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused37))) (at end (step_done ?x)) (at end (s37))))
 (:durative-action do-step38
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused38)) (at start (s31)) (at start (s52)) (at start (s70)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused38))) (at end (step_done ?x)) (at end (s38))))
 (:durative-action do-step39
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused39)) (at start (s29)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused39))) (at end (step_done ?x)) (at end (s39))))
 (:durative-action do-step40
  :parameters (?x - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (unused40)) (at start (s34)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused40))) (at end (step_done ?x)) (at end (s40))))
 (:durative-action do-step41
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused41)) (at start (s3)) (at start (s39)) (at start (s60)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused41))) (at end (step_done ?x)) (at end (s41))))
 (:durative-action do-step42
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused42)) (at start (s7)) (at start (s31)) (at start (s38)) (at start (s49)) (at start (s50)) (at start (s52)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused42))) (at end (step_done ?x)) (at end (s42))))
 (:durative-action do-step43
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused43)) (at start (s19)) (at start (s22)) (at start (s27)) (at start (s50)) (at start (s62)) (at start (s63)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused43))) (at end (step_done ?x)) (at end (s43))))
 (:durative-action do-step44
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused44)) (at start (s2)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused44))) (at end (step_done ?x)) (at end (s44))))
 (:durative-action do-step45
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused45)) (at start (s3)) (at start (s38)) (at start (s44)) (at start (s66)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused45))) (at end (step_done ?x)) (at end (s45))))
 (:durative-action do-step46
  :parameters (?x - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?x)) (at start (unused46)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused46))) (at end (step_done ?x)) (at end (s46))))
 (:durative-action do-step47
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused47)) (at start (s1)) (at start (s3)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused47))) (at end (step_done ?x)) (at end (s47))))
 (:durative-action do-step48
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused48)) (at start (s25)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused48))) (at end (step_done ?x)) (at end (s48))))
 (:durative-action do-step49
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused49))) (at end (step_done ?x)) (at end (s49))))
 (:durative-action do-step50
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (unused50)) (at start (s65)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused50))) (at end (step_done ?x)) (at end (s50))))
 (:durative-action do-step51
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused51)) (at start (s15)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused51))) (at end (step_done ?x)) (at end (s51))))
 (:durative-action do-step52
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused52)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused52))) (at end (step_done ?x)) (at end (s52))))
 (:durative-action do-step53
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused53)) (at start (s29)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused53))) (at end (step_done ?x)) (at end (s53))))
 (:durative-action do-step54
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused54)) (at start (s26)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused54))) (at end (step_done ?x)) (at end (s54))))
 (:durative-action do-step55
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused55)) (at start (s5)) (at start (s33)) (at start (s48)) (at start (s52)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused55))) (at end (step_done ?x)) (at end (s55))))
 (:durative-action do-step56
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused56)) (at start (s2)) (at start (s18)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused56))) (at end (step_done ?x)) (at end (s56))))
 (:durative-action do-step57
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused57)) (at start (s3)) (at start (s18)) (at start (s22)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused57))) (at end (step_done ?x)) (at end (s57))))
 (:durative-action do-step58
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused58)) (at start (s13)) (at start (s68)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused58))) (at end (step_done ?x)) (at end (s58))))
 (:durative-action do-step59
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (unused59)) (at start (s33)) (at start (s51)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused59))) (at end (step_done ?x)) (at end (s59))))
 (:durative-action do-step60
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused60)) (at start (s3)) (at start (s4)) (at start (s7)) (at start (s34)) (at start (s54)) (at start (s65)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused60))) (at end (step_done ?x)) (at end (s60))))
 (:durative-action do-step61
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (unused61)) (at start (s1)) (at start (s7)) (at start (s32)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused61))) (at end (step_done ?x)) (at end (s61))))
 (:durative-action do-step62
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused62)) (at start (s10)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused62))) (at end (step_done ?x)) (at end (s62))))
 (:durative-action do-step63
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused63)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused63))) (at end (step_done ?x)) (at end (s63))))
 (:durative-action do-step64
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (unused64)) (at start (s16)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused64))) (at end (step_done ?x)) (at end (s64))))
 (:durative-action do-step65
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused65)) (at start (s31)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused65))) (at end (step_done ?x)) (at end (s65))))
 (:durative-action do-step66
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused66)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused66))) (at end (step_done ?x)) (at end (s66))))
 (:durative-action do-step67
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (unused67)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused67))) (at end (step_done ?x)) (at end (s67))))
 (:durative-action do-step68
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (unused68)) (at start (s5)) (at start (s15)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused68))) (at end (step_done ?x)) (at end (s68))))
 (:durative-action do-step69
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (unused69)) (at start (s18)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused69))) (at end (step_done ?x)) (at end (s69))))
 (:durative-action do-step70
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (unused70)) (at start (s33)) (at start (s50)) (at start (s67)))
  :effect (and (at start (not (step_pending ?x))) (at start (not (unused70))) (at end (step_done ?x)) (at end (s70))))
)