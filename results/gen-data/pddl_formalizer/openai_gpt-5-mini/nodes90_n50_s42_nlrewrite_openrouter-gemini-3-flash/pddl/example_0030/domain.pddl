(define (domain waterless_car_wash)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
    (done81) (done82) (done83) (done84) (done85) (done86) (done87) (done88) (done89) (done90)
  )

  ;; One durative-action per step. Each action enforces all direct predecessors
  ;; from the provided ordering constraints by requiring the predecessor's
  ;; semantic predicate (doneX) at start. Each action ends by asserting a
  ;; unique semantic predicate doneX and marking step_done.

  (:durative-action do_step1
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s1)) (at start (done4)) (at start (done23)))
     :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (done1))))

  (:durative-action do_step2
     :parameters ()
     :duration (= ?duration 600)
     :condition (at start (step_pending s2))
     :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (done2))))

  (:durative-action do_step3
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s3)) (at start (done16)) (at start (done54)) (at start (done55)))
     :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (done3))))

  (:durative-action do_step4
     :parameters ()
     :duration (= ?duration 180)
     :condition (at start (step_pending s4))
     :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (done4))))

  (:durative-action do_step5
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s5))
     :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (done5))))

  (:durative-action do_step6
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step_pending s6)) (at start (done12)))
     :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (done6))))

  (:durative-action do_step7
     :parameters ()
     :duration (= ?duration 360)
     :condition (at start (step_pending s7))
     :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (done7))))

  (:durative-action do_step8
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s8)) (at start (done58)) (at start (done65)) (at start (done75)) (at start (done76)))
     :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (done8))))

  (:durative-action do_step9
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s9)) (at start (done47)) (at start (done69)) (at start (done70)))
     :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (done9))))

  (:durative-action do_step10
     :parameters ()
     :duration (= ?duration 420)
     :condition (and (at start (step_pending s10)) (at start (done16)) (at start (done23)) (at start (done37)) (at start (done70)))
     :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (done10))))

  (:durative-action do_step11
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s11)) (at start (done4)) (at start (done31)) (at start (done57)))
     :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (done11))))

  (:durative-action do_step12
     :parameters ()
     :duration (= ?duration 600)
     :condition (at start (step_pending s12))
     :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (done12))))

  (:durative-action do_step13
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s13)) (at start (done17)) (at start (done61)) (at start (done73)))
     :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (done13))))

  (:durative-action do_step14
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s14)) (at start (done3)))
     :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (done14))))

  (:durative-action do_step15
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s15)) (at start (done41)) (at start (done51)) (at start (done61)))
     :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (done15))))

  (:durative-action do_step16
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s16)) (at start (done73)) (at start (done4)))
     :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (done16))))

  (:durative-action do_step17
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s17)) (at start (done4)) (at start (done86)))
     :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (done17))))

  (:durative-action do_step18
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s18)) (at start (done16)) (at start (done37)) (at start (done43)) (at start (done55)))
     :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (done18))))

  (:durative-action do_step19
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s19)) (at start (done4)) (at start (done47)))
     :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (done19))))

  (:durative-action do_step20
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s20)) (at start (done2)) (at start (done5)) (at start (done66)))
     :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (done20))))

  (:durative-action do_step21
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step_pending s21)) (at start (done10)) (at start (done49)) (at start (done67)) (at start (done68)) (at start (done72)) (at start (done75)) (at start (done58)))
     :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (done21))))

  (:durative-action do_step22
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step_pending s22)) (at start (done2)) (at start (done5)) (at start (done41)) (at start (done59)))
     :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (done22))))

  (:durative-action do_step23
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s23)) (at start (done16)) (at start (done22)) (at start (done67)) (at start (done87)))
     :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (done23))))

  (:durative-action do_step24
     :parameters ()
     :duration (= ?duration 720)
     :condition (and (at start (step_pending s24)) (at start (done8)) (at start (done43)) (at start (done59)) (at start (done60)) (at start (done68)))
     :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (done24))))

  (:durative-action do_step25
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step_pending s25)) (at start (done60)))
     :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (done25))))

  (:durative-action do_step26
     :parameters ()
     :duration (= ?duration 420)
     :condition (and (at start (step_pending s26)) (at start (done7)) (at start (done25)))
     :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (done26))))

  (:durative-action do_step27
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step_pending s27)) (at start (done17)) (at start (done50)))
     :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (done27))))

  (:durative-action do_step28
     :parameters ()
     :duration (= ?duration 240)
     :condition (at start (step_pending s28))
     :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (done28))))

  (:durative-action do_step29
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s29)) (at start (done6)) (at start (done31)) (at start (done43)) (at start (done44)) (at start (done49)) (at start (done77)) (at start (done84)) (at start (done85)))
     :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (done29))))

  (:durative-action do_step30
     :parameters ()
     :duration (= ?duration 720)
     :condition (and (at start (step_pending s30)) (at start (done17)) (at start (done34)) (at start (done55)) (at start (done58)) (at start (done60)) (at start (done76)) (at start (done79)) (at start (done86)) (at start (done87)))
     :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (done30))))

  (:durative-action do_step31
     :parameters ()
     :duration (= ?duration 600)
     :condition (at start (step_pending s31))
     :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (done31))))

  (:durative-action do_step32
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s32)) (at start (done79)))
     :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (done32))))

  (:durative-action do_step33
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s33)) (at start (done46)) (at start (done54)) (at start (done55)) (at start (done67)) (at start (done73)) (at start (done86)) (at start (done49)))
     :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (done33))))

  (:durative-action do_step34
     :parameters ()
     :duration (= ?duration 900)
     :condition (and (at start (step_pending s34)) (at start (done46)) (at start (done56)) (at start (done89)))
     :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (done34))))

  (:durative-action do_step35
     :parameters ()
     :duration (= ?duration 1200)
     :condition (at start (step_pending s35))
     :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (done35))))

  (:durative-action do_step36
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step_pending s36)) (at start (done33)) (at start (done16)) (at start (done47)) (at start (done73)))
     :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (done36))))

  (:durative-action do_step37
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s37)) (at start (done12)) (at start (done41)) (at start (done67)) (at start (done89)))
     :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (done37))))

  (:durative-action do_step38
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s38)) (at start (done13)) (at start (done34)) (at start (done54)) (at start (done60)) (at start (done62)))
     :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (done38))))

  (:durative-action do_step39
     :parameters ()
     :duration (= ?duration 540)
     :condition (and (at start (step_pending s39)) (at start (done38)) (at start (done59)) (at start (done67)) (at start (done80)))
     :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (done39))))

  (:durative-action do_step40
     :parameters ()
     :duration (= ?duration 420)
     :condition (and (at start (step_pending s40)) (at start (done28)))
     :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (done40))))

  (:durative-action do_step41
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s41))
     :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (done41))))

  (:durative-action do_step42
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s42)) (at start (done62)) (at start (done86)))
     :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (done42))))

  (:durative-action do_step43
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s43)) (at start (done4)) (at start (done5)) (at start (done44)) (at start (done67)))
     :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (done43))))

  (:durative-action do_step44
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step_pending s44)) (at start (done35)) (at start (done59)))
     :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (done44))))

  (:durative-action do_step45
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s45)) (at start (done3)) (at start (done37)) (at start (done51)) (at start (done53)) (at start (done61)) (at start (done66)) (at start (done73)) (at start (done88)))
     :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (done45))))

  (:durative-action do_step46
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s46))
     :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (done46))))

  (:durative-action do_step47
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s47)) (at start (done41)) (at start (done42)))
     :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (done47))))

  (:durative-action do_step48
     :parameters ()
     :duration (= ?duration 420)
     :condition (and (at start (step_pending s48)) (at start (done40)) (at start (done44)) (at start (done59)) (at start (done79)) (at start (done88)))
     :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (done48))))

  (:durative-action do_step49
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s49)) (at start (done42)) (at start (done59)))
     :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (done49))))

  (:durative-action do_step50
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step_pending s50)) (at start (done48)))
     :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (done50))))

  (:durative-action do_step51
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s51)) (at start (done86)))
     :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (done51))))

  (:durative-action do_step52
     :parameters ()
     :duration (= ?duration 60)
     :condition (and (at start (step_pending s52)) (at start (done20)) (at start (done66)))
     :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (done52))))

  (:durative-action do_step53
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s53)) (at start (done16)) (at start (done41)) (at start (done43)))
     :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (done53))))

  (:durative-action do_step54
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s54)) (at start (done5)) (at start (done43)) (at start (done51)) (at start (done83)))
     :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (done54))))

  (:durative-action do_step55
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s55)) (at start (done59)) (at start (done65)))
     :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (done55))))

  (:durative-action do_step56
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s56)) (at start (done55)) (at start (done64)))
     :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (done56))))

  (:durative-action do_step57
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step_pending s57)) (at start (done14)) (at start (done19)) (at start (done28)) (at start (done31)) (at start (done43)))
     :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (done57))))

  (:durative-action do_step58
     :parameters ()
     :duration (= ?duration 900)
     :condition (and (at start (step_pending s58)) (at start (done89)))
     :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (done58))))

  (:durative-action do_step59
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s59)) (at start (done12)))
     :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (done59))))

  (:durative-action do_step60
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s60)) (at start (done67)))
     :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (done60))))

  (:durative-action do_step61
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s61)) (at start (done84)))
     :effect (and (at start (not (step_pending s61))) (at end (step_done s61)) (at end (done61))))

  (:durative-action do_step62
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s62))
     :effect (and (at start (not (step_pending s62))) (at end (step_done s62)) (at end (done62))))

  (:durative-action do_step63
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s63)) (at start (done45)) (at start (done72)) (at start (done82)) (at start (done73)))
     :effect (and (at start (not (step_pending s63))) (at end (step_done s63)) (at end (done63))))

  (:durative-action do_step64
     :parameters ()
     :duration (= ?duration 720)
     :condition (and (at start (step_pending s64)) (at start (done28)))
     :effect (and (at start (not (step_pending s64))) (at end (step_done s64)) (at end (done64))))

  (:durative-action do_step65
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s65)) (at start (done83)))
     :effect (and (at start (not (step_pending s65))) (at end (step_done s65)) (at end (done65))))

  (:durative-action do_step66
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s66)) (at start (done55)))
     :effect (and (at start (not (step_pending s66))) (at end (step_done s66)) (at end (done66))))

  (:durative-action do_step67
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s67)) (at start (done5)))
     :effect (and (at start (not (step_pending s67))) (at end (step_done s67)) (at end (done67))))

  (:durative-action do_step68
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s68)) (at start (done15)) (at start (done45)) (at start (done46)) (at start (done53)))
     :effect (and (at start (not (step_pending s68))) (at end (step_done s68)) (at end (done68))))

  (:durative-action do_step69
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step_pending s69)) (at start (done5)))
     :effect (and (at start (not (step_pending s69))) (at end (step_done s69)) (at end (done69))))

  (:durative-action do_step70
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s70)) (at start (done64)) (at start (done89)))
     :effect (and (at start (not (step_pending s70))) (at end (step_done s70)) (at end (done70))))

  (:durative-action do_step71
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s71)) (at start (done9)) (at start (done21)) (at start (done43)) (at start (done62)) (at start (done74)) (at start (done76)) (at start (done84)))
     :effect (and (at start (not (step_pending s71))) (at end (step_done s71)) (at end (done71))))

  (:durative-action do_step72
     :parameters ()
     :duration (= ?duration 120)
     :condition (at start (step_pending s72))
     :effect (and (at start (not (step_pending s72))) (at end (step_done s72)) (at end (done72))))

  (:durative-action do_step73
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s73)) (at start (done37)))
     :effect (and (at start (not (step_pending s73))) (at end (step_done s73)) (at end (done73))))

  (:durative-action do_step74
     :parameters ()
     :duration (= ?duration 420)
     :condition (and (at start (step_pending s74)) (at start (done16)) (at start (done42)) (at start (done48)) (at start (done54)))
     :effect (and (at start (not (step_pending s74))) (at end (step_done s74)) (at end (done74))))

  (:durative-action do_step75
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s75)) (at start (done61)) (at start (done82)) (at start (done86)))
     :effect (and (at start (not (step_pending s75))) (at end (step_done s75)) (at end (done75))))

  (:durative-action do_step76
     :parameters ()
     :duration (= ?duration 540)
     :condition (and (at start (step_pending s76)) (at start (done14)))
     :effect (and (at start (not (step_pending s76))) (at end (step_done s76)) (at end (done76))))

  (:durative-action do_step77
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s77)) (at start (done11)) (at start (done56)) (at start (done64)) (at start (done75)))
     :effect (and (at start (not (step_pending s77))) (at end (step_done s77)) (at end (done77))))

  (:durative-action do_step78
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s78)) (at start (done49)) (at start (done56)) (at start (done84)) (at start (done69)))
     :effect (and (at start (not (step_pending s78))) (at end (step_done s78)) (at end (done78))))

  (:durative-action do_step79
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s79))
     :effect (and (at start (not (step_pending s79))) (at end (step_done s79)) (at end (done79))))

  (:durative-action do_step80
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s80)) (at start (done41)) (at start (done45)) (at start (done46)) (at start (done54)) (at start (done55)) (at start (done69)))
     :effect (and (at start (not (step_pending s80))) (at end (step_done s80)) (at end (done80))))

  (:durative-action do_step81
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s81)) (at start (done73)))
     :effect (and (at start (not (step_pending s81))) (at end (step_done s81)) (at end (done81))))

  (:durative-action do_step82
     :parameters ()
     :duration (= ?duration 720)
     :condition (and (at start (step_pending s82)) (at start (done33)) (at start (done48)) (at start (done73)) (at start (done89)))
     :effect (and (at start (not (step_pending s82))) (at end (step_done s82)) (at end (done82))))

  (:durative-action do_step83
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s83)) (at start (done89)))
     :effect (and (at start (not (step_pending s83))) (at end (step_done s83)) (at end (done83))))

  (:durative-action do_step84
     :parameters ()
     :duration (= ?duration 900)
     :condition (and (at start (step_pending s84)) (at start (done51)))
     :effect (and (at start (not (step_pending s84))) (at end (step_done s84)) (at end (done84))))

  (:durative-action do_step85
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step_pending s85)) (at start (done37)) (at start (done65)) (at start (done41)))
     :effect (and (at start (not (step_pending s85))) (at end (step_done s85)) (at end (done85))))

  (:durative-action do_step86
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step_pending s86))
     :effect (and (at start (not (step_pending s86))) (at end (step_done s86)) (at end (done86))))

  (:durative-action do_step87
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step_pending s87)) (at start (done48)))
     :effect (and (at start (not (step_pending s87))) (at end (step_done s87)) (at end (done87))))

  (:durative-action do_step88
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (step_pending s88)) (at start (done31)))
     :effect (and (at start (not (step_pending s88))) (at end (step_done s88)) (at end (done88))))

  (:durative-action do_step89
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step_pending s89)) (at start (done5)) (at start (done86)))
     :effect (and (at start (not (step_pending s89))) (at end (step_done s89)) (at end (done89))))

  (:durative-action do_step90
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step_pending s90)) (at start (done8)) (at start (done27)) (at start (done43)) (at start (done48)) (at start (done59)) (at start (done72)))
     :effect (and (at start (not (step_pending s90))) (at end (step_done s90)) (at end (done90))))
)
