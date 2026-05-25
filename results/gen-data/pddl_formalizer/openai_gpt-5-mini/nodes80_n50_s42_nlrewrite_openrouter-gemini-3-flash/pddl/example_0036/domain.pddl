(define (domain apartment_makeover)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
  )

  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done21)) (at start (done77)))
    :effect (and (at start (not (step_pending))) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending)) (at start (done11)) (at start (done28)) (at start (done40)) (at start (done59)))
    :effect (and (at start (not (step_pending))) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done14)))
    :effect (and (at start (not (step_pending))) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending)) (at start (done61)))
    :effect (and (at start (not (step_pending))) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done77)))
    :effect (and (at start (not (step_pending))) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done54)) (at start (done59)))
    :effect (and (at start (not (step_pending))) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done41)) (at start (done56)) (at start (done71)))
    :effect (and (at start (not (step_pending))) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done40)) (at start (done59)) (at start (done73)))
    :effect (and (at start (not (step_pending))) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (and (at start (step_pending)) (at start (done5)) (at start (done16)) (at start (done31)) (at start (done43)) (at start (done44)) (at start (done78)))
    :effect (and (at start (not (step_pending))) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 259200)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done19)) (at start (done40)) (at start (done63)))
    :effect (and (at start (not (step_pending))) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done11)) (at start (done28)))
    :effect (and (at start (not (step_pending))) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 18000)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done6)) (at start (done37)))
    :effect (and (at start (not (step_pending))) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending)) (at start (done7)) (at start (done8)) (at start (done10)) (at start (done69)))
    :effect (and (at start (not (step_pending))) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done48)))
    :effect (and (at start (not (step_pending))) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 86400)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done25)) (at start (done35)))
    :effect (and (at start (not (step_pending))) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending)) (at start (done37)))
    :effect (and (at start (not (step_pending))) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done6)) (at start (done34)) (at start (done64)))
    :effect (and (at start (not (step_pending))) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending)) (at start (done15)) (at start (done45)) (at start (done66)) (at start (done68)))
    :effect (and (at start (not (step_pending))) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending)) (at start (done42)))
    :effect (and (at start (not (step_pending))) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done4)) (at start (done21)) (at start (done24)) (at start (done37)))
    :effect (and (at start (not (step_pending))) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done15)) (at start (done55)) (at start (done71)))
    :effect (and (at start (not (step_pending))) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 172800)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending)) (at start (done6)) (at start (done11)) (at start (done34)) (at start (done56)) (at start (done75)))
    :effect (and (at start (not (step_pending))) (at end (done30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 900)
    :condition (and (at start (step_pending)) (at start (done32)) (at start (done40)) (at start (done41)))
    :effect (and (at start (not (step_pending))) (at end (done31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done1)) (at start (done56)))
    :effect (and (at start (not (step_pending))) (at end (done32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 7200)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done24)))
    :effect (and (at start (not (step_pending))) (at end (done34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 900)
    :condition (and (at start (step_pending)) (at start (done13)) (at start (done24)) (at start (done55)) (at start (done73)))
    :effect (and (at start (not (step_pending))) (at end (done36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done12)) (at start (done54)))
    :effect (and (at start (not (step_pending))) (at end (done38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done8)))
    :effect (and (at start (not (step_pending))) (at end (done39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending)) (at start (done33)))
    :effect (and (at start (not (step_pending))) (at end (done40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done12)))
    :effect (and (at start (not (step_pending))) (at end (done41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done31)) (at start (done45)) (at start (done40)))
    :effect (and (at start (not (step_pending))) (at end (done42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done71)) (at start (done74)))
    :effect (and (at start (not (step_pending))) (at end (done43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 7200)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending)) (at start (done6)) (at start (done24)) (at start (done51)))
    :effect (and (at start (not (step_pending))) (at end (done45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done11)) (at start (done69)))
    :effect (and (at start (not (step_pending))) (at end (done46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending)) (at start (done5)) (at start (done28)) (at start (done50)) (at start (done56)) (at start (done68)))
    :effect (and (at start (not (step_pending))) (at end (done47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done44)) (at start (done75)))
    :effect (and (at start (not (step_pending))) (at end (done48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done29)))
    :effect (and (at start (not (step_pending))) (at end (done49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done1)) (at start (done4)) (at start (done14)) (at start (done45)))
    :effect (and (at start (not (step_pending))) (at end (done50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done77)))
    :effect (and (at start (not (step_pending))) (at end (done51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done62)))
    :effect (and (at start (not (step_pending))) (at end (done52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done40)))
    :effect (and (at start (not (step_pending))) (at end (done53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending)) (at start (done1)) (at start (done3)) (at start (done12)) (at start (done14)) (at start (done28)) (at start (done35)))
    :effect (and (at start (not (step_pending))) (at end (done54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending)) (at start (done19)) (at start (done28)))
    :effect (and (at start (not (step_pending))) (at end (done56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 600)
    :condition (and (at start (step_pending)) (at start (done5)) (at start (done16)) (at start (done45)))
    :effect (and (at start (not (step_pending))) (at end (done57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 300)
    :condition (and (at start (step_pending)) (at start (done14)) (at start (done56)))
    :effect (and (at start (not (step_pending))) (at end (done58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done74)))
    :effect (and (at start (not (step_pending))) (at end (done59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done9)) (at start (done24)) (at start (done56)) (at start (done59)) (at start (done66)))
    :effect (and (at start (not (step_pending))) (at end (done60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (step_pending)) (at start (done51)))
    :effect (and (at start (not (step_pending))) (at end (done61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 600)
    :condition (and (at start (step_pending)) (at start (done25)) (at start (done35)) (at start (done55)))
    :effect (and (at start (not (step_pending))) (at end (done62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 7200)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 600)
    :condition (and (at start (step_pending)) (at start (done35)) (at start (done54)) (at start (done79)))
    :effect (and (at start (not (step_pending))) (at end (done65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done5)) (at start (done64)) (at start (done73)) (at start (done78)) (at start (done77)))
    :effect (and (at start (not (step_pending))) (at end (done67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done1)))
    :effect (and (at start (not (step_pending))) (at end (done68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending)) (at start (done39)) (at start (done43)) (at start (done73)))
    :effect (and (at start (not (step_pending))) (at end (done69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 900)
    :condition (and (at start (step_pending)) (at start (done19)) (at start (done44)) (at start (done50)) (at start (done51)) (at start (done73)))
    :effect (and (at start (not (step_pending))) (at end (done70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done63)))
    :effect (and (at start (not (step_pending))) (at end (done71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 300)
    :condition (and (at start (step_pending)) (at start (done5)) (at start (done56)) (at start (done59)) (at start (done78)))
    :effect (and (at start (not (step_pending))) (at end (done72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending)) (at start (done2)) (at start (done14)))
    :effect (and (at start (not (step_pending))) (at end (done73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 3600)
    :condition (at start (step_pending))
    :effect (and (at start (not (step_pending))) (at end (done74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done21)))
    :effect (and (at start (not (step_pending))) (at end (done75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending)) (at start (done51)))
    :effect (and (at start (not (step_pending))) (at end (done76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending)) (at start (done19)))
    :effect (and (at start (not (step_pending))) (at end (done77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending)) (at start (done18)) (at start (done38)) (at start (done46)) (at start (done50)) (at start (done71)) (at start (done73)))
    :effect (and (at start (not (step_pending))) (at end (done78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 300)
    :condition (and (at start (step_pending)) (at start (done6)) (at start (done26)) (at start (done50)) (at start (done53)) (at start (done69)))
    :effect (and (at start (not (step_pending))) (at end (done79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending)) (at start (done23)))
    :effect (and (at start (not (step_pending))) (at end (done80)))
  )
)
