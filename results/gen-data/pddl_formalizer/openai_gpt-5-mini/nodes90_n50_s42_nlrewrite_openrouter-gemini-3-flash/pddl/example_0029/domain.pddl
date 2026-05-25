(define (domain hot-wings)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; identity predicates to map actions to step objects
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

    ;; unique semantic predicates produced by each step (one per step)
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6) (done_s7) (done_s8) (done_s9) (done_s10)
    (done_s11) (done_s12) (done_s13) (done_s14) (done_s15) (done_s16) (done_s17) (done_s18) (done_s19) (done_s20)
    (done_s21) (done_s22) (done_s23) (done_s24) (done_s25) (done_s26) (done_s27) (done_s28) (done_s29) (done_s30)
    (done_s31) (done_s32) (done_s33) (done_s34) (done_s35) (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (done_s41) (done_s42) (done_s43) (done_s44) (done_s45) (done_s46) (done_s47) (done_s48) (done_s49) (done_s50)
    (done_s51) (done_s52) (done_s53) (done_s54) (done_s55) (done_s56) (done_s57) (done_s58) (done_s59) (done_s60)
    (done_s61) (done_s62) (done_s63) (done_s64) (done_s65) (done_s66) (done_s67) (done_s68) (done_s69) (done_s70)
    (done_s71) (done_s72) (done_s73) (done_s74) (done_s75) (done_s76) (done_s77) (done_s78) (done_s79) (done_s80)
    (done_s81) (done_s82) (done_s83) (done_s84) (done_s85) (done_s86) (done_s87) (done_s88) (done_s89) (done_s90)
  )

  ;; One durative-action per step. Durations exactly as provided (seconds).

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)) (at start (done_s74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s1))) )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s2))) )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s3))) )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s4))) )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s5))) )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s6))) )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s7))) )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s8))) )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s9))) )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s10))) )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s11))) )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s12))) )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s13))) )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s14))) )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s15))) )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s16))) )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s17))) )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s18))) )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s19))) )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s20))) )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s21))) )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s22))) )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s23))) )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s24))) )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s25))) )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s26))) )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s27))) )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s28))) )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s29))) )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s30))) )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step31 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s31))) )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step32 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s32))) )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step33 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s33))) )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step34 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s34))) )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step35 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s35))) )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step36 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s36))) )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step37 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s37))) )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step38 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s38))) )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step39 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s39))) )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step40 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s40))) )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step41 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s41))) )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step42 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s42))) )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step43 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s43))) )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step44 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s44))) )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step45 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s45))) )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step46 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s46))) )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step47 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s47))) )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step48 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s48))) )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step49 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s49))) )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step50 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s50))) )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step51 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s51))) )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step52 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s52))) )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step53 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s53))) )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step54 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s54))) )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step55 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s55))) )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step56 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s56))) )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (is_step57 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s57))) )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step58 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s58))) )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step59 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s59))) )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step60 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s60))) )

  (:durative-action do_step61
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step61 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s61))) )

  (:durative-action do_step62
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (is_step62 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s62))) )

  (:durative-action do_step63
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step63 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s63))) )

  (:durative-action do_step64
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step64 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s64))) )

  (:durative-action do_step65
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step65 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s65))) )

  (:durative-action do_step66
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step66 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s66))) )

  (:durative-action do_step67
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step67 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s67))) )

  (:durative-action do_step68
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step68 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s68))) )

  (:durative-action do_step69
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step69 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s69))) )

  (:durative-action do_step70
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step70 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s70))) )

  (:durative-action do_step71
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step71 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s71))) )

  (:durative-action do_step72
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step72 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s72))) )

  (:durative-action do_step73
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step73 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s73))) )

  (:durative-action do_step74
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step74 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s74))) )

  (:durative-action do_step75
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step75 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s75))) )

  (:durative-action do_step76
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step76 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s76))) )

  (:durative-action do_step77
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step77 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s77))) )

  (:durative-action do_step78
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step78 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s78))) )

  (:durative-action do_step79
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step79 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s79))) )

  (:durative-action do_step80
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step80 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s80))) )

  (:durative-action do_step81
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step81 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s81))) )

  (:durative-action do_step82
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step82 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s82))) )

  (:durative-action do_step83
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step83 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s83))) )

  (:durative-action do_step84
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step84 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s84))) )

  (:durative-action do_step85
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (is_step85 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s85))) )

  (:durative-action do_step86
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step86 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s86))) )

  (:durative-action do_step87
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step87 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s87))) )

  (:durative-action do_step88
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step88 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s88))) )

  (:durative-action do_step89
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step89 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s89))) )

  (:durative-action do_step90
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step90 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s90))) )
)
