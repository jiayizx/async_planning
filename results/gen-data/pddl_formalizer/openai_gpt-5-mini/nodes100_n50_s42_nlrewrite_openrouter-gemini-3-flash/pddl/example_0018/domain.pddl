(define (domain spaghetti)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished1)
    (finished2)
    (finished3)
    (finished4)
    (finished5)
    (finished6)
    (finished7)
    (finished8)
    (finished9)
    (finished10)
    (finished11)
    (finished12)
    (finished13)
    (finished14)
    (finished15)
    (finished16)
    (finished17)
    (finished18)
    (finished19)
    (finished20)
    (finished21)
    (finished22)
    (finished23)
    (finished24)
    (finished25)
    (finished26)
    (finished27)
    (finished28)
    (finished29)
    (finished30)
    (finished31)
    (finished32)
    (finished33)
    (finished34)
    (finished35)
    (finished36)
    (finished37)
    (finished38)
    (finished39)
    (finished40)
    (finished41)
    (finished42)
    (finished43)
    (finished44)
    (finished45)
    (finished46)
    (finished47)
    (finished48)
    (finished49)
    (finished50)
    (finished51)
    (finished52)
    (finished53)
    (finished54)
    (finished55)
    (finished56)
    (finished57)
    (finished58)
    (finished59)
    (finished60)
    (finished61)
    (finished62)
    (finished63)
    (finished64)
    (finished65)
    (finished66)
    (finished67)
    (finished68)
    (finished69)
    (finished70)
    (finished71)
    (finished72)
    (finished73)
    (finished74)
    (finished75)
    (finished76)
    (finished77)
    (finished78)
    (finished79)
    (finished80)
    (finished81)
    (finished82)
    (finished83)
    (finished84)
    (finished85)
    (finished86)
    (finished87)
    (finished88)
    (finished89)
    (finished90)
    (finished91)
    (finished92)
    (finished93)
    (finished94)
    (finished95)
    (finished96)
    (finished97)
    (finished98)
    (finished99)
    (finished100)
  )

  (:durative-action do-step1
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step1)) (at start (finished2)) (at start (finished36)) (at start (finished99)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (finished1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (finished43)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finished2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (finished3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (finished67)) (at start (finished79)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (finished4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (finished11)) (at start (finished39)) (at start (finished54)) (at start (finished58)) (at start (finished65)) (at start (finished100)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (finished5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step6)) (at start (finished54)) (at start (finished73)) (at start (finished97)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (finished6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (finished11)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (finished7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (finished20)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (finished8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step9)) (at start (finished47)) (at start (finished60)) (at start (finished74)) (at start (finished83)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (finished9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step10)) (at start (finished13)) (at start (finished53)) (at start (finished80)) (at start (finished89)) (at start (finished7)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (finished10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 300)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (finished11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (finished34)) (at start (finished49)) (at start (finished67)) (at start (finished79)) (at start (finished83)) (at start (finished98)) (at start (finished40)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (finished12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (finished43)) (at start (finished45)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (finished13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (finished13)) (at start (finished23)) (at start (finished40)) (at start (finished75)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (finished14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (finished59)) (at start (finished54)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (finished15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step16)) (at start (finished3)) (at start (finished37)) (at start (finished91)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (finished16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (finished65)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (finished17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (finished89)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (finished18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step19)) (at start (finished31)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (finished19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 120)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (finished20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step21)) (at start (finished17)) (at start (finished36)) (at start (finished39)) (at start (finished43)) (at start (finished72)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (finished21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (finished8)) (at start (finished16)) (at start (finished20)) (at start (finished50)) (at start (finished87)) (at start (finished99)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (finished22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (finished6)) (at start (finished40)) (at start (finished47)) (at start (finished53)) (at start (finished74)) (at start (finished81)) (at start (finished93)) (at start (finished97)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (finished23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (finished25)) (at start (finished57)) (at start (finished68)) (at start (finished75)) (at start (finished79)) (at start (finished52)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (finished24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (finished28)) (at start (finished40)) (at start (finished57)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (finished25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (finished70)) (at start (finished43)) (at start (finished93)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (finished26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step27)) (at start (finished50)) (at start (finished60)) (at start (finished67)) (at start (finished69)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (finished27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 900)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (finished28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (finished61)) (at start (finished83)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (finished29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step30)) (at start (finished10)) (at start (finished39)) (at start (finished91)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (finished30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step31)) (at start (finished3)) (at start (finished37)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (finished31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step32)) (at start (finished91)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (finished32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step33)) (at start (finished13)) (at start (finished20)) (at start (finished66)) (at start (finished72)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (finished33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step34)) (at start (finished69)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (finished34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step35)) (at start (finished61)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (finished35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step36)) (at start (finished7)) (at start (finished61)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (finished36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step37)) (at start (finished8)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (finished37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step38)) (at start (finished1)) (at start (finished17)) (at start (finished43)) (at start (finished45)) (at start (finished76)) (at start (finished81)) (at start (finished96)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (finished38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 300)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (finished39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (finished55)) (at start (finished63)) (at start (finished77)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (finished40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step41)) (at start (finished50)) (at start (finished69)) (at start (finished81)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (finished41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (finished32)) (at start (finished43)) (at start (finished67)) (at start (finished96)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (finished42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 3600)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (finished43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (finished8)) (at start (finished87)) (at start (finished91)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (finished44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (finished20)) (at start (finished55)) (at start (finished58)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (finished45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step46)) (at start (finished22)) (at start (finished34)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (finished46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step47)) (at start (finished2)) (at start (finished44)) (at start (finished64)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (finished47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (finished43)) (at start (finished70)) (at start (finished80)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (finished48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step49)) (at start (finished17)) (at start (finished30)) (at start (finished52)) (at start (finished64)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (finished49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step50)) (at start (finished63)) (at start (finished65)) (at start (finished69)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (finished50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (finished3)) (at start (finished29)) (at start (finished42)) (at start (finished71)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (finished51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step52)) (at start (finished30)) (at start (finished32)) (at start (finished98)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (finished52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step53)) (at start (finished7)) (at start (finished11)) (at start (finished65)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (finished53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step54)) (at start (finished63)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (finished54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step55)) (at start (finished11)) (at start (finished60)) (at start (finished43)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (finished55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step56)) (at start (finished30)) (at start (finished52)) (at start (finished64)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (finished56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 1200)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (finished57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 60)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (finished58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step59)) (at start (finished65)) (at start (finished69)) (at start (finished70)) (at start (finished80)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (finished59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step60)) (at start (finished91)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (finished60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step61)) (at start (finished2)) (at start (finished20)) (at start (finished39)) (at start (finished53)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (finished61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 172800)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (finished62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step63)) (at start (finished58)) (at start (finished69)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (finished63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 60)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (finished64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 900)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (finished65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step66)) (at start (finished19)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (finished66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (finished31)) (at start (finished53)) (at start (finished55)) (at start (finished60)) (at start (finished64)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (finished67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step68)) (at start (finished28)) (at start (finished44)) (at start (finished47)) (at start (finished60)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (finished68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step69)) (at start (finished62)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (finished69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 600)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (finished70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 600)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (finished71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 60)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (finished72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step73)) (at start (finished48)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (finished73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step74)) (at start (finished17)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (finished74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step75)) (at start (finished44)) (at start (finished54)) (at start (finished87)) (at start (finished88)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (finished75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step76)) (at start (finished25)) (at start (finished67)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (finished76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 120)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (finished77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step78)) (at start (finished5)) (at start (finished15)) (at start (finished48)) (at start (finished60)) (at start (finished65)) (at start (finished70)) (at start (finished88)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (finished78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step79)) (at start (finished3)) (at start (finished80)) (at start (finished91)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (finished79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step80)) (at start (finished93)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (finished80)))
  )

  (:durative-action do-step81
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step81)) (at start (finished16)) (at start (finished80)) (at start (finished87)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (finished81)))
  )

  (:durative-action do-step82
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step82)) (at start (finished54)) (at start (finished65)) (at start (finished93)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (finished82)))
  )

  (:durative-action do-step83
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step83)) (at start (finished54)) (at start (finished70)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (finished83)))
  )

  (:durative-action do-step84
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step84)) (at start (finished20)) (at start (finished44)) (at start (finished61)) (at start (finished79)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (finished84)))
  )

  (:durative-action do-step85
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step85)) (at start (finished13)) (at start (finished16)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (finished85)))
  )

  (:durative-action do-step86
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step86)) (at start (finished5)) (at start (finished58)) (at start (finished65)) (at start (finished81)) (at start (finished91)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (finished86)))
  )

  (:durative-action do-step87
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step87)) (at start (finished70)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (finished87)))
  )

  (:durative-action do-step88
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step88)) (at start (finished80)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (finished88)))
  )

  (:durative-action do-step89
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step89)) (at start (finished43)) (at start (finished62)) (at start (finished65)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (finished89)))
  )

  (:durative-action do-step90
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step90)) (at start (finished7)) (at start (finished19)) (at start (finished38)) (at start (finished88)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (finished90)))
  )

  (:durative-action do-step91
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step91)) (at start (finished39)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (finished91)))
  )

  (:durative-action do-step92
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step92)) (at start (finished34)) (at start (finished67)) (at start (finished70)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (finished92)))
  )

  (:durative-action do-step93
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step93)) (at start (finished62)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (finished93)))
  )

  (:durative-action do-step94
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step94)) (at start (finished3)) (at start (finished4)) (at start (finished64)) (at start (finished67)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (finished94)))
  )

  (:durative-action do-step95
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step95)) (at start (finished17)) (at start (finished53)) (at start (finished56)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (finished95)))
  )

  (:durative-action do-step96
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step96)) (at start (finished28)) (at start (finished57)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (finished96)))
  )

  (:durative-action do-step97
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step97)) (at start (finished76)) (at start (finished87)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (finished97)))
  )

  (:durative-action do-step98
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step98)) (at start (finished2)) (at start (finished22)) (at start (finished30)) (at start (finished96)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (finished98)))
  )

  (:durative-action do-step99
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step99)) (at start (finished58)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (finished99)))
  )

  (:durative-action do-step100
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step100)) (at start (finished69)) (at start (finished80)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (finished100)))
  )
)
