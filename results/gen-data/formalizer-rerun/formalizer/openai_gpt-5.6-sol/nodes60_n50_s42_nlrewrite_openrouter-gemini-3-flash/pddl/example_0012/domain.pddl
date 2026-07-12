(define (domain bow-tie)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assigned1 ?s - step) (assigned2 ?s - step) (assigned3 ?s - step)
    (assigned4 ?s - step) (assigned5 ?s - step) (assigned6 ?s - step)
    (assigned7 ?s - step) (assigned8 ?s - step) (assigned9 ?s - step)
    (assigned10 ?s - step) (assigned11 ?s - step) (assigned12 ?s - step)
    (assigned13 ?s - step) (assigned14 ?s - step) (assigned15 ?s - step)
    (assigned16 ?s - step) (assigned17 ?s - step) (assigned18 ?s - step)
    (assigned19 ?s - step) (assigned20 ?s - step) (assigned21 ?s - step)
    (assigned22 ?s - step) (assigned23 ?s - step) (assigned24 ?s - step)
    (assigned25 ?s - step) (assigned26 ?s - step) (assigned27 ?s - step)
    (assigned28 ?s - step) (assigned29 ?s - step) (assigned30 ?s - step)
    (assigned31 ?s - step) (assigned32 ?s - step) (assigned33 ?s - step)
    (assigned34 ?s - step) (assigned35 ?s - step) (assigned36 ?s - step)
    (assigned37 ?s - step) (assigned38 ?s - step) (assigned39 ?s - step)
    (assigned40 ?s - step) (assigned41 ?s - step) (assigned42 ?s - step)
    (assigned43 ?s - step) (assigned44 ?s - step) (assigned45 ?s - step)
    (assigned46 ?s - step) (assigned47 ?s - step) (assigned48 ?s - step)
    (assigned49 ?s - step) (assigned50 ?s - step) (assigned51 ?s - step)
    (assigned52 ?s - step) (assigned53 ?s - step) (assigned54 ?s - step)
    (assigned55 ?s - step) (assigned56 ?s - step) (assigned57 ?s - step)
    (assigned58 ?s - step) (assigned59 ?s - step) (assigned60 ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
    (bow_tie_complete)
  )

  (:durative-action do_step1
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned1 ?x)) (at start (s31)) (at start (s46)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
  (:durative-action do_step2
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned2 ?x)) (at start (s50)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
  (:durative-action do_step3
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned3 ?x)) (at start (s53)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
  (:durative-action do_step4
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned4 ?x)) (at start (s29)) (at start (s59)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
  (:durative-action do_step5
    :parameters (?x - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?x)) (at start (assigned5 ?x)) (at start (s1)) (at start (s41)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
  (:durative-action do_step6
    :parameters (?x - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?x)) (at start (assigned6 ?x)) (at start (s3)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
  (:durative-action do_step7
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned7 ?x)) (at start (s12)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
  (:durative-action do_step8
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned8 ?x)) (at start (s6)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
  (:durative-action do_step9
    :parameters (?x - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?x)) (at start (assigned9 ?x)) (at start (s1)) (at start (s8)) (at start (s10)) (at start (s36)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
  (:durative-action do_step10
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned10 ?x)) (at start (s14)) (at start (s26)) (at start (s27)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
  (:durative-action do_step11
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned11 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
  (:durative-action do_step12
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (assigned12 ?x)) (at start (s2)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
  (:durative-action do_step13
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (assigned13 ?x)) (at start (s3)) (at start (s6)) (at start (s10)) (at start (s21)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
  (:durative-action do_step14
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned14 ?x)) (at start (s29)) (at start (s56)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
  (:durative-action do_step15
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (assigned15 ?x)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
  (:durative-action do_step16
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (assigned16 ?x)) (at start (s49)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
  (:durative-action do_step17
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned17 ?x)) (at start (s35)) (at start (s50)) (at start (s55)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
  (:durative-action do_step18
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned18 ?x)) (at start (s59)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
  (:durative-action do_step19
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (assigned19 ?x)) (at start (s20)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
  (:durative-action do_step20
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned20 ?x)) (at start (s46)) (at start (s58)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
  (:durative-action do_step21
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned21 ?x)) (at start (s11)) (at start (s53)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
  (:durative-action do_step22
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned22 ?x)) (at start (s9)) (at start (s44)) (at start (s60)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22)) (at end (bow_tie_complete))))
  (:durative-action do_step23
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned23 ?x)) (at start (s29)) (at start (s52)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
  (:durative-action do_step24
    :parameters (?x - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?x)) (at start (assigned24 ?x)) (at start (s21)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
  (:durative-action do_step25
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned25 ?x)) (at start (s11)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
  (:durative-action do_step26
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned26 ?x)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
  (:durative-action do_step27
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned27 ?x)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
  (:durative-action do_step28
    :parameters (?x - step) :duration (= ?duration 420)
    :condition (and (at start (step_pending ?x)) (at start (assigned28 ?x)) (at start (s5)) (at start (s8)) (at start (s34)) (at start (s49)) (at start (s56)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
  (:durative-action do_step29
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned29 ?x)) (at start (s16)) (at start (s49)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
  (:durative-action do_step30
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned30 ?x)) (at start (s50)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
  (:durative-action do_step31
    :parameters (?x - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?x)) (at start (assigned31 ?x)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
  (:durative-action do_step32
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (assigned32 ?x)) (at start (s5)) (at start (s7)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
  (:durative-action do_step33
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned33 ?x)) (at start (s13)) (at start (s29)) (at start (s51)) (at start (s55)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
  (:durative-action do_step34
    :parameters (?x - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?x)) (at start (assigned34 ?x)) (at start (s6)) (at start (s7)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
  (:durative-action do_step35
    :parameters (?x - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?x)) (at start (assigned35 ?x)) (at start (s23)) (at start (s24)) (at start (s39)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
  (:durative-action do_step36
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned36 ?x)) (at start (s7)) (at start (s12)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
  (:durative-action do_step37
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned37 ?x)) (at start (s12)) (at start (s43)) (at start (s52)) (at start (s54)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
  (:durative-action do_step38
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned38 ?x)) (at start (s14)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
  (:durative-action do_step39
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned39 ?x)) (at start (s31)) (at start (s34)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
  (:durative-action do_step40
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned40 ?x)) (at start (s12)) (at start (s21)) (at start (s56)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
  (:durative-action do_step41
    :parameters (?x - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?x)) (at start (assigned41 ?x)) (at start (s4)) (at start (s25)) (at start (s48)) (at start (s49)) (at start (s53)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
  (:durative-action do_step42
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned42 ?x)) (at start (s17)) (at start (s34)) (at start (s39)) (at start (s52)) (at start (s53)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
  (:durative-action do_step43
    :parameters (?x - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?x)) (at start (assigned43 ?x)) (at start (s13)) (at start (s20)) (at start (s44)) (at start (s52)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
  (:durative-action do_step44
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned44 ?x)) (at start (s12)) (at start (s46)) (at start (s59)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
  (:durative-action do_step45
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned45 ?x)) (at start (s18)) (at start (s19)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
  (:durative-action do_step46
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (assigned46 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
  (:durative-action do_step47
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned47 ?x)) (at start (s3)) (at start (s5)) (at start (s8)) (at start (s24)) (at start (s26)) (at start (s54)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
  (:durative-action do_step48
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (assigned48 ?x)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
  (:durative-action do_step49
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned49 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
  (:durative-action do_step50
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned50 ?x)) (at start (s11)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s50))))
  (:durative-action do_step51
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (assigned51 ?x)) (at start (s5)) (at start (s36)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s51))))
  (:durative-action do_step52
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (assigned52 ?x)) (at start (s14)) (at start (s46)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s52))))
  (:durative-action do_step53
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned53 ?x)) (at start (s11)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s53))))
  (:durative-action do_step54
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (assigned54 ?x)) (at start (s12)) (at start (s45)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s54))))
  (:durative-action do_step55
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (assigned55 ?x)) (at start (s12)) (at start (s24)) (at start (s46)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s55))))
  (:durative-action do_step56
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (assigned56 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s56))))
  (:durative-action do_step57
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (assigned57 ?x)) (at start (s26)) (at start (s33)) (at start (s36)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s57))))
  (:durative-action do_step58
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned58 ?x)) (at start (s36)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s58))))
  (:durative-action do_step59
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned59 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s59))))
  (:durative-action do_step60
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (assigned60 ?x)) (at start (s40)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s60))))
)