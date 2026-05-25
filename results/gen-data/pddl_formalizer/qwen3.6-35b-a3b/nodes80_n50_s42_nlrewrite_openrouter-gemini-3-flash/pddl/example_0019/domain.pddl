(define (domain fishing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step-pending ?s - step)
    (step-done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
    (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70)
    (s71) (s72) (s73) (s74) (s75) (s76) (s77) (s78) (s79) (s80)
    (fishing-ready))
  (:durative-action do-step-1
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-1)) (at start (s14)) (at start (s22)) (at start (s64)))
    :effect (and (at start (not (step-pending step-1))) (at end (step-done step-1)) (at end (s1))))
  (:durative-action do-step-2
    :duration (= ?duration 7200)
    :condition (and (at start (step-pending step-2)) (at start (s25)) (at start (s28)) (at start (s38)) (at start (s70)))
    :effect (and (at start (not (step-pending step-2))) (at end (step-done step-2)) (at end (s2))))
  (:durative-action do-step-3
    :duration (= ?duration 600)
    :condition (at start (step-pending step-3))
    :effect (and (at start (not (step-pending step-3))) (at end (step-done step-3)) (at end (s3))))
  (:durative-action do-step-4
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-4)) (at start (s36)) (at start (s48)) (at start (s71)))
    :effect (and (at start (not (step-pending step-4))) (at end (step-done step-4)) (at end (s4))))
  (:durative-action do-step-5
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-5)) (at start (s36)))
    :effect (and (at start (not (step-pending step-5))) (at end (step-done step-5)) (at end (s5))))
  (:durative-action do-step-6
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-6)) (at start (s26)))
    :effect (and (at start (not (step-pending step-6))) (at end (step-done step-6)) (at end (s6))))
  (:durative-action do-step-7
    :duration (= ?duration 3600)
    :condition (at start (step-pending step-7))
    :effect (and (at start (not (step-pending step-7))) (at end (step-done step-7)) (at end (s7))))
  (:durative-action do-step-8
    :duration (= ?duration 2700)
    :condition (at start (step-pending step-8))
    :effect (and (at start (not (step-pending step-8))) (at end (step-done step-8)) (at end (s8))))
  (:durative-action do-step-9
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending step-9)) (at start (s4)) (at start (s19)))
    :effect (and (at start (not (step-pending step-9))) (at end (step-done step-9)) (at end (s9))))
  (:durative-action do-step-10
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-10)) (at start (s34)) (at start (s39)))
    :effect (and (at start (not (step-pending step-10))) (at end (step-done step-10)) (at end (s10))))
  (:durative-action do-step-11
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-11)) (at start (s59)))
    :effect (and (at start (not (step-pending step-11))) (at end (step-done step-11)) (at end (s11))))
  (:durative-action do-step-12
    :duration (= ?duration 86400)
    :condition (and (at start (step-pending step-12)) (at start (s43)))
    :effect (and (at start (not (step-pending step-12))) (at end (step-done step-12)) (at end (s12))))
  (:durative-action do-step-13
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-13)) (at start (s8)) (at start (s38)) (at start (s44)) (at start (s50)) (at start (s51)) (at start (s55)))
    :effect (and (at start (not (step-pending step-13))) (at end (step-done step-13)) (at end (s13))))
  (:durative-action do-step-14
    :duration (= ?duration 2400)
    :condition (and (at start (step-pending step-14)) (at start (s28)))
    :effect (and (at start (not (step-pending step-14))) (at end (step-done step-14)) (at end (s14))))
  (:durative-action do-step-15
    :duration (= ?duration 1200)
    :condition (at start (step-pending step-15))
    :effect (and (at start (not (step-pending step-15))) (at end (step-done step-15)) (at end (s15))))
  (:durative-action do-step-16
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-16)) (at start (s11)) (at start (s33)) (at start (s59)) (at start (s67)) (at start (s75)) (at start (s79)))
    :effect (and (at start (not (step-pending step-16))) (at end (step-done step-16)) (at end (s16))))
  (:durative-action do-step-17
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-17)) (at start (s7)) (at start (s8)) (at start (s31)))
    :effect (and (at start (not (step-pending step-17))) (at end (step-done step-17)) (at end (s17))))
  (:durative-action do-step-18
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending step-18)) (at start (s8)))
    :effect (and (at start (not (step-pending step-18))) (at end (step-done step-18)) (at end (s18))))
  (:durative-action do-step-19
    :duration (= ?duration 1800)
    :condition (at start (step-pending step-19))
    :effect (and (at start (not (step-pending step-19))) (at end (step-done step-19)) (at end (s19))))
  (:durative-action do-step-20
    :duration (= ?duration 14400)
    :condition (and (at start (step-pending step-20)) (at start (s29)) (at start (s36)))
    :effect (and (at start (not (step-pending step-20))) (at end (step-done step-20)) (at end (s20))))
  (:durative-action do-step-21
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-21)) (at start (s15)) (at start (s59)) (at start (s78)))
    :effect (and (at start (not (step-pending step-21))) (at end (step-done step-21)) (at end (s21))))
  (:durative-action do-step-22
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-22)) (at start (s39)))
    :effect (and (at start (not (step-pending step-22))) (at end (step-done step-22)) (at end (s22))))
  (:durative-action do-step-23
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-23)) (at start (s13)) (at start (s29)) (at start (s49)) (at start (s51)) (at start (s66)) (at start (s80)))
    :effect (and (at start (not (step-pending step-23))) (at end (step-done step-23)) (at end (s23))))
  (:durative-action do-step-24
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-24)) (at start (s39)) (at start (s43)))
    :effect (and (at start (not (step-pending step-24))) (at end (step-done step-24)) (at end (s24))))
  (:durative-action do-step-25
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-25)) (at start (s36)))
    :effect (and (at start (not (step-pending step-25))) (at end (step-done step-25)) (at end (s25))))
  (:durative-action do-step-26
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-26)) (at start (s30)))
    :effect (and (at start (not (step-pending step-26))) (at end (step-done step-26)) (at end (s26))))
  (:durative-action do-step-27
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending step-27)) (at start (s24)))
    :effect (and (at start (not (step-pending step-27))) (at end (step-done step-27)) (at end (s27))))
  (:durative-action do-step-28
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-28)) (at start (s24)) (at start (s74)))
    :effect (and (at start (not (step-pending step-28))) (at end (step-done step-28)) (at end (s28))))
  (:durative-action do-step-29
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-29)) (at start (s24)) (at start (s33)) (at start (s43)) (at start (s67)))
    :effect (and (at start (not (step-pending step-29))) (at end (step-done step-29)) (at end (s29))))
  (:durative-action do-step-30
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-30)) (at start (s39)))
    :effect (and (at start (not (step-pending step-30))) (at end (step-done step-30)) (at end (s30))))
  (:durative-action do-step-31
    :duration (= ?duration 300)
    :condition (at start (step-pending step-31))
    :effect (and (at start (not (step-pending step-31))) (at end (step-done step-31)) (at end (s31))))
  (:durative-action do-step-32
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-32)) (at start (s6)) (at start (s7)))
    :effect (and (at start (not (step-pending step-32))) (at end (step-done step-32)) (at end (s32))))
  (:durative-action do-step-33
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-33)) (at start (s15)) (at start (s27)))
    :effect (and (at start (not (step-pending step-33))) (at end (step-done step-33)) (at end (s33))))
  (:durative-action do-step-34
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-34)) (at start (s27)) (at start (s28)) (at start (s49)) (at start (s66)) (at start (s67)))
    :effect (and (at start (not (step-pending step-34))) (at end (step-done step-34)) (at end (s34))))
  (:durative-action do-step-35
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-35)) (at start (s10)) (at start (s15)) (at start (s29)) (at start (s47)) (at start (s55)))
    :effect (and (at start (not (step-pending step-35))) (at end (step-done step-35)) (at end (s35))))
  (:durative-action do-step-36
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-36)) (at start (s43)))
    :effect (and (at start (not (step-pending step-36))) (at end (step-done step-36)) (at end (s36))))
  (:durative-action do-step-37
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step-37)) (at start (s20)) (at start (s40)) (at start (s78)))
    :effect (and (at start (not (step-pending step-37))) (at end (step-done step-37)) (at end (s37))))
  (:durative-action do-step-38
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-38)) (at start (s3)) (at start (s69)))
    :effect (and (at start (not (step-pending step-38))) (at end (step-done step-38)) (at end (s38))))
  (:durative-action do-step-39
    :duration (= ?duration 600)
    :condition (at start (step-pending step-39))
    :effect (and (at start (not (step-pending step-39))) (at end (step-done step-39)) (at end (s39))))
  (:durative-action do-step-40
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-40)) (at start (s1)) (at start (s6)) (at start (s59)))
    :effect (and (at start (not (step-pending step-40))) (at end (step-done step-40)) (at end (s40))))
  (:durative-action do-step-41
    :duration (= ?duration 1500)
    :condition (at start (step-pending step-41))
    :effect (and (at start (not (step-pending step-41))) (at end (step-done step-41)) (at end (s41))))
  (:durative-action do-step-42
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-42)) (at start (s3)) (at start (s45)))
    :effect (and (at start (not (step-pending step-42))) (at end (step-done step-42)) (at end (s42))))
  (:durative-action do-step-43
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-43)) (at start (s6)))
    :effect (and (at start (not (step-pending step-43))) (at end (step-done step-43)) (at end (s43))))
  (:durative-action do-step-44
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-44)) (at start (s32)) (at start (s73)) (at start (s77)))
    :effect (and (at start (not (step-pending step-44))) (at end (step-done step-44)) (at end (s44))))
  (:durative-action do-step-45
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending step-45)) (at start (s25)) (at start (s67)) (at start (s72)))
    :effect (and (at start (not (step-pending step-45))) (at end (step-done step-45)) (at end (s45))))
  (:durative-action do-step-46
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-46)) (at start (s25)))
    :effect (and (at start (not (step-pending step-46))) (at end (step-done step-46)) (at end (s46))))
  (:durative-action do-step-47
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-47)) (at start (s12)) (at start (s32)) (at start (s67)) (at start (s74)))
    :effect (and (at start (not (step-pending step-47))) (at end (step-done step-47)) (at end (s47))))
  (:durative-action do-step-48
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-48)) (at start (s22)) (at start (s32)) (at start (s68)) (at start (s79)))
    :effect (and (at start (not (step-pending step-48))) (at end (step-done step-48)) (at end (s48))))
  (:durative-action do-step-49
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-49)) (at start (s31)) (at start (s48)))
    :effect (and (at start (not (step-pending step-49))) (at end (step-done step-49)) (at end (s49))))
  (:durative-action do-step-50
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step-50)) (at start (s74)))
    :effect (and (at start (not (step-pending step-50))) (at end (step-done step-50)) (at end (s50))))
  (:durative-action do-step-51
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-51)) (at start (s22)) (at start (s74)))
    :effect (and (at start (not (step-pending step-51))) (at end (step-done step-51)) (at end (s51))))
  (:durative-action do-step-52
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-52)) (at start (s1)) (at start (s15)) (at start (s26)) (at start (s75)))
    :effect (and (at start (not (step-pending step-52))) (at end (step-done step-52)) (at end (s52))))
  (:durative-action do-step-53
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step-53)) (at start (s18)) (at start (s47)) (at start (s63)))
    :effect (and (at start (not (step-pending step-53))) (at end (step-done step-53)) (at end (s53))))
  (:durative-action do-step-54
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-54)) (at start (s19)) (at start (s46)) (at start (s52)))
    :effect (and (at start (not (step-pending step-54))) (at end (step-done step-54)) (at end (s54))))
  (:durative-action do-step-55
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-55)) (at start (s18)) (at start (s42)))
    :effect (and (at start (not (step-pending step-55))) (at end (step-done step-55)) (at end (s55))))
  (:durative-action do-step-56
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-56)) (at start (s8)) (at start (s69)))
    :effect (and (at start (not (step-pending step-56))) (at end (step-done step-56)) (at end (s56))))
  (:durative-action do-step-57
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-57)) (at start (s13)) (at start (s27)) (at start (s36)) (at start (s41)) (at start (s48)))
    :effect (and (at start (not (step-pending step-57))) (at end (step-done step-57)) (at end (s57))))
  (:durative-action do-step-58
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-58)) (at start (s73)))
    :effect (and (at start (not (step-pending step-58))) (at end (step-done step-58)) (at end (s58))))
  (:durative-action do-step-59
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-59)) (at start (s20)) (at start (s65)) (at start (s77)))
    :effect (and (at start (not (step-pending step-59))) (at end (step-done step-59)) (at end (s59))))
  (:durative-action do-step-60
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-60)) (at start (s2)) (at start (s14)) (at start (s26)) (at start (s64)) (at start (s67)) (at start (s75)))
    :effect (and (at start (not (step-pending step-60))) (at end (step-done step-60)) (at end (s60))))
  (:durative-action do-step-61
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-61)) (at start (s9)) (at start (s46)) (at start (s49)) (at start (s55)) (at start (s57)))
    :effect (and (at start (not (step-pending step-61))) (at end (step-done step-61)) (at end (s61))))
  (:durative-action do-step-62
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending step-62)) (at start (s5)) (at start (s12)) (at start (s19)) (at start (s23)) (at start (s24)) (at start (s44)) (at start (s52)))
    :effect (and (at start (not (step-pending step-62))) (at end (step-done step-62)) (at end (s62))))
  (:durative-action do-step-63
    :duration (= ?duration 900)
    :condition (at start (step-pending step-63))
    :effect (and (at start (not (step-pending step-63))) (at end (step-done step-63)) (at end (s63))))
  (:durative-action do-step-64
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending step-64)) (at start (s25)) (at start (s26)))
    :effect (and (at start (not (step-pending step-64))) (at end (step-done step-64)) (at end (s64))))
  (:durative-action do-step-65
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-65)) (at start (s42)) (at start (s46)) (at start (s67)) (at start (s72)))
    :effect (and (at start (not (step-pending step-65))) (at end (step-done step-65)) (at end (s65))))
  (:durative-action do-step-66
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-66)) (at start (s22)) (at start (s63)) (at start (s68)))
    :effect (and (at start (not (step-pending step-66))) (at end (step-done step-66)) (at end (s66))))
  (:durative-action do-step-67
    :duration (= ?duration 2700)
    :condition (at start (step-pending step-67))
    :effect (and (at start (not (step-pending step-67))) (at end (step-done step-67)) (at end (s67))))
  (:durative-action do-step-68
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-68)) (at start (s7)))
    :effect (and (at start (not (step-pending step-68))) (at end (step-done step-68)) (at end (s68))))
  (:durative-action do-step-69
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-69)) (at start (s51)))
    :effect (and (at start (not (step-pending step-69))) (at end (step-done step-69)) (at end (s69))))
  (:durative-action do-step-70
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending step-70)) (at start (s8)))
    :effect (and (at start (not (step-pending step-70))) (at end (step-done step-70)) (at end (s70))))
  (:durative-action do-step-71
    :duration (= ?duration 2700)
    :condition (and (at start (step-pending step-71)) (at start (s14)) (at start (s25)) (at start (s74)))
    :effect (and (at start (not (step-pending step-71))) (at end (step-done step-71)) (at end (s71))))
  (:durative-action do-step-72
    :duration (= ?duration 600)
    :condition (at start (step-pending step-72))
    :effect (and (at start (not (step-pending step-72))) (at end (step-done step-72)) (at end (s72))))
  (:durative-action do-step-73
    :duration (= ?duration 900)
    :condition (at start (step-pending step-73))
    :effect (and (at start (not (step-pending step-73))) (at end (step-done step-73)) (at end (s73))))
  (:durative-action do-step-74
    :duration (= ?duration 1200)
    :condition (at start (step-pending step-74))
    :effect (and (at start (not (step-pending step-74))) (at end (step-done step-74)) (at end (s74))))
  (:durative-action do-step-75
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step-75)) (at start (s6)) (at start (s15)) (at start (s32)) (at start (s55)))
    :effect (and (at start (not (step-pending step-75))) (at end (step-done step-75)) (at end (s75))))
  (:durative-action do-step-76
    :duration (= ?duration 120)
    :condition (and (at start (step-pending step-76)) (at start (s28)) (at start (s34)) (at start (s70)))
    :effect (and (at start (not (step-pending step-76))) (at end (step-done step-76)) (at end (s76))))
  (:durative-action do-step-77
    :duration (= ?duration 300)
    :condition (and (at start (step-pending step-77)) (at start (s4)) (at start (s41)))
    :effect (and (at start (not (step-pending step-77))) (at end (step-done step-77)) (at end (s77))))
  (:durative-action do-step-78
    :duration (= ?duration 600)
    :condition (and (at start (step-pending step-78)) (at start (s30)) (at start (s67)) (at start (s71)))
    :effect (and (at start (not (step-pending step-78))) (at end (step-done step-78)) (at end (s78))))
  (:durative-action do-step-79
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-79)) (at start (s3)) (at start (s66)) (at start (s72)))
    :effect (and (at start (not (step-pending step-79))) (at end (step-done step-79)) (at end (s79))))
  (:durative-action do-step-80
    :duration (= ?duration 900)
    :condition (and (at start (step-pending step-80)) (at start (s1)) (at start (s27)))
    :effect (and (at start (not (step-pending step-80))) (at end (step-done step-80)) (at end (fishing-ready))))
)