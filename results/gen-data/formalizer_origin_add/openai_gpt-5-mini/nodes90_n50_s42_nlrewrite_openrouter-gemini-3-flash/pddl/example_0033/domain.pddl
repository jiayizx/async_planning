(define (domain grill_seasoning)
  (:requirements :typing :durative-actions)
  (:types dummy)
  (:predicates
    ;; pending flags (one per step)
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65) (pending66) (pending67) (pending68) (pending69) (pending70)
    (pending71) (pending72) (pending73) (pending74) (pending75) (pending76) (pending77) (pending78) (pending79) (pending80)
    (pending81) (pending82) (pending83) (pending84) (pending85) (pending86) (pending87) (pending88) (pending89) (pending90)

    ;; generic done flags required by goals (one per step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
    (done81) (done82) (done83) (done84) (done85) (done86) (done87) (done88) (done89) (done90)

    ;; unique semantic predicates produced by each action
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
    (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
    (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done)
    (s81_done) (s82_done) (s83_done) (s84_done) (s85_done) (s86_done) (s87_done) (s88_done) (s89_done) (s90_done)
  )

  ;; one durative-action per step; each action clears its pending flag and sets its done and semantic predicates
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending1)) (at start (s27_done)) (at start (s30_done)) (at start (s42_done)) (at start (s54_done)) (at start (s68_done)) (at start (s21_done)) (at start (s38_done)))
    :effect (and (at start (not (pending1))) (at end (done1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending2)) (at start (s30_done)) (at start (s38_done)) (at start (s21_done)) (at start (s27_done)) (at start (s28_done)) (at start (s29_done)) (at start (s68_done)) (at start (s86_done)))
    :effect (and (at start (not (pending2))) (at end (done2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending3)) (at start (s41_done)) (at start (s21_done)) (at start (s75_done)) (at start (s2_done)))
    :effect (and (at start (not (pending3))) (at end (done3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending4)) (at start (s73_done)))
    :effect (and (at start (not (pending4))) (at end (done4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending5)) (at start (s1_done)) (at start (s15_done)) (at start (s28_done)))
    :effect (and (at start (not (pending5))) (at end (done5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending6)) (at start (s10_done)) (at start (s18_done)) (at start (s85_done)))
    :effect (and (at start (not (pending6))) (at end (done6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending7)) (at start (s51_done)) (at start (s57_done)) (at start (s72_done)) (at start (s75_done)))
    :effect (and (at start (not (pending7))) (at end (done7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending8)) (at start (s41_done)) (at start (s34_done)) (at start (s31_done)) (at start (s86_done)))
    :effect (and (at start (not (pending8))) (at end (done8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending9)) (at start (s26_done)))
    :effect (and (at start (not (pending9))) (at end (done9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending10)) (at start (s47_done)) (at start (s48_done)) (at start (s89_done)))
    :effect (and (at start (not (pending10))) (at end (done10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending11)) (at start (s18_done)) (at start (s40_done)) (at start (s56_done)))
    :effect (and (at start (not (pending11))) (at end (done11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending12)) (at start (s71_done)))
    :effect (and (at start (not (pending12))) (at end (done12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending13)) (at start (s21_done)))
    :effect (and (at start (not (pending13))) (at end (done13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending14)))
    :effect (and (at start (not (pending14))) (at end (done14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending15)) (at start (s18_done)) (at start (s32_done)) (at start (s72_done)))
    :effect (and (at start (not (pending15))) (at end (done15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending16)) (at start (s48_done)))
    :effect (and (at start (not (pending16))) (at end (done16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending17)) (at start (s48_done)) (at start (s86_done)))
    :effect (and (at start (not (pending17))) (at end (done17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending18)) (at start (s12_done)) (at start (s40_done)))
    :effect (and (at start (not (pending18))) (at end (done18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending19)) (at start (s20_done)) (at start (s38_done)) (at start (s40_done)))
    :effect (and (at start (not (pending19))) (at end (done19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending20)) (at start (s22_done)) (at start (s42_done)))
    :effect (and (at start (not (pending20))) (at end (done20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending21)))
    :effect (and (at start (not (pending21))) (at end (done21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending22)) (at start (s18_done)))
    :effect (and (at start (not (pending22))) (at end (done22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending23)) (at start (s16_done)) (at start (s19_done)) (at start (s39_done)) (at start (s41_done)) (at start (s52_done)) (at start (s75_done)) (at start (s81_done)))
    :effect (and (at start (not (pending23))) (at end (done23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending24)) (at start (s12_done)) (at start (s15_done)) (at start (s21_done)) (at start (s25_done)) (at start (s49_done)) (at start (s71_done)) (at start (s47_done)))
    :effect (and (at start (not (pending24))) (at end (done24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending25)) (at start (s20_done)) (at start (s42_done)) (at start (s47_done)) (at start (s90_done)))
    :effect (and (at start (not (pending25))) (at end (done25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pending26)))
    :effect (and (at start (not (pending26))) (at end (done26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending27)) (at start (s18_done)))
    :effect (and (at start (not (pending27))) (at end (done27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending28)) (at start (s37_done)) (at start (s71_done)))
    :effect (and (at start (not (pending28))) (at end (done28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending29)) (at start (s16_done)) (at start (s20_done)) (at start (s26_done)))
    :effect (and (at start (not (pending29))) (at end (done29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending30)) (at start (s81_done)))
    :effect (and (at start (not (pending30))) (at end (done30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending31)) (at start (s11_done)) (at start (s79_done)) (at start (s82_done)))
    :effect (and (at start (not (pending31))) (at end (done31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending32)) (at start (s16_done)) (at start (s81_done)))
    :effect (and (at start (not (pending32))) (at end (done32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending33)) (at start (s38_done)))
    :effect (and (at start (not (pending33))) (at end (done33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending34)) (at start (s20_done)) (at start (s30_done)) (at start (s33_done)) (at start (s56_done)) (at start (s64_done)) (at start (s83_done)) (at start (s54_done)))
    :effect (and (at start (not (pending34))) (at end (done34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending35)) (at start (s16_done)) (at start (s17_done)))
    :effect (and (at start (not (pending35))) (at end (done35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending36)) (at start (s15_done)) (at start (s47_done)) (at start (s68_done)) (at start (s74_done)))
    :effect (and (at start (not (pending36))) (at end (done36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending37)) (at start (s21_done)))
    :effect (and (at start (not (pending37))) (at end (done37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending38)))
    :effect (and (at start (not (pending38))) (at end (done38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending39)))
    :effect (and (at start (not (pending39))) (at end (done39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending40)) (at start (s26_done)) (at start (s42_done)))
    :effect (and (at start (not (pending40))) (at end (done40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending41)) (at start (s4_done)) (at start (s19_done)) (at start (s40_done)) (at start (s54_done)) (at start (s61_done)))
    :effect (and (at start (not (pending41))) (at end (done41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending42)) (at start (s12_done)))
    :effect (and (at start (not (pending42))) (at end (done42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending43)) (at start (s29_done)) (at start (s36_done)) (at start (s52_done)) (at start (s75_done)))
    :effect (and (at start (not (pending43))) (at end (done43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending44)) (at start (s19_done)) (at start (s68_done)))
    :effect (and (at start (not (pending44))) (at end (done44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending45)) (at start (s9_done)) (at start (s22_done)) (at start (s81_done)))
    :effect (and (at start (not (pending45))) (at end (done45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending46)) (at start (s36_done)) (at start (s49_done)) (at start (s77_done)))
    :effect (and (at start (not (pending46))) (at end (done46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending47)))
    :effect (and (at start (not (pending47))) (at end (done47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending48)) (at start (s86_done)))
    :effect (and (at start (not (pending48))) (at end (done48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending49)) (at start (s19_done)) (at start (s75_done)))
    :effect (and (at start (not (pending49))) (at end (done49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending50)) (at start (s1_done)) (at start (s86_done)))
    :effect (and (at start (not (pending50))) (at end (done50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending51)) (at start (s32_done)) (at start (s56_done)) (at start (s74_done)) (at start (s77_done)))
    :effect (and (at start (not (pending51))) (at end (done51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending52)) (at start (s39_done)))
    :effect (and (at start (not (pending52))) (at end (done52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending53)) (at start (s6_done)) (at start (s28_done)) (at start (s74_done)))
    :effect (and (at start (not (pending53))) (at end (done53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending54)) (at start (s47_done)) (at start (s52_done)) (at start (s81_done)))
    :effect (and (at start (not (pending54))) (at end (done54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending55)) (at start (s58_done)) (at start (s75_done)))
    :effect (and (at start (not (pending55))) (at end (done55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending56)) (at start (s14_done)))
    :effect (and (at start (not (pending56))) (at end (done56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending57)) (at start (s11_done)) (at start (s19_done)))
    :effect (and (at start (not (pending57))) (at end (done57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending58)) (at start (s19_done)) (at start (s68_done)))
    :effect (and (at start (not (pending58))) (at end (done58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending59)) (at start (s10_done)) (at start (s11_done)) (at start (s34_done)) (at start (s56_done)) (at start (s76_done)) (at start (s83_done)))
    :effect (and (at start (not (pending59))) (at end (done59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending60)) (at start (s18_done)) (at start (s72_done)))
    :effect (and (at start (not (pending60))) (at end (done60)) (at end (s60_done)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending61)) (at start (s20_done)) (at start (s75_done)))
    :effect (and (at start (not (pending61))) (at end (done61)) (at end (s61_done)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending62)) (at start (s9_done)) (at start (s17_done)) (at start (s18_done)) (at start (s71_done)) (at start (s78_done)))
    :effect (and (at start (not (pending62))) (at end (done62)) (at end (s62_done)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending63)) (at start (s23_done)) (at start (s46_done)) (at start (s75_done)))
    :effect (and (at start (not (pending63))) (at end (done63)) (at end (s63_done)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending64)) (at start (s26_done)) (at start (s17_done)))
    :effect (and (at start (not (pending64))) (at end (done64)) (at end (s64_done)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending65)) (at start (s7_done)) (at start (s23_done)) (at start (s39_done)) (at start (s48_done)) (at start (s61_done)) (at start (s78_done)))
    :effect (and (at start (not (pending65))) (at end (done65)) (at end (s65_done)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending66)) (at start (s49_done)) (at start (s71_done)))
    :effect (and (at start (not (pending66))) (at end (done66)) (at end (s66_done)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending67)) (at start (s49_done)) (at start (s57_done)) (at start (s79_done)))
    :effect (and (at start (not (pending67))) (at end (done67)) (at end (s67_done)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending68)))
    :effect (and (at start (not (pending68))) (at end (done68)) (at end (s68_done)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending69)) (at start (s15_done)) (at start (s26_done)) (at start (s27_done)))
    :effect (and (at start (not (pending69))) (at end (done69)) (at end (s69_done)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending70)) (at start (s4_done)) (at start (s54_done)) (at start (s41_done)))
    :effect (and (at start (not (pending70))) (at end (done70)) (at end (s70_done)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending71)))
    :effect (and (at start (not (pending71))) (at end (done71)) (at end (s71_done)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending72)) (at start (s26_done)) (at start (s89_done)))
    :effect (and (at start (not (pending72))) (at end (done72)) (at end (s72_done)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending73)) (at start (s12_done)) (at start (s17_done)) (at start (s39_done)))
    :effect (and (at start (not (pending73))) (at end (done73)) (at end (s73_done)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending74)) (at start (s13_done)) (at start (s14_done)) (at start (s26_done)) (at start (s42_done)) (at start (s58_done)) (at start (s83_done)) (at start (s73_done)))
    :effect (and (at start (not (pending74))) (at end (done74)) (at end (s74_done)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending75)) (at start (s33_done)) (at start (s35_done)))
    :effect (and (at start (not (pending75))) (at end (done75)) (at end (s75_done)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending76)) (at start (s38_done)))
    :effect (and (at start (not (pending76))) (at end (done76)) (at end (s76_done)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending77)) (at start (s2_done)) (at start (s35_done)) (at start (s61_done)) (at start (s76_done)) (at start (s86_done)))
    :effect (and (at start (not (pending77))) (at end (done77)) (at end (s77_done)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending78)) (at start (s68_done)))
    :effect (and (at start (not (pending78))) (at end (done78)) (at end (s78_done)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending79)) (at start (s80_done)))
    :effect (and (at start (not (pending79))) (at end (done79)) (at end (s79_done)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending80)) (at start (s12_done)))
    :effect (and (at start (not (pending80))) (at end (done80)) (at end (s80_done)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending81)) (at start (s38_done)) (at start (s85_done)))
    :effect (and (at start (not (pending81))) (at end (done81)) (at end (s81_done)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending82)) (at start (s28_done)) (at start (s33_done)) (at start (s52_done)) (at start (s61_done)) (at start (s86_done)))
    :effect (and (at start (not (pending82))) (at end (done82)) (at end (s82_done)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending83)) (at start (s85_done)))
    :effect (and (at start (not (pending83))) (at end (done83)) (at end (s83_done)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending84)) (at start (s21_done)) (at start (s61_done)) (at start (s76_done)) (at start (s47_done)) (at start (s65_done)))
    :effect (and (at start (not (pending84))) (at end (done84)) (at end (s84_done)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending85)))
    :effect (and (at start (not (pending85))) (at end (done85)) (at end (s85_done)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending86)))
    :effect (and (at start (not (pending86))) (at end (done86)) (at end (s86_done)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending87)) (at start (s33_done)) (at start (s61_done)) (at start (s81_done)) (at start (s77_done)))
    :effect (and (at start (not (pending87))) (at end (done87)) (at end (s87_done)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending88)) (at start (s14_done)) (at start (s31_done)) (at start (s47_done)) (at start (s49_done)) (at start (s56_done)) (at start (s58_done)) (at start (s65_done)) (at start (s67_done)) (at start (s82_done)) (at start (s48_done)))
    :effect (and (at start (not (pending88))) (at end (done88)) (at end (s88_done)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending89)))
    :effect (and (at start (not (pending89))) (at end (done89)) (at end (s89_done)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending90)) (at start (s27_done)) (at start (s82_done)))
    :effect (and (at start (not (pending90))) (at end (done90)) (at end (s90_done)))
  )
)
