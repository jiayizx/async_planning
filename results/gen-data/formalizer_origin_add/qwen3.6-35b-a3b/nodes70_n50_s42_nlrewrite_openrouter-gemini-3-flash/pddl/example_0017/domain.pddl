(define (domain stir_fry_sauce)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending - step)
    (step_done - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
    (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70))
  (:durative-action do_step1
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1))))
  (:durative-action do_step2
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s29)) (at start (s35)) (at start (s41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2))))
  (:durative-action do_step3
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s6)) (at start (s22)) (at start (s52)) (at start (s55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3))))
  (:durative-action do_step4
    :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4))))
  (:durative-action do_step5
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5))))
  (:durative-action do_step6
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16)) (at start (s18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6))))
  (:durative-action do_step7
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7))))
  (:durative-action do_step8
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s35)) (at start (s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8))))
  (:durative-action do_step9
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s20)) (at start (s30)) (at start (s49)) (at start (s51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9))))
  (:durative-action do_step10
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10))))
  (:durative-action do_step11
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11))))
  (:durative-action do_step12
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s24)) (at start (s62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12))))
  (:durative-action do_step13
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13))))
  (:durative-action do_step14
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14))))
  (:durative-action do_step15
    :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15))))
  (:durative-action do_step16
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s17)) (at start (s23)) (at start (s38)) (at start (s48)) (at start (s57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16))))
  (:durative-action do_step17
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17))))
  (:durative-action do_step18
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s19)) (at start (s43)) (at start (s58)) (at start (s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18))))
  (:durative-action do_step19
    :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s21)) (at start (s29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19))))
  (:durative-action do_step20
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20))))
  (:durative-action do_step21
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21))))
  (:durative-action do_step22
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s10)) (at start (s50)) (at start (s52)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22))))
  (:durative-action do_step23
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23))))
  (:durative-action do_step24
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24))))
  (:durative-action do_step25
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s31)) (at start (s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25))))
  (:durative-action do_step26
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s29)) (at start (s33)) (at start (s59)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26))))
  (:durative-action do_step27
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s14)) (at start (s17)) (at start (s56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27))))
  (:durative-action do_step28
    :duration 45
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28))))
  (:durative-action do_step29
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29))))
  (:durative-action do_step30
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30))))
  (:durative-action do_step31
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s23)) (at start (s29)) (at start (s32)) (at start (s44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31))))
  (:durative-action do_step32
    :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32))))
  (:durative-action do_step33
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33))))
  (:durative-action do_step34
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s37)) (at start (s38)) (at start (s45)) (at start (s52)) (at start (s55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34))))
  (:durative-action do_step35
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35))))
  (:durative-action do_step36
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36))))
  (:durative-action do_step37
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s22)) (at start (s24)) (at start (s43)) (at start (s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37))))
  (:durative-action do_step38
    :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38))))
  (:durative-action do_step39
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39))))
  (:durative-action do_step40
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10)) (at start (s30)) (at start (s35)) (at start (s61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40))))
  (:durative-action do_step41
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41))))
  (:durative-action do_step42
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42))))
  (:durative-action do_step43
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43))))
  (:durative-action do_step44
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s13)) (at start (s21)) (at start (s47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44))))
  (:durative-action do_step45
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45))))
  (:durative-action do_step46
    :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46))))
  (:durative-action do_step47
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s36)) (at start (s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47))))
  (:durative-action do_step48
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48))))
  (:durative-action do_step49
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49))))
  (:durative-action do_step50
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50))))
  (:durative-action do_step51
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s30)) (at start (s47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51))))
  (:durative-action do_step52
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s29)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52))))
  (:durative-action do_step53
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53))))
  (:durative-action do_step54
    :duration 40
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54))))
  (:durative-action do_step55
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s17)) (at start (s33)) (at start (s43)) (at start (s67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55))))
  (:durative-action do_step56
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s16)) (at start (s35)) (at start (s39)) (at start (s61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56))))
  (:durative-action do_step57
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57))))
  (:durative-action do_step58
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58))))
  (:durative-action do_step59
    :duration 45
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59))))
  (:durative-action do_step60
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9)) (at start (s61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60))))
  (:durative-action do_step61
    :duration 20
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61))))
  (:durative-action do_step62
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s47)) (at start (s54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62))))
  (:durative-action do_step63
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s6)) (at start (s17)) (at start (s33)) (at start (s39)) (at start (s40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63))))
  (:durative-action do_step64
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14)) (at start (s28)) (at start (s68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64))))
  (:durative-action do_step65
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65))))
  (:durative-action do_step66
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s23)) (at start (s60)) (at start (s62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66))))
  (:durative-action do_step67
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67))))
  (:durative-action do_step68
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1)) (at start (s50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68))))
  (:durative-action do_step69
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s48)) (at start (s61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69))))
  (:durative-action do_step70
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s19)) (at start (s52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70)))))
