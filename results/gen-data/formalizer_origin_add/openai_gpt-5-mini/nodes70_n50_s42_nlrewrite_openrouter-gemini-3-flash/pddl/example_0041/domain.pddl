(define (domain pumpkin_capsicum_soup)
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
  )

  ;; One durative-action per step. Actions have no parameters and operate on the named step constants.

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step1) (done3) (done24)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step2) (done27) (done54) (done39)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step3) (done5) (done22) (done27) (done52) (done62)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step4) (done40) (done49) (done67)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step5) (done54)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step6) (done3) (done13) (done38) (done58)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step8) (done13)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step9) (done22) (done39) (done52) (done60)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step10) (done25) (done38) (done46)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step11) (done24) (done51) (done64)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step12) (done19) (done47) (done70)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step14) (done2) (done28) (done33) (done38)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step15) (done1) (done19) (done20) (done44) (done68)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step16) (done54)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step17) (done22) (done26) (done36) (done58)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step18) (done11) (done59) (done60) (done62)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step20) (done26) (done53) (done46)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step21) (done43)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step22) (done55)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step23) (done14) (done16) (done19) (done41) (done47) (done59) (done27) (done28) (done43)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step24) (done25) (done38)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step27) (done46)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step28) (done1) (done41) (done47) (done67)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step29) (done16) (done64)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step30) (done23) (done39)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step31) (done27) (done49) (done52) (done69)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step32) (done27) (done42) (done49) (done51)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step33) (done10) (done20) (done26)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step35) (done13)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step36) (done44) (done46) (done62) (done67)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step39) (done37)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step40) (done45)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step45) (done19) (done59)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 420)
    :condition (at start (and (step_pending step47) (done20) (done53) (done56)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step48) (done6) (done15) (done64) (done69)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step50) (done35)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step51) (done10) (done50)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step52) (done19) (done49)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step53) (done67)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step54) (done39)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step55) (done13)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step56) (done34)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step57) (done13) (done52)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step59) (done2) (done3) (done16) (done65) (done67) (done58)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action do-step61
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step61) (done8) (done10) (done56) (done58) (done13)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action do-step62
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action do-step63
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step63) (done7) (done22) (done54)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action do-step64
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action do-step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step65) (done16) (done21) (done24)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action do-step66
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step66) (done2) (done6) (done33) (done67)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action do-step67
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action do-step68
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step68) (done14) (done37)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action do-step69
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step69) (done27) (done28) (done41) (done52) (done59) (done21)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action do-step70
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step70) (done8) (done39)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done70)))
  )
)
