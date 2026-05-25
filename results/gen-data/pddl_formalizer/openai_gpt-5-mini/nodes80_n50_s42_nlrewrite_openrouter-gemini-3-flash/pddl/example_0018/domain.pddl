(define (domain army_enlistment)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_s1) (completed_s2) (completed_s3) (completed_s4) (completed_s5)
    (completed_s6) (completed_s7) (completed_s8) (completed_s9) (completed_s10)
    (completed_s11) (completed_s12) (completed_s13) (completed_s14) (completed_s15)
    (completed_s16) (completed_s17) (completed_s18) (completed_s19) (completed_s20)
    (completed_s21) (completed_s22) (completed_s23) (completed_s24) (completed_s25)
    (completed_s26) (completed_s27) (completed_s28) (completed_s29) (completed_s30)
    (completed_s31) (completed_s32) (completed_s33) (completed_s34) (completed_s35)
    (completed_s36) (completed_s37) (completed_s38) (completed_s39) (completed_s40)
    (completed_s41) (completed_s42) (completed_s43) (completed_s44) (completed_s45)
    (completed_s46) (completed_s47) (completed_s48) (completed_s49) (completed_s50)
    (completed_s51) (completed_s52) (completed_s53) (completed_s54) (completed_s55)
    (completed_s56) (completed_s57) (completed_s58) (completed_s59) (completed_s60)
    (completed_s61) (completed_s62) (completed_s63) (completed_s64) (completed_s65)
    (completed_s66) (completed_s67) (completed_s68) (completed_s69) (completed_s70)
    (completed_s71) (completed_s72) (completed_s73) (completed_s74) (completed_s75)
    (completed_s76) (completed_s77) (completed_s78) (completed_s79) (completed_s80)
  )

  ; Each durative action corresponds to one step. Conditions enforce predecessor completion via the
  ; unique semantic predicates (completed_sN) as (at start ...) requirements.

  (:durative-action do-step1
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s1)))
  )

  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s20)) (at start (completed_s31)) (at start (completed_s51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s2)))
  )

  (:durative-action do-step3 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s39)) (at start (completed_s66)) (at start (completed_s79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s3))))

  (:durative-action do-step4 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s16)) (at start (completed_s18)) (at start (completed_s45)) (at start (completed_s51)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s4))))

  (:durative-action do-step5 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s18)) (at start (completed_s35)) (at start (completed_s62)) (at start (completed_s76)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s5))))

  (:durative-action do-step6 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s5)) (at start (completed_s32)) (at start (completed_s53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s6))))

  (:durative-action do-step7 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s16)) (at start (completed_s20)) (at start (completed_s62)) (at start (completed_s70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s7))))

  (:durative-action do-step8 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s27)) (at start (completed_s37)) (at start (completed_s72)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s8))))

  (:durative-action do-step9 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (completed_s27)) (at start (completed_s77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s9))))

  (:durative-action do-step10 :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s72)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s10))))

  (:durative-action do-step11 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s9)) (at start (completed_s31)) (at start (completed_s68)) (at start (completed_s70)) (at start (completed_s73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s11))))

  (:durative-action do-step12 :parameters (?s - step) :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s12))))

  (:durative-action do-step13 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s13))))

  (:durative-action do-step14 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s34)) (at start (completed_s59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s14))))

  (:durative-action do-step15 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s5)) (at start (completed_s25)) (at start (completed_s36)) (at start (completed_s71)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s15))))

  (:durative-action do-step16 :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (completed_s51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s16))))

  (:durative-action do-step17 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s17))))

  (:durative-action do-step18 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s18))))

  (:durative-action do-step19 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s1)) (at start (completed_s3)) (at start (completed_s26)) (at start (completed_s45)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s19))))

  (:durative-action do-step20 :parameters (?s - step) :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s20))))

  (:durative-action do-step21 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s7)) (at start (completed_s23)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s21))))

  (:durative-action do-step22 :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s18)) (at start (completed_s62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s22))))

  (:durative-action do-step23 :parameters (?s - step) :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s23))))

  (:durative-action do-step24 :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s20)) (at start (completed_s64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s24))))

  (:durative-action do-step25 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s25))))

  (:durative-action do-step26 :parameters (?s - step) :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s26))))

  (:durative-action do-step27 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s3)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s27))))

  (:durative-action do-step28 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s28))))

  (:durative-action do-step29 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (completed_s25)) (at start (completed_s30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s29))))

  (:durative-action do-step30 :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (completed_s18)) (at start (completed_s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s30))))

  (:durative-action do-step31 :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s26)) (at start (completed_s35)) (at start (completed_s77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s31))))

  (:durative-action do-step32 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s49)) (at start (completed_s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s32))))

  (:durative-action do-step33 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s33))))

  (:durative-action do-step34 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s34))))

  (:durative-action do-step35 :parameters (?s - step) :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s35))))

  (:durative-action do-step36 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s17)) (at start (completed_s31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s36))))

  (:durative-action do-step37 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s37))))

  (:durative-action do-step38 :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (completed_s5)) (at start (completed_s12)) (at start (completed_s26)) (at start (completed_s61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s38))))

  (:durative-action do-step39 :parameters (?s - step) :duration (= ?duration 2419200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s66)) (at start (completed_s79)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s39))))

  (:durative-action do-step40 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s8)) (at start (completed_s12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s40))))

  (:durative-action do-step41 :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s41))))

  (:durative-action do-step42 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s42))))

  (:durative-action do-step43 :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (completed_s13)) (at start (completed_s24)) (at start (completed_s27)) (at start (completed_s34)) (at start (completed_s36)) (at start (completed_s71)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s43))))

  (:durative-action do-step44 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s16)) (at start (completed_s38)) (at start (completed_s41)) (at start (completed_s71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s44))))

  (:durative-action do-step45 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s45))))

  (:durative-action do-step46 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s46))))

  (:durative-action do-step47 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s28)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s47))))

  (:durative-action do-step48 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s1)) (at start (completed_s3)) (at start (completed_s12)) (at start (completed_s25)) (at start (completed_s33)) (at start (completed_s34)) (at start (completed_s43)) (at start (completed_s57)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s48))))

  (:durative-action do-step49 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s49))))

  (:durative-action do-step50 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (completed_s19)) (at start (completed_s39)) (at start (completed_s40)) (at start (completed_s78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s50))))

  (:durative-action do-step51 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s51))))

  (:durative-action do-step52 :parameters (?s - step) :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s52))))

  (:durative-action do-step53 :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s41)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s53))))

  (:durative-action do-step54 :parameters (?s - step) :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s54))))

  (:durative-action do-step55 :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s55))))

  (:durative-action do-step56 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s25)) (at start (completed_s59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s56))))

  (:durative-action do-step57 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s11)) (at start (completed_s40)) (at start (completed_s60)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s57))))

  (:durative-action do-step58 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s58))))

  (:durative-action do-step59 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s17)) (at start (completed_s69)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s59))))

  (:durative-action do-step60 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (completed_s14)) (at start (completed_s34)) (at start (completed_s41)) (at start (completed_s49)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s60))))

  (:durative-action do-step61 :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s61))))

  (:durative-action do-step62 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s62))))

  (:durative-action do-step63 :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s74)) (at start (completed_s73)) (at start (completed_s77)) (at start (completed_s59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s63))))

  (:durative-action do-step64 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s64))))

  (:durative-action do-step65 :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (completed_s31)) (at start (completed_s40)) (at start (completed_s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s65))))

  (:durative-action do-step66 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s66))))

  (:durative-action do-step67 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s18)) (at start (completed_s72)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s67))))

  (:durative-action do-step68 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s46)) (at start (completed_s62)) (at start (completed_s76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s68))))

  (:durative-action do-step69 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s5)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s69))))

  (:durative-action do-step70 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s12)) (at start (completed_s20)) (at start (completed_s62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s70))))

  (:durative-action do-step71 :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s21)) (at start (completed_s30)) (at start (completed_s39)) (at start (completed_s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s71))))

  (:durative-action do-step72 :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (completed_s28)) (at start (completed_s74)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s72))))

  (:durative-action do-step73 :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (completed_s13)) (at start (completed_s27)) (at start (completed_s77)) (at start (completed_s59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s73))))

  (:durative-action do-step74 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s18)) (at start (completed_s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s74))))

  (:durative-action do-step75 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s8)) (at start (completed_s20)) (at start (completed_s66)) (at start (completed_s76)) (at start (completed_s63)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s75))))

  (:durative-action do-step76 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s76))))

  (:durative-action do-step77 :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s77))))

  (:durative-action do-step78 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (completed_s24)) (at start (completed_s37)) (at start (completed_s49)) (at start (completed_s76)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s78))))

  (:durative-action do-step79 :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s3)) (at start (completed_s77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s79))))

  (:durative-action do-step80 :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (completed_s72)) (at start (completed_s80)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (completed_s80))))

)
