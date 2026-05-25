(define (domain leche-flan)
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
    (done91) (done92) (done93) (done94) (done95) (done96) (done97) (done98) (done99) (done100)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step1) (done3) (done40) (done56) (done78) (done88)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step2) (done10) (done98)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step3) (done5) (done29) (done79) (done99)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step4) (done43)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step5) (done21) (done31) (done50)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step7) (done27) (done38) (done45) (done75) (done78) (done79) (done83) (done99) (done100)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step8) (done74) (done79) (done90)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step9)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step10)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step11) (done1) (done3) (done30)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step12) (done10) (done14) (done45)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step13) (done26) (done67) (done68) (done69) (done97) (done100)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step15) (done93)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step16) (done37) (done45) (done72)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step17) (done9) (done25) (done75)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step18) (done14) (done30) (done56) (done96)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step19) (done34) (done75) (done89)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step20) (done23) (done24) (done53)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step21) (done6) (done30)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step22) (done10) (done81)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step23)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step24)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step25)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step26)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step27) (done23) (done43) (done74) (done78)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step28) (done7) (done50) (done59) (done62) (done77) (done81) (done93)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step29) (done79)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step30) (done60)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step31) (done14) (done18) (done23) (done55) (done71) (done98)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step32) (done34) (done77) (done96) (done79)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step33) (done23) (done56) (done66)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step34) (done6) (done25)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step35) (done43) (done48) (done54) (done96)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step36) (done7) (done21) (done42) (done70)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step37)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step38) (done25)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step39) (done76) (done48) (done83) (done93)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step40) (done8) (done34) (done61) (done72) (done92)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step41) (done26) (done31) (done39) (done65) (done96) (done73)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step42) (done28) (done37) (done69)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step43) (done56)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step44) (done30) (done60) (done73)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step45) (done48)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step46) (done26) (done79)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 21600)
    :condition (at start (and (step_pending step47) (done4) (done18) (done25) (done42) (done61) (done66) (done77) (done89) (done99)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step48)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step49) (done78)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step50) (done10) (done46) (done81) (done90)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step51) (done69) (done73) (done97)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step52) (done97)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step53) (done29) (done45)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step54) (done37) (done74) (done100)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step55) (done10) (done74) (done81) (done97)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step56)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step57)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step58) (done17) (done70)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step59)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step60) (done14)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action do-step61
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step61) (done21) (done34) (done66) (done72) (done43) (done69) (done97)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action do-step62
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step62)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action do-step63
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step63) (done3) (done22) (done28) (done43) (done55) (done77) (done93) (done97)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action do-step64
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step64) (done27)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action do-step65
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step65) (done26) (done32) (done90) (done93)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action do-step66
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step66) (done23) (done34) (done46) (done51) (done82) (done97)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action do-step67
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step67)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action do-step68
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step68) (done93) (done100)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action do-step69
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step69) (done73)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action do-step70
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step70) (done30)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done70)))
  )

  (:durative-action do-step71
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step71) (done48)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done71)))
  )

  (:durative-action do-step72
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step72) (done45) (done77)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done72)))
  )

  (:durative-action do-step73
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step73) (done10) (done30)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done73)))
  )

  (:durative-action do-step74
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step74) (done59)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done74)))
  )

  (:durative-action do-step75
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step75)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done75)))
  )

  (:durative-action do-step76
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step76) (done55) (done97) (done78)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done76)))
  )

  (:durative-action do-step77
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step77)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done77)))
  )

  (:durative-action do-step78
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step78) (done25)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done78)))
  )

  (:durative-action do-step79
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step79)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done79)))
  )

  (:durative-action do-step80
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step80)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done80)))
  )

  (:durative-action do-step81
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step81)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done81)))
  )

  (:durative-action do-step82
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step82) (done80) (done25)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done82)))
  )

  (:durative-action do-step83
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step83) (done48)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done83)))
  )

  (:durative-action do-step84
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step84) (done16) (done20)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done84)))
  )

  (:durative-action do-step85
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step85) (done56) (done57) (done67) (done70)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done85)))
  )

  (:durative-action do-step86
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step86) (done56) (done67)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done86)))
  )

  (:durative-action do-step87
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step87) (done44)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done87)))
  )

  (:durative-action do-step88
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step88) (done73) (done85) (done29)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done88)))
  )

  (:durative-action do-step89
    :parameters ()
    :duration (= ?duration 420)
    :condition (at start (and (step_pending step89) (done8) (done50)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done89)))
  )

  (:durative-action do-step90
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step90) (done44) (done93)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done90)))
  )

  (:durative-action do-step91
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step91) (done74)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (done91)))
  )

  (:durative-action do-step92
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step92) (done9) (done13) (done34) (done72) (done83) (done85)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (done92)))
  )

  (:durative-action do-step93
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step93) (done44)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (done93)))
  )

  (:durative-action do-step94
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step94) (done23) (done34) (done37) (done45) (done48) (done97)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (done94)))
  )

  (:durative-action do-step95
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step95) (done18) (done26) (done42) (done56) (done62) (done66) (done67) (done68) (done72) (done76) (done97)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (done95)))
  )

  (:durative-action do-step96
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step96)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (done96)))
  )

  (:durative-action do-step97
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step97) (done6) (done34)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (done97)))
  )

  (:durative-action do-step98
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step98) (done27) (done9)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (done98)))
  )

  (:durative-action do-step99
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step99) (done97)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (done99)))
  )

  (:durative-action do-step100
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step100)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (done100)))
  )
)
