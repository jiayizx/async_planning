(define (domain name-change-nevada)
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

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step1)) (at start (done33)) (at start (done73)) (at start (done84)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (done40)) (at start (done53)) (at start (done54)) (at start (done74)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step3)) (at start (done71)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (done15)) (at start (done41)) (at start (done65)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step5)) (at start (done32)) (at start (done34)) (at start (done83)) (at start (done88)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (done47)) (at start (done60)) (at start (done79)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step7)) (at start (done24)) (at start (done45)) (at start (done48)) (at start (done52)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending step8)) (at start (done23)) (at start (done40)) (at start (done71)) (at start (done52)) (at start (done84)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step9)) (at start (done65)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (done14)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (done51)) (at start (done80)) (at start (done71)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done5)) (at start (done82)) (at start (done84)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step13)) (at start (done12)) (at start (done19)) (at start (done25)) (at start (done54)) (at start (done61)) (at start (done89)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (done71)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (done9)) (at start (done23)) (at start (done79)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step17)) (at start (done31)) (at start (done41)) (at start (done42)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step18)) (at start (done48)) (at start (done78)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step19)) (at start (done16)) (at start (done23)) (at start (done26)) (at start (done34)) (at start (done42)) (at start (done46)) (at start (done48)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done29)) (at start (done31)) (at start (done32)) (at start (done60)) (at start (done72)) (at start (done74)) (at start (done78)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step21)) (at start (done8)) (at start (done36)) (at start (done80)) (at start (done71)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step22)) (at start (done71)) (at start (done54)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (done58)) (at start (done71)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step24)) (at start (done15)) (at start (done45)) (at start (done71)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step25)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step26)) (at start (done5)) (at start (done23)) (at start (done45)) (at start (done80)) (at start (done83)) (at start (done84)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (done4)) (at start (done22)) (at start (done57)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (done52)) (at start (done80)) (at start (done85)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step29)) (at start (done30)) (at start (done31)) (at start (done49)) (at start (done80)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step30)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step31)) (at start (done36)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending step32)) (at start (done25)) (at start (done31)) (at start (done36)) (at start (done45)) (at start (done81)) (at start (done83)) (at start (done86)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (done84)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step34)) (at start (done69)) (at start (done86)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (done15)) (at start (done70)) (at start (done74)) (at start (done80)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (done15)) (at start (done73)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (done56)) (at start (done37)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (done65)) (at start (done80)) (at start (done84)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending step40)) (at start (done58)) (at start (done64)) (at start (done71)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (done53)) (at start (done58)) (at start (done65)) (at start (done76)) (at start (done83)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action step43
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step43)) (at start (done1)) (at start (done19)) (at start (done23)) (at start (done25)) (at start (done41)) (at start (done67)) (at start (done76)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action step44
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step44)) (at start (done65)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action step46
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step46)) (at start (done4)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action step47
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step47)) (at start (done25)) (at start (done31)) (at start (done64)) (at start (done69)) (at start (done81)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action step48
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step48)) (at start (done21)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action step49
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending step49)) (at start (done8)) (at start (done10)) (at start (done71)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action step50
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step50)) (at start (done2)) (at start (done39)) (at start (done63)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action step51
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (done70)) (at start (done71)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action step52
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step52)) (at start (done30)) (at start (done41)) (at start (done51)) (at start (done70)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action step53
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (done47)) (at start (done65)) (at start (done69)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action step54
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step54)) (at start (done7)) (at start (done35)) (at start (done58)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action step55
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step55)) (at start (done2)) (at start (done76)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action step56
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step56)) (at start (done29)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action step57
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step57)) (at start (done65)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action step58
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (done64)) (at start (done70)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action step59
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step59)) (at start (done4)) (at start (done19)) (at start (done23)) (at start (done27)) (at start (done31)) (at start (done35)) (at start (done65)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action step60
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step60)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action step61
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step61)) (at start (done30)) (at start (done41)) (at start (done81)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action step62
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step62)) (at start (done1)) (at start (done36)) (at start (done41)) (at start (done68)) (at start (done73)) (at start (done80)) (at start (done87)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action step63
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step63)) (at start (done74)) (at start (done88)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action step64
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step64)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action step65
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step65)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action step66
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (done7)) (at start (done17)) (at start (done19)) (at start (done30)) (at start (done40)) (at start (done51)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action step67
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step67)) (at start (done24)) (at start (done35)) (at start (done53)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action step68
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step68)) (at start (done16)) (at start (done34)) (at start (done35)) (at start (done72)) (at start (done86)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action step69
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step69)) (at start (done8)) (at start (done64)) (at start (done78)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action step70
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step70)) (at start (done60)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done70)))
  )

  (:durative-action step71
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step71)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done71)))
  )

  (:durative-action step72
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step72)) (at start (done2)) (at start (done29)) (at start (done31)) (at start (done32)) (at start (done67)) (at start (done71)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done72)))
  )

  (:durative-action step73
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step73)) (at start (done18)) (at start (done37)) (at start (done46)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done73)))
  )

  (:durative-action step74
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step74)) (at start (done31)) (at start (done47)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done74)))
  )

  (:durative-action step75
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step75)) (at start (done71)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done75)))
  )

  (:durative-action step76
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step76)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done76)))
  )

  (:durative-action step77
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step77)) (at start (done42)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done77)))
  )

  (:durative-action step78
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step78)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done78)))
  )

  (:durative-action step79
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step79)) (at start (done64)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done79)))
  )

  (:durative-action step80
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step80)) (at start (done51)) (at start (done60)) (at start (done65)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done80)))
  )

  (:durative-action step81
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step81)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done81)))
  )

  (:durative-action step82
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step82)) (at start (done33)) (at start (done78)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done82)))
  )

  (:durative-action step83
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (done52)) (at start (done60)) (at start (done65)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done83)))
  )

  (:durative-action step84
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step84)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done84)))
  )

  (:durative-action step85
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step85)) (at start (done40)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done85)))
  )

  (:durative-action step86
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step86)) (at start (done30)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done86)))
  )

  (:durative-action step87
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step87)) (at start (done59)) (at start (done68)) (at start (done86)) (at start (done88)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done87)))
  )

  (:durative-action step88
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step88)) (at start (done41)) (at start (done65)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done88)))
  )

  (:durative-action step89
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step89)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done89)))
  )

  (:durative-action step90
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step90)) (at start (done14)) (at start (done69)) (at start (done84)) (at start (done87)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done90)))
  )
)
