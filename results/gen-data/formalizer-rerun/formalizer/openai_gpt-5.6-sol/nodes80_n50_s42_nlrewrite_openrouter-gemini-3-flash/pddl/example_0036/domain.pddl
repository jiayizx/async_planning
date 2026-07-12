(define (domain apartment)
  (:requirements :typing :durative-actions)
  (:types
    step
    s1t s2t s3t s4t s5t s6t s7t s8t s9t s10t
    s11t s12t s13t s14t s15t s16t s17t s18t s19t s20t
    s21t s22t s23t s24t s25t s26t s27t s28t s29t s30t
    s31t s32t s33t s34t s35t s36t s37t s38t s39t s40t
    s41t s42t s43t s44t s45t s46t s47t s48t s49t s50t
    s51t s52t s53t s54t s55t s56t s57t s58t s59t s60t
    s61t s62t s63t s64t s65t s66t s67t s68t s69t s70t
    s71t s72t s73t s74t s75t s76t s77t s78t s79t s80t - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
    (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
    (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
    (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70)
    (d71) (d72) (d73) (d74) (d75) (d76) (d77) (d78) (d79) (d80))

  (:durative-action do-step1
    :parameters (?s - s1t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
  (:durative-action do-step2
    :parameters (?s - s2t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d21)) (at start (d77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
  (:durative-action do-step3
    :parameters (?s - s3t)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d28)) (at start (d40)) (at start (d59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
  (:durative-action do-step4
    :parameters (?s - s4t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
  (:durative-action do-step5
    :parameters (?s - s5t)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (d61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
  (:durative-action do-step6
    :parameters (?s - s6t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
  (:durative-action do-step7
    :parameters (?s - s7t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d54)) (at start (d59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
  (:durative-action do-step8
    :parameters (?s - s8t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d41)) (at start (d56)) (at start (d71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
  (:durative-action do-step9
    :parameters (?s - s9t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d40)) (at start (d59)) (at start (d73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
  (:durative-action do-step10
    :parameters (?s - s10t)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d16)) (at start (d31)) (at start (d43)) (at start (d44)) (at start (d78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
  (:durative-action do-step11
    :parameters (?s - s11t)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
  (:durative-action do-step12
    :parameters (?s - s12t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d40)) (at start (d63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
  (:durative-action do-step13
    :parameters (?s - s13t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
  (:durative-action do-step14
    :parameters (?s - s14t)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
  (:durative-action do-step15
    :parameters (?s - s15t)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
  (:durative-action do-step16
    :parameters (?s - s16t)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d6)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
  (:durative-action do-step17
    :parameters (?s - s17t)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d8)) (at start (d10)) (at start (d69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
  (:durative-action do-step18
    :parameters (?s - s18t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
  (:durative-action do-step19
    :parameters (?s - s19t)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
  (:durative-action do-step20
    :parameters (?s - s20t)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d25)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
  (:durative-action do-step21
    :parameters (?s - s21t)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
  (:durative-action do-step22
    :parameters (?s - s22t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d34)) (at start (d64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
  (:durative-action do-step23
    :parameters (?s - s23t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
  (:durative-action do-step24
    :parameters (?s - s24t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
  (:durative-action do-step25
    :parameters (?s - s25t)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d45)) (at start (d66)) (at start (d68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
  (:durative-action do-step26
    :parameters (?s - s26t)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (d42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
  (:durative-action do-step27
    :parameters (?s - s27t)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d4)) (at start (d21)) (at start (d24)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
  (:durative-action do-step28
    :parameters (?s - s28t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d43)) (at start (d55)) (at start (d71)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
  (:durative-action do-step29
    :parameters (?s - s29t)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
  (:durative-action do-step30
    :parameters (?s - s30t)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d11)) (at start (d34)) (at start (d56)) (at start (d75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
  (:durative-action do-step31
    :parameters (?s - s31t)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d32)) (at start (d40)) (at start (d41)) (at start (d59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
  (:durative-action do-step32
    :parameters (?s - s32t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
  (:durative-action do-step33
    :parameters (?s - s33t)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
  (:durative-action do-step34
    :parameters (?s - s34t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
  (:durative-action do-step35
    :parameters (?s - s35t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
  (:durative-action do-step36
    :parameters (?s - s36t)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d24)) (at start (d55)) (at start (d73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
  (:durative-action do-step37
    :parameters (?s - s37t)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
  (:durative-action do-step38
    :parameters (?s - s38t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d12)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
  (:durative-action do-step39
    :parameters (?s - s39t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
  (:durative-action do-step40
    :parameters (?s - s40t)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
  (:durative-action do-step41
    :parameters (?s - s41t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
  (:durative-action do-step42
    :parameters (?s - s42t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d40)) (at start (d45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
  (:durative-action do-step43
    :parameters (?s - s43t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d71)) (at start (d74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
  (:durative-action do-step44
    :parameters (?s - s44t)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
  (:durative-action do-step45
    :parameters (?s - s45t)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d24)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
  (:durative-action do-step46
    :parameters (?s - s46t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
  (:durative-action do-step47
    :parameters (?s - s47t)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d28)) (at start (d50)) (at start (d56)) (at start (d68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
  (:durative-action do-step48
    :parameters (?s - s48t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d44)) (at start (d75)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
  (:durative-action do-step49
    :parameters (?s - s49t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
  (:durative-action do-step50
    :parameters (?s - s50t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d4)) (at start (d14)) (at start (d45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
  (:durative-action do-step51
    :parameters (?s - s51t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d77)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
  (:durative-action do-step52
    :parameters (?s - s52t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
  (:durative-action do-step53
    :parameters (?s - s53t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
  (:durative-action do-step54
    :parameters (?s - s54t)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d3)) (at start (d12)) (at start (d14)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
  (:durative-action do-step55
    :parameters (?s - s55t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
  (:durative-action do-step56
    :parameters (?s - s56t)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
  (:durative-action do-step57
    :parameters (?s - s57t)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d16)) (at start (d45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
  (:durative-action do-step58
    :parameters (?s - s58t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
  (:durative-action do-step59
    :parameters (?s - s59t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d74)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
  (:durative-action do-step60
    :parameters (?s - s60t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d17)) (at start (d24)) (at start (d56)) (at start (d59)) (at start (d66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
  (:durative-action do-step61
    :parameters (?s - s61t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d61))))
  (:durative-action do-step62
    :parameters (?s - s62t)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d35)) (at start (d55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d62))))
  (:durative-action do-step63
    :parameters (?s - s63t)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d63))))
  (:durative-action do-step64
    :parameters (?s - s64t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d64))))
  (:durative-action do-step65
    :parameters (?s - s65t)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d35)) (at start (d54)) (at start (d79)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d65))))
  (:durative-action do-step66
    :parameters (?s - s66t)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d66))))
  (:durative-action do-step67
    :parameters (?s - s67t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d64)) (at start (d73)) (at start (d77)) (at start (d78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d67))))
  (:durative-action do-step68
    :parameters (?s - s68t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d68))))
  (:durative-action do-step69
    :parameters (?s - s69t)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d39)) (at start (d43)) (at start (d73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d69))))
  (:durative-action do-step70
    :parameters (?s - s70t)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d44)) (at start (d50)) (at start (d51)) (at start (d73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d70))))
  (:durative-action do-step71
    :parameters (?s - s71t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d71))))
  (:durative-action do-step72
    :parameters (?s - s72t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d56)) (at start (d59)) (at start (d78)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d72))))
  (:durative-action do-step73
    :parameters (?s - s73t)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d73))))
  (:durative-action do-step74
    :parameters (?s - s74t)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d74))))
  (:durative-action do-step75
    :parameters (?s - s75t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d75))))
  (:durative-action do-step76
    :parameters (?s - s76t)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d76))))
  (:durative-action do-step77
    :parameters (?s - s77t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d77))))
  (:durative-action do-step78
    :parameters (?s - s78t)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d18)) (at start (d38)) (at start (d46)) (at start (d50)) (at start (d71)) (at start (d73)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d78))))
  (:durative-action do-step79
    :parameters (?s - s79t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d20)) (at start (d26)) (at start (d50)) (at start (d53)) (at start (d69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d79))))
  (:durative-action do-step80
    :parameters (?s - s80t)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d80))))
)