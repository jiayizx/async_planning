(define (domain bonfire)
 (:requirements :typing :durative-actions)
 (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70))

 (:durative-action do-step1
  :parameters (?s - s1) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d23)) (at start (d54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action do-step2
  :parameters (?s - s2) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action do-step3
  :parameters (?s - s3) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d24)) (at start (d70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action do-step4
  :parameters (?s - s4) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d31)) (at start (d50)) (at start (d58)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action do-step5
  :parameters (?s - s5) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action do-step6
  :parameters (?s - s6) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action do-step7
  :parameters (?s - s7) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action do-step8
  :parameters (?s - s8) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d49)) (at start (d55)) (at start (d56)) (at start (d64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action do-step9
  :parameters (?s - s9) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action do-step10
  :parameters (?s - s10) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action do-step11
  :parameters (?s - s11) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d59)) (at start (d65)) (at start (d68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action do-step12
  :parameters (?s - s12) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action do-step13
  :parameters (?s - s13) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d26)) (at start (d28)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action do-step14
  :parameters (?s - s14) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d33)) (at start (d36)) (at start (d47)) (at start (d68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action do-step15
  :parameters (?s - s15) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action do-step16
  :parameters (?s - s16) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d7)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action do-step17
  :parameters (?s - s17) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action do-step18
  :parameters (?s - s18) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action do-step19
  :parameters (?s - s19) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action do-step20
  :parameters (?s - s20) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action do-step21
  :parameters (?s - s21) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d27)) (at start (d34)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action do-step22
  :parameters (?s - s22) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d17)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action do-step23
  :parameters (?s - s23) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d30)) (at start (d32)) (at start (d37)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action do-step24
  :parameters (?s - s24) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d9)) (at start (d19)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action do-step25
  :parameters (?s - s25) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action do-step26
  :parameters (?s - s26) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d32)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action do-step27
  :parameters (?s - s27) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d6)) (at start (d65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action do-step28
  :parameters (?s - s28) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d38)) (at start (d49)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action do-step29
  :parameters (?s - s29) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action do-step30
  :parameters (?s - s30) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action do-step31
  :parameters (?s - s31) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action do-step32
  :parameters (?s - s32) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action do-step33
  :parameters (?s - s33) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action do-step34
  :parameters (?s - s34) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d33)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action do-step35
  :parameters (?s - s35) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action do-step36
  :parameters (?s - s36) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d47)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action do-step37
  :parameters (?s - s37) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action do-step38
  :parameters (?s - s38) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action do-step39
  :parameters (?s - s39) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action do-step40
  :parameters (?s - s40) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d9)) (at start (d11)) (at start (d42)) (at start (d58)) (at start (d65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action do-step41
  :parameters (?s - s41) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action do-step42
  :parameters (?s - s42) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action do-step43
  :parameters (?s - s43) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d29)) (at start (d36)) (at start (d47)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action do-step44
  :parameters (?s - s44) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d35)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action do-step45
  :parameters (?s - s45) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action do-step46
  :parameters (?s - s46) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action do-step47
  :parameters (?s - s47) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action do-step48
  :parameters (?s - s48) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d33)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action do-step49
  :parameters (?s - s49) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action do-step50
  :parameters (?s - s50) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action do-step51
  :parameters (?s - s51) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d7)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action do-step52
  :parameters (?s - s52) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d39)) (at start (d44)) (at start (d67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action do-step53
  :parameters (?s - s53) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d23)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action do-step54
  :parameters (?s - s54) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action do-step55
  :parameters (?s - s55) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action do-step56
  :parameters (?s - s56) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action do-step57
  :parameters (?s - s57) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d32)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action do-step58
  :parameters (?s - s58) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d53)) (at start (d66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action do-step59
  :parameters (?s - s59) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d53)) (at start (d54)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action do-step60
  :parameters (?s - s60) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
 (:durative-action do-step61
  :parameters (?s - s61) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d61))))
 (:durative-action do-step62
  :parameters (?s - s62) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d26)) (at start (d32)) (at start (d50)) (at start (d51)) (at start (d59)) (at start (d64)) (at start (d65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d62))))
 (:durative-action do-step63
  :parameters (?s - s63) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d63))))
 (:durative-action do-step64
  :parameters (?s - s64) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d64))))
 (:durative-action do-step65
  :parameters (?s - s65) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d65))))
 (:durative-action do-step66
  :parameters (?s - s66) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d66))))
 (:durative-action do-step67
  :parameters (?s - s67) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d67))))
 (:durative-action do-step68
  :parameters (?s - s68) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d31)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d68))))
 (:durative-action do-step69
  :parameters (?s - s69) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d48)) (at start (d60)) (at start (d64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d69))))
 (:durative-action do-step70
  :parameters (?s - s70) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d44)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d70))))
)