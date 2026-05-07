(define (domain garden_build)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; unique semantic predicates for each step
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
  )

  ; One durative-action per step. Each action requires its listed predecessors' semantic predicates
  ; as at-start conditions, and requires its own step_pending. At start it clears step_pending.
  ; At end it asserts step_done for the step and the unique semantic predicate (doneX).

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (done5)) (at start (done41)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (done29)) (at start (done71)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (done46)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step4)) (at start (done7)) (at start (done72)) (at start (done75)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step6)) (at start (done48)) (at start (done55)) (at start (done66)) (at start (done77)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step9)) (at start (done4)) (at start (done29)) (at start (done44)) (at start (done46)) (at start (done47)) (at start (done56)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step10)) (at start (done29)) (at start (done68)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step11)) (at start (done25)) (at start (done57)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step12)) (at start (done8)) (at start (done10)) (at start (done63)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step13)) (at start (done3)) (at start (done10)) (at start (done37)) (at start (done44)) (at start (done51)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step14)) (at start (done29)) (at start (done41)) (at start (done49)) (at start (done55)) (at start (done62)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (done58)) (at start (done61)) (at start (done79)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step16)) (at start (done1)) (at start (done38)) (at start (done39)) (at start (done42)) (at start (done58)) (at start (done75)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step17)) (at start (done19)) (at start (done24)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step18)) (at start (done4)) (at start (done38)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (done24)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step20)) (at start (done1)) (at start (done70)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step21)) (at start (done18)) (at start (done43)) (at start (done64)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step22)) (at start (done50)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step23)) (at start (done53)) (at start (done54)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step24)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (done34)) (at start (done41)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (done17)) (at start (done40)) (at start (done55)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (done1)) (at start (done7)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step29)) (at start (done72)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (done63)) (at start (done72)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step31)) (at start (done19)) (at start (done27)) (at start (done51)) (at start (done55)) (at start (done67)) (at start (done76)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step32)) (at start (done24)) (at start (done44)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (done20)) (at start (done23)) (at start (done34)) (at start (done61)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (done2)) (at start (done28)) (at start (done48)) (at start (done58)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (done67)) (at start (done75)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step37)) (at start (done4)) (at start (done19)) (at start (done72)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (done41)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step39)) (at start (done50)) (at start (done63)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step40)) (at start (done56)) (at start (done66)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step41)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step42)) (at start (done6)) (at start (done32)) (at start (done43)) (at start (done59)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step43)) (at start (done17)) (at start (done55)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step44)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step45)) (at start (done55)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step46)) (at start (done22)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step47)) (at start (done53)) (at start (done58)) (at start (done75)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step48)) (at start (done50)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step49)) (at start (done22)) (at start (done46)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step50)) (at start (done32)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (done77)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step52)) (at start (done34)) (at start (done44)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step53)) (at start (done5)) (at start (done8)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (done8)) (at start (done58)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step55)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step56)) (at start (done1)) (at start (done41)) (at start (done50)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step57)) (at start (done20)) (at start (done26)) (at start (done41)) (at start (done77)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step58)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step59)) (at start (done62)) (at start (done79)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step60)) (at start (done34)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action do_step61
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step61)) (at start (done53)) (at start (done70)) (at start (done80)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action do_step62
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step62)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action do_step63
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step63)) (at start (done54)) (at start (done77)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action do_step64
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step64)) (at start (done18)) (at start (done26)) (at start (done43)) (at start (done54)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action do_step65
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step65)) (at start (done18)) (at start (done36)) (at start (done56)) (at start (done62)) (at start (done73)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action do_step66
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step66)) (at start (done55)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action do_step67
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step67)) (at start (done22)) (at start (done55)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action do_step68
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step68)) (at start (done24)) (at start (done59)) (at start (done62)) (at start (done64)) (at start (done65)) (at start (done66)) (at start (done72)) (at start (done75)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action do_step69
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step69)) (at start (done58)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action do_step70
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step70)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done70)))
  )

  (:durative-action do_step71
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step71)) (at start (done36)) (at start (done53)) (at start (done67)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done71)))
  )

  (:durative-action do_step72
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step72)) (at start (done75)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done72)))
  )

  (:durative-action do_step73
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step73)) (at start (done9)) (at start (done15)) (at start (done58)) (at start (done72)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done73)))
  )

  (:durative-action do_step74
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step74)) (at start (done6)) (at start (done56)) (at start (done62)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done74)))
  )

  (:durative-action do_step75
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step75)) (at start (done24)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done75)))
  )

  (:durative-action do_step76
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step76)) (at start (done39)) (at start (done50)) (at start (done79)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done76)))
  )

  (:durative-action do_step77
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step77)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done77)))
  )

  (:durative-action do_step78
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step78)) (at start (done32)) (at start (done51)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done78)))
  )

  (:durative-action do_step79
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step79)) (at start (done40)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done79)))
  )

  (:durative-action do_step80
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step80)) (at start (done50)) (at start (done66)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done80)))
  )
)
