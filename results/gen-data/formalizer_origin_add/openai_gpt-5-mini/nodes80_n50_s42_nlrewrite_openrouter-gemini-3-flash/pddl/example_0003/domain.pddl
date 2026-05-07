(define (domain beef-tongue-cook)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed1)
    (completed2)
    (completed3)
    (completed4)
    (completed5)
    (completed6)
    (completed7)
    (completed8)
    (completed9)
    (completed10)
    (completed11)
    (completed12)
    (completed13)
    (completed14)
    (completed15)
    (completed16)
    (completed17)
    (completed18)
    (completed19)
    (completed20)
    (completed21)
    (completed22)
    (completed23)
    (completed24)
    (completed25)
    (completed26)
    (completed27)
    (completed28)
    (completed29)
    (completed30)
    (completed31)
    (completed32)
    (completed33)
    (completed34)
    (completed35)
    (completed36)
    (completed37)
    (completed38)
    (completed39)
    (completed40)
    (completed41)
    (completed42)
    (completed43)
    (completed44)
    (completed45)
    (completed46)
    (completed47)
    (completed48)
    (completed49)
    (completed50)
    (completed51)
    (completed52)
    (completed53)
    (completed54)
    (completed55)
    (completed56)
    (completed57)
    (completed58)
    (completed59)
    (completed60)
    (completed61)
    (completed62)
    (completed63)
    (completed64)
    (completed65)
    (completed66)
    (completed67)
    (completed68)
    (completed69)
    (completed70)
    (completed71)
    (completed72)
    (completed73)
    (completed74)
    (completed75)
    (completed76)
    (completed77)
    (completed78)
    (completed79)
    (completed80)
  )

  (:durative-action do-step1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (completed78)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (completed11)) (at start (completed41)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (completed7)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (completed11)) (at start (completed21)) (at start (completed37)) (at start (completed40)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (completed25)) (at start (completed41)) (at start (completed61)) (at start (completed63)) (at start (completed72)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (completed17)) (at start (completed19)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (completed25)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (completed40)) (at start (completed56)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step10)) (at start (completed16)) (at start (completed19)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step11)) (at start (completed40)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (completed16)) (at start (completed30)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (completed7)) (at start (completed16)) (at start (completed46)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step14)) (at start (completed5)) (at start (completed77)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step15)) (at start (completed12)) (at start (completed51)) (at start (completed69)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (completed12)) (at start (completed13)) (at start (completed37)) (at start (completed48)) (at start (completed72)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (completed11)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step19)) (at start (completed13)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (completed12)) (at start (completed33)) (at start (completed57)) (at start (completed67)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step21)) (at start (completed11)) (at start (completed19)) (at start (completed24)) (at start (completed33)) (at start (completed47)) (at start (completed63)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (completed8)) (at start (completed31)) (at start (completed32)) (at start (completed44)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step23)) (at start (completed1)) (at start (completed13)) (at start (completed26)) (at start (completed76)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step25)) (at start (completed46)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step26)) (at start (completed36)) (at start (completed40)) (at start (completed58)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (completed54)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step28)) (at start (completed10)) (at start (completed63)) (at start (completed74)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step29)) (at start (completed20)) (at start (completed31)) (at start (completed63)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step31)) (at start (completed35)) (at start (completed52)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (completed55)) (at start (completed57)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (completed12)) (at start (completed16)) (at start (completed31)) (at start (completed77)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step36)) (at start (completed7)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step37)) (at start (completed32)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (completed5)) (at start (completed26)) (at start (completed42)) (at start (completed72)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)) (at start (completed2)) (at start (completed11)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step40)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step41)) (at start (completed42)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step42)) (at start (completed11)) (at start (completed37)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step43)) (at start (completed28)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step44)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)) (at start (completed26)) (at start (completed52)) (at start (completed78)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step46)) (at start (completed40)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step47)) (at start (completed40)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step48)) (at start (completed28)) (at start (completed40)) (at start (completed58)) (at start (completed61)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)) (at start (completed17)) (at start (completed48)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step50)) (at start (completed12)) (at start (completed41)) (at start (completed63)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step51)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (completed11)) (at start (completed32)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step53)) (at start (completed29)) (at start (completed37)) (at start (completed41)) (at start (completed42)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step54)) (at start (completed51)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step55)) (at start (completed19)) (at start (completed69)) (at start (completed40)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step56)) (at start (completed58)) (at start (completed66)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step57)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step58)) (at start (completed28)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step59)) (at start (completed11)) (at start (completed44)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step60)) (at start (completed28)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step61)) (at start (completed10)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (completed61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step62)) (at start (completed5)) (at start (completed51)) (at start (completed74)) (at start (completed52)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (completed62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step63)) (at start (completed8)) (at start (completed10)) (at start (completed57)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (completed63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step64)) (at start (completed7)) (at start (completed78)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (completed64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step65)) (at start (completed24)) (at start (completed37)) (at start (completed54)) (at start (completed69)) (at start (completed79)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (completed65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step66)) (at start (completed11)) (at start (completed29)) (at start (completed31)) (at start (completed41)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (completed66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step67)) (at start (completed13)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (completed67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step68)) (at start (completed15)) (at start (completed61)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (completed68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step69)) (at start (completed41)) (at start (completed46)) (at start (completed57)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (completed69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step70)) (at start (completed33)) (at start (completed56)) (at start (completed63)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (completed70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step71)) (at start (completed2)) (at start (completed27)) (at start (completed35)) (at start (completed47)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (completed71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step72)) (at start (completed63)) (at start (completed73)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (completed72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step73)) (at start (completed24)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (completed73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step74)) (at start (completed7)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (completed74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step75)) (at start (completed2)) (at start (completed38)) (at start (completed44)) (at start (completed64)) (at start (completed76)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (completed75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step76)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (completed76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (completed46)) (at start (completed74)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (completed77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step78)) (at start (completed40)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (completed78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step79)) (at start (completed19)) (at start (completed29)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (completed79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step80)) (at start (completed38)) (at start (completed41)) (at start (completed67)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (completed80)))
  )
)
