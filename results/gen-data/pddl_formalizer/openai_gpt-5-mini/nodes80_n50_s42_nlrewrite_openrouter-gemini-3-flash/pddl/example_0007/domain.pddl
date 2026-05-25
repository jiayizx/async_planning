(define (domain giant-pancake)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished1) (finished2) (finished3) (finished4) (finished5) (finished6) (finished7) (finished8) (finished9) (finished10)
    (finished11) (finished12) (finished13) (finished14) (finished15) (finished16) (finished17) (finished18) (finished19) (finished20)
    (finished21) (finished22) (finished23) (finished24) (finished25) (finished26) (finished27) (finished28) (finished29) (finished30)
    (finished31) (finished32) (finished33) (finished34) (finished35) (finished36) (finished37) (finished38) (finished39) (finished40)
    (finished41) (finished42) (finished43) (finished44) (finished45) (finished46) (finished47) (finished48) (finished49) (finished50)
    (finished51) (finished52) (finished53) (finished54) (finished55) (finished56) (finished57) (finished58) (finished59) (finished60)
    (finished61) (finished62) (finished63) (finished64) (finished65) (finished66) (finished67) (finished68) (finished69) (finished70)
    (finished71) (finished72) (finished73) (finished74) (finished75) (finished76) (finished77) (finished78) (finished79) (finished80)
  )

  ; Note: Each durative-action corresponds to one specific step object (referenced by the constant name).
  ; Effects create the unique "finishedX" semantic predicate at end. Preconditions enforce all listed predecessors.

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (finished19)) (at start (finished74)) (at start (finished53)) (at start (finished80)))
    :effect (and (at end (step_done step1)) (at end (finished1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (finished22)) (at start (finished48)) (at start (finished71)))
    :effect (and (at end (step_done step2)) (at end (finished2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (finished40)) (at start (finished49)))
    :effect (and (at end (step_done step3)) (at end (finished3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (finished21)) (at start (finished43)) (at start (finished77)))
    :effect (and (at end (step_done step4)) (at end (finished4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (finished48)) (at start (finished58)) (at start (finished70)))
    :effect (and (at end (step_done step5)) (at end (finished5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (finished20)) (at start (finished44)) (at start (finished63)))
    :effect (and (at end (step_done step6)) (at end (finished6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (finished3)) (at start (finished22)) (at start (finished42)) (at start (finished52)))
    :effect (and (at end (step_done step7)) (at end (finished7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 180)
    :condition (at start (step_pending step8))
    :effect (and (at end (step_done step8)) (at end (finished8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step9)) (at start (finished13)) (at start (finished45)))
    :effect (and (at end (step_done step9)) (at end (finished9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (finished5)))
    :effect (and (at end (step_done step10)) (at end (finished10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step11)) (at start (finished53)) (at start (finished62)))
    :effect (and (at end (step_done step11)) (at end (finished11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (finished7)) (at start (finished46)) (at start (finished63)))
    :effect (and (at end (step_done step12)) (at end (finished12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (at start (step_pending step13))
    :effect (and (at end (step_done step13)) (at end (finished13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (at start (step_pending step14))
    :effect (and (at end (step_done step14)) (at end (finished14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step15)) (at start (finished45)) (at start (finished48)))
    :effect (and (at end (step_done step15)) (at end (finished15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step16)) (at start (finished7)) (at start (finished14)) (at start (finished29)) (at start (finished71)))
    :effect (and (at end (step_done step16)) (at end (finished16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step17)) (at start (finished24)) (at start (finished20)) (at start (finished49)) (at start (finished57)) (at start (finished68)))
    :effect (and (at end (step_done step17)) (at end (finished17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (finished8)) (at start (finished44)) (at start (finished65)) (at start (finished75)))
    :effect (and (at end (step_done step18)) (at end (finished18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step19)) (at start (finished8)) (at start (finished11)))
    :effect (and (at end (step_done step19)) (at end (finished19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (finished28)) (at start (finished48)) (at start (finished60)))
    :effect (and (at end (step_done step20)) (at end (finished20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 240)
    :condition (at start (step_pending step21))
    :effect (and (at end (step_done step21)) (at end (finished21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (finished61)) (at start (finished66)) (at start (finished46)))
    :effect (and (at end (step_done step22)) (at end (finished22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step23)) (at start (finished11)) (at start (finished28)) (at start (finished59)) (at start (finished69)))
    :effect (and (at end (step_done step23)) (at end (finished23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (finished10)) (at start (finished27)))
    :effect (and (at end (step_done step24)) (at end (finished24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step25)) (at start (finished20)) (at start (finished71)) (at start (finished72)) (at start (finished75)) (at start (finished76)))
    :effect (and (at end (step_done step25)) (at end (finished25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step26)) (at start (finished45)) (at start (finished52)))
    :effect (and (at end (step_done step26)) (at end (finished26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step27)) (at start (finished9)) (at start (finished13)) (at start (finished32)) (at start (finished49)))
    :effect (and (at end (step_done step27)) (at end (finished27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (finished66)))
    :effect (and (at end (step_done step28)) (at end (finished28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (finished35)) (at start (finished38)) (at start (finished70)) (at start (finished79)))
    :effect (and (at end (step_done step29)) (at end (finished29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step30)) (at start (finished46)) (at start (finished66)))
    :effect (and (at end (step_done step30)) (at end (finished30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step31)) (at start (finished1)) (at start (finished29)) (at start (finished38)) (at start (finished40)) (at start (finished41)) (at start (finished50)) (at start (finished63)) (at start (finished47)))
    :effect (and (at end (step_done step31)) (at end (finished31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 360)
    :condition (at start (step_pending step32))
    :effect (and (at end (step_done step32)) (at end (finished32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (finished13)) (at start (finished26)) (at start (finished37)) (at start (finished79)))
    :effect (and (at end (step_done step33)) (at end (finished33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step34)) (at start (finished5)) (at start (finished21)) (at start (finished32)))
    :effect (and (at end (step_done step34)) (at end (finished34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (finished54)) (at start (finished77)))
    :effect (and (at end (step_done step35)) (at end (finished35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (finished8)) (at start (finished9)) (at start (finished11)) (at start (finished14)))
    :effect (and (at end (step_done step36)) (at end (finished36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (finished14)) (at start (finished20)) (at start (finished21)) (at start (finished58)))
    :effect (and (at end (step_done step37)) (at end (finished37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step38)) (at start (finished9)) (at start (finished51)))
    :effect (and (at end (step_done step38)) (at end (finished38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step39)) (at start (finished5)) (at start (finished9)) (at start (finished15)) (at start (finished48)) (at start (finished72)) (at start (finished76)))
    :effect (and (at end (step_done step39)) (at end (finished39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step40)) (at start (finished53)) (at start (finished58)))
    :effect (and (at end (step_done step40)) (at end (finished40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step41)) (at start (finished20)) (at start (finished28)) (at start (finished30)) (at start (finished48)))
    :effect (and (at end (step_done step41)) (at end (finished41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step42)) (at start (finished14)) (at start (finished35)) (at start (finished43)) (at start (finished46)) (at start (finished47)) (at start (finished48)))
    :effect (and (at end (step_done step42)) (at end (finished42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step43)) (at start (finished62)) (at start (finished72)))
    :effect (and (at end (step_done step43)) (at end (finished43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step44)) (at start (finished53)))
    :effect (and (at end (step_done step44)) (at end (finished44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step45)) (at start (finished48)))
    :effect (and (at end (step_done step45)) (at end (finished45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step46)) (at start (finished62)))
    :effect (and (at end (step_done step46)) (at end (finished46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step47)) (at start (finished75)))
    :effect (and (at end (step_done step47)) (at end (finished47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 600)
    :condition (at start (step_pending step48))
    :effect (and (at end (step_done step48)) (at end (finished48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (at start (step_pending step49))
    :effect (and (at end (step_done step49)) (at end (finished49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step50)) (at start (finished5)) (at start (finished8)) (at start (finished19)) (at start (finished49)) (at start (finished54)))
    :effect (and (at end (step_done step50)) (at end (finished50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (at start (step_pending step51))
    :effect (and (at end (step_done step51)) (at end (finished51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step52)) (at start (finished46)))
    :effect (and (at end (step_done step52)) (at end (finished52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 300)
    :condition (at start (step_pending step53))
    :effect (and (at end (step_done step53)) (at end (finished53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step54)) (at start (finished48)) (at start (finished52)) (at start (finished66)))
    :effect (and (at end (step_done step54)) (at end (finished54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step55)) (at start (finished24)) (at start (finished40)) (at start (finished47)))
    :effect (and (at end (step_done step55)) (at end (finished55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step56)) (at start (finished9)) (at start (finished15)) (at start (finished27)) (at start (finished35)) (at start (finished77)) (at start (finished78)))
    :effect (and (at end (step_done step56)) (at end (finished56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step57)) (at start (finished40)) (at start (finished44)))
    :effect (and (at end (step_done step57)) (at end (finished57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (finished43)) (at start (finished73)) (at start (finished48)) (at start (finished61)) (at start (finished79)))
    :effect (and (at end (step_done step58)) (at end (finished58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 120)
    :condition (at start (step_pending step59))
    :effect (and (at end (step_done step59)) (at end (finished59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (at start (step_pending step60))
    :effect (and (at end (step_done step60)) (at end (finished60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step61)) (at start (finished28)))
    :effect (and (at end (step_done step61)) (at end (finished61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 300)
    :condition (at start (step_pending step62))
    :effect (and (at end (step_done step62)) (at end (finished62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step63)) (at start (finished33)) (at start (finished45)) (at start (finished56)) (at start (finished73)) (at start (finished69)))
    :effect (and (at end (step_done step63)) (at end (finished63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step64)) (at start (finished15)) (at start (finished17)) (at start (finished46)) (at start (finished51)) (at start (finished70)))
    :effect (and (at end (step_done step64)) (at end (finished64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 600)
    :condition (at start (step_pending step65))
    :effect (and (at end (step_done step65)) (at end (finished65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step66)) (at start (finished62)))
    :effect (and (at end (step_done step66)) (at end (finished66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step67)) (at start (finished53)))
    :effect (and (at end (step_done step67)) (at end (finished67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step68)) (at start (finished53)))
    :effect (and (at end (step_done step68)) (at end (finished68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 600)
    :condition (at start (step_pending step69))
    :effect (and (at end (step_done step69)) (at end (finished69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step70)) (at start (finished9)) (at start (finished26)) (at start (finished38)))
    :effect (and (at end (step_done step70)) (at end (finished70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step71)) (at start (finished8)) (at start (finished54)))
    :effect (and (at end (step_done step71)) (at end (finished71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step72)) (at start (finished46)) (at start (finished48)) (at start (finished49)) (at start (finished53)))
    :effect (and (at end (step_done step72)) (at end (finished72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step73)) (at start (finished72)))
    :effect (and (at end (step_done step73)) (at end (finished73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step74)) (at start (finished2)) (at start (finished9)) (at start (finished40)))
    :effect (and (at end (step_done step74)) (at end (finished74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step75)) (at start (finished21)) (at start (finished52)) (at start (finished70)))
    :effect (and (at end (step_done step75)) (at end (finished75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step76)) (at start (finished11)) (at start (finished28)))
    :effect (and (at end (step_done step76)) (at end (finished76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (finished9)) (at start (finished10)) (at start (finished52)))
    :effect (and (at end (step_done step77)) (at end (finished77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step78)) (at start (finished68)))
    :effect (and (at end (step_done step78)) (at end (finished78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 180)
    :condition (at start (step_pending step79))
    :effect (and (at end (step_done step79)) (at end (finished79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step80)) (at start (finished13)) (at start (finished49)) (at start (finished70)) (at start (finished79)) (at start (finished42)))
    :effect (and (at end (step_done step80)) (at end (finished80)))
  )
)
