(define (domain store_security)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
    (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (store_protected))

  (:durative-action do_step1
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step1)) (at start (s11)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1))))

  (:durative-action do_step2
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step2)) (at start (s1)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2))))

  (:durative-action do_step3
    :parameters ()
    :duration 86400
    :condition (and (at start (step_pending step3)) (at start (s2)) (at start (s53)) (at start (s54)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3))))

  (:durative-action do_step4
    :parameters ()
    :duration 14400
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4))))

  (:durative-action do_step5
    :parameters ()
    :duration 172800
    :condition (and (at start (step_pending step5)) (at start (s11)) (at start (s20)) (at start (s41)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5))))

  (:durative-action do_step6
    :parameters ()
    :duration 604800
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6))))

  (:durative-action do_step7
    :parameters ()
    :duration 18000
    :condition (and (at start (step_pending step7)) (at start (s6)) (at start (s12)) (at start (s29)) (at start (s41)) (at start (s65)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7))))

  (:durative-action do_step8
    :parameters ()
    :duration 345600
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8))))

  (:durative-action do_step9
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step9)) (at start (s18)) (at start (s53)) (at start (s61)) (at start (s69)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9))))

  (:durative-action do_step10
    :parameters ()
    :duration 21600
    :condition (and (at start (step_pending step10)) (at start (s27)) (at start (s40)) (at start (s47)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10))))

  (:durative-action do_step11
    :parameters ()
    :duration 86400
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11))))

  (:durative-action do_step12
    :parameters ()
    :duration 10800
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12))))

  (:durative-action do_step13
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step13)) (at start (s16)) (at start (s49)) (at start (s53)) (at start (s56)) (at start (s61)) (at start (s65)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13))))

  (:durative-action do_step14
    :parameters ()
    :duration 1814400
    :condition (and (at start (step_pending step14)) (at start (s2)) (at start (s6)) (at start (s11)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14))))

  (:durative-action do_step15
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15))))

  (:durative-action do_step16
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step16)) (at start (s4)) (at start (s18)) (at start (s22)) (at start (s27)) (at start (s33)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16))))

  (:durative-action do_step17
    :parameters ()
    :duration 28800
    :condition (and (at start (step_pending step17)) (at start (s11)) (at start (s16)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17))))

  (:durative-action do_step18
    :parameters ()
    :duration 1209600
    :condition (and (at start (step_pending step18)) (at start (s46)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18))))

  (:durative-action do_step19
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step19)) (at start (s6)) (at start (s11)) (at start (s37)) (at start (s41)) (at start (s70)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19))))

  (:durative-action do_step20
    :parameters ()
    :duration 86400
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20))))

  (:durative-action do_step21
    :parameters ()
    :duration 1800
    :condition (and (at start (step_pending step21)) (at start (s2)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21))))

  (:durative-action do_step22
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22))))

  (:durative-action do_step23
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step23)) (at start (s47)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23))))

  (:durative-action do_step24
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step24)) (at start (s6)) (at start (s40)) (at start (s58)) (at start (s59)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24))))

  (:durative-action do_step25
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step25)) (at start (s16)) (at start (s33)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25))))

  (:durative-action do_step26
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step26)) (at start (s10)) (at start (s20)) (at start (s70)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26))))

  (:durative-action do_step27
    :parameters ()
    :duration 432000
    :condition (and (at start (step_pending step27)) (at start (s62)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27))))

  (:durative-action do_step28
    :parameters ()
    :duration 604800
    :condition (and (at start (step_pending step28)) (at start (s11)) (at start (s14)) (at start (s18)) (at start (s45)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28))))

  (:durative-action do_step29
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step29)) (at start (s27)) (at start (s54)) (at start (s68)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29))))

  (:durative-action do_step30
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step30)) (at start (s21)) (at start (s34)) (at start (s70)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30))))

  (:durative-action do_step31
    :parameters ()
    :duration 172800
    :condition (and (at start (step_pending step31)) (at start (s37)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31))))

  (:durative-action do_step32
    :parameters ()
    :duration 604800
    :condition (and (at start (step_pending step32)) (at start (s6)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32))))

  (:durative-action do_step33
    :parameters ()
    :duration 10800
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33))))

  (:durative-action do_step34
    :parameters ()
    :duration 86400
    :condition (and (at start (step_pending step34)) (at start (s23)) (at start (s27)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34))))

  (:durative-action do_step35
    :parameters ()
    :duration 18000
    :condition (and (at start (step_pending step35)) (at start (s50)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35))))

  (:durative-action do_step36
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step36)) (at start (s3)) (at start (s35)) (at start (s40)) (at start (s65)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36))))

  (:durative-action do_step37
    :parameters ()
    :duration 86400
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37))))

  (:durative-action do_step38
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step38)) (at start (s13)) (at start (s34)) (at start (s59)) (at start (s66)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38))))

  (:durative-action do_step39
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step39)) (at start (s53)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39))))

  (:durative-action do_step40
    :parameters ()
    :duration 21600
    :condition (and (at start (step_pending step40)) (at start (s27)) (at start (s55)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40))))

  (:durative-action do_step41
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step41)) (at start (s44)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41))))

  (:durative-action do_step42
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step42)) (at start (s3)) (at start (s25)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42))))

  (:durative-action do_step43
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step43)) (at start (s24)) (at start (s61)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43))))

  (:durative-action do_step44
    :parameters ()
    :duration 172800
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44))))

  (:durative-action do_step45
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step45)) (at start (s6)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45))))

  (:durative-action do_step46
    :parameters ()
    :duration 604800
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46))))

  (:durative-action do_step47
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step47)) (at start (s16)) (at start (s35)) (at start (s70)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47))))

  (:durative-action do_step48
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step48)) (at start (s15)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48))))

  (:durative-action do_step49
    :parameters ()
    :duration 18000
    :condition (and (at start (step_pending step49)) (at start (s48)) (at start (s56)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49))))

  (:durative-action do_step50
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step50)) (at start (s37)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50))))

  (:durative-action do_step51
    :parameters ()
    :duration 1800
    :condition (and (at start (step_pending step51)) (at start (s26)) (at start (s58)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51))))

  (:durative-action do_step52
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step52)) (at start (s2)) (at start (s62)) (at start (s65)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52))))

  (:durative-action do_step53
    :parameters ()
    :duration 21600
    :condition (and (at start (step_pending step53)) (at start (s31)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53))))

  (:durative-action do_step54
    :parameters ()
    :duration 21600
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54))))

  (:durative-action do_step55
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step55)) (at start (s11)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55))))

  (:durative-action do_step56
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56))))

  (:durative-action do_step57
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step57)) (at start (s33)) (at start (s50)) (at start (s61)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57))))

  (:durative-action do_step58
    :parameters ()
    :duration 3600
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58))))

  (:durative-action do_step59
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step59)) (at start (s66)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59))))

  (:durative-action do_step60
    :parameters ()
    :duration 172800
    :condition (and (at start (step_pending step60)) (at start (s8)) (at start (s65)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60))))

  (:durative-action do_step61
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step61)) (at start (s4)) (at start (s55)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61))))

  (:durative-action do_step62
    :parameters ()
    :duration 86400
    :condition (and (at start (step_pending step62)) (at start (s2)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62))))

  (:durative-action do_step63
    :parameters ()
    :duration 86400
    :condition (and (at start (step_pending step63)) (at start (s57)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63))))

  (:durative-action do_step64
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64))))

  (:durative-action do_step65
    :parameters ()
    :duration 14400
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65))))

  (:durative-action do_step66
    :parameters ()
    :duration 3600
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66))))

  (:durative-action do_step67
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step67)) (at start (s2)) (at start (s13)) (at start (s64)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67))))

  (:durative-action do_step68
    :parameters ()
    :duration 10800
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68))))

  (:durative-action do_step69
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step69)) (at start (s10)) (at start (s20)) (at start (s25)) (at start (s46)) (at start (s66)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69))))

  (:durative-action do_step70
    :parameters ()
    :duration 14400
    :condition (and (at start (step_pending step70)) (at start (s35)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (store_protected))))
)