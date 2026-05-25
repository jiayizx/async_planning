(define (domain cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (pending ?s - step) (done ?s - step))
  (:constants step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 step61 step62 step63 step64 step65 step66 step67 step68 step69 step70 step71 step72 step73 step74 step75 step76 step77 step78 step79 step80 - step)

  (:durative-action do_step1
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step1)) (at start (done step24)) (at start (done step38)))
   :effect (and (at start (not (pending step1))) (at end (done step1)))
  )

  (:durative-action do_step2
   :parameters ()
   :duration (= ?duration 300)
   :condition (and (at start (pending step2)) (at start (done step23)) (at start (done step33)))
   :effect (and (at start (not (pending step2))) (at end (done step2)))
  )

  (:durative-action do_step3
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step3)) (at start (done step61)))
   :effect (and (at start (not (pending step3))) (at end (done step3)))
  )

  (:durative-action do_step4
   :parameters ()
   :duration (= ?duration 120)
   :condition (at start (pending step4))
   :effect (and (at start (not (pending step4))) (at end (done step4)))
  )

  (:durative-action do_step5
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step5)) (at start (done step31)))
   :effect (and (at start (not (pending step5))) (at end (done step5)))
  )

  (:durative-action do_step6
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step6)) (at start (done step4)) (at start (done step34)))
   :effect (and (at start (not (pending step6))) (at end (done step6)))
  )

  (:durative-action do_step7
   :parameters ()
   :duration (= ?duration 180)
   :condition (at start (pending step7))
   :effect (and (at start (not (pending step7))) (at end (done step7)))
  )

  (:durative-action do_step8
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step8)) (at start (done step10)) (at start (done step35)))
   :effect (and (at start (not (pending step8))) (at end (done step8)))
  )

  (:durative-action do_step9
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step9)) (at start (done step15)))
   :effect (and (at start (not (pending step9))) (at end (done step9)))
  )

  (:durative-action do_step10
   :parameters ()
   :duration (= ?duration 240)
   :condition (at start (pending step10))
   :effect (and (at start (not (pending step10))) (at end (done step10)))
  )

  (:durative-action do_step11
   :parameters ()
   :duration (= ?duration 180)
   :condition (and (at start (pending step11)) (at start (done step27)))
   :effect (and (at start (not (pending step11))) (at end (done step11)))
  )

  (:durative-action do_step12
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step12)) (at start (done step23)) (at start (done step51)) (at start (done step61)))
   :effect (and (at start (not (pending step12))) (at end (done step12)))
  )

  (:durative-action do_step13
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step13)) (at start (done step21)))
   :effect (and (at start (not (pending step13))) (at end (done step13)))
  )

  (:durative-action do_step14
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step14)) (at start (done step4)) (at start (done step53)) (at start (done step71)))
   :effect (and (at start (not (pending step14))) (at end (done step14)))
  )

  (:durative-action do_step15
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step15)) (at start (done step11)))
   :effect (and (at start (not (pending step15))) (at end (done step15)))
  )

  (:durative-action do_step16
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step16)) (at start (done step5)) (at start (done step13)) (at start (done step15)) (at start (done step35)) (at start (done step38)))
   :effect (and (at start (not (pending step16))) (at end (done step16)))
  )

  (:durative-action do_step17
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step17)) (at start (done step10)) (at start (done step46)) (at start (done step64)))
   :effect (and (at start (not (pending step17))) (at end (done step17)))
  )

  (:durative-action do_step18
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step18))
   :effect (and (at start (not (pending step18))) (at end (done step18)))
  )

  (:durative-action do_step19
   :parameters ()
   :duration (= ?duration 240)
   :condition (and (at start (pending step19)) (at start (done step10)) (at start (done step28)) (at start (done step43)) (at start (done step66)))
   :effect (and (at start (not (pending step19))) (at end (done step19)))
  )

  (:durative-action do_step20
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step20)) (at start (done step25)) (at start (done step37)) (at start (done step61)))
   :effect (and (at start (not (pending step20))) (at end (done step20)))
  )

  (:durative-action do_step21
   :parameters ()
   :duration (= ?duration 60)
   :condition (at start (pending step21))
   :effect (and (at start (not (pending step21))) (at end (done step21)))
  )

  (:durative-action do_step22
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step22)) (at start (done step10)) (at start (done step35)) (at start (done step37)) (at start (done step56)) (at start (done step64)) (at start (done step67)))
   :effect (and (at start (not (pending step22))) (at end (done step22)))
  )

  (:durative-action do_step23
   :parameters ()
   :duration (= ?duration 45)
   :condition (at start (pending step23))
   :effect (and (at start (not (pending step23))) (at end (done step23)))
  )

  (:durative-action do_step24
   :parameters ()
   :duration (= ?duration 5)
   :condition (and (at start (pending step24)) (at start (done step21)) (at start (done step32)) (at start (done step35)) (at start (done step43)))
   :effect (and (at start (not (pending step24))) (at end (done step24)))
  )

  (:durative-action do_step25
   :parameters ()
   :duration (= ?duration 20)
   :condition (and (at start (pending step25)) (at start (done step23)) (at start (done step47)) (at start (done step67)))
   :effect (and (at start (not (pending step25))) (at end (done step25)))
  )

  (:durative-action do_step26
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step26)) (at start (done step8)) (at start (done step38)) (at start (done step43)) (at start (done step59)) (at start (done step65)))
   :effect (and (at start (not (pending step26))) (at end (done step26)))
  )

  (:durative-action do_step27
   :parameters ()
   :duration (= ?duration 300)
   :condition (and (at start (pending step27)) (at start (done step36)))
   :effect (and (at start (not (pending step27))) (at end (done step27)))
  )

  (:durative-action do_step28
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step28)) (at start (done step11)) (at start (done step34)) (at start (done step73)))
   :effect (and (at start (not (pending step28))) (at end (done step28)))
  )

  (:durative-action do_step29
   :parameters ()
   :duration (= ?duration 300)
   :condition (and (at start (pending step29)) (at start (done step20)) (at start (done step26)) (at start (done step28)) (at start (done step45)) (at start (done step48)) (at start (done step51)) (at start (done step61)) (at start (done step63)))
   :effect (and (at start (not (pending step29))) (at end (done step29)))
  )

  (:durative-action do_step30
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step30)) (at start (done step11)) (at start (done step67)))
   :effect (and (at start (not (pending step30))) (at end (done step30)))
  )

  (:durative-action do_step31
   :parameters ()
   :duration (= ?duration 60)
   :condition (at start (pending step31))
   :effect (and (at start (not (pending step31))) (at end (done step31)))
  )

  (:durative-action do_step32
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step32)) (at start (done step63)))
   :effect (and (at start (not (pending step32))) (at end (done step32)))
  )

  (:durative-action do_step33
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step33)) (at start (done step7)) (at start (done step64)))
   :effect (and (at start (not (pending step33))) (at end (done step33)))
  )

  (:durative-action do_step34
   :parameters ()
   :duration (= ?duration 60)
   :condition (at start (pending step34))
   :effect (and (at start (not (pending step34))) (at end (done step34)))
  )

  (:durative-action do_step35
   :parameters ()
   :duration (= ?duration 600)
   :condition (at start (pending step35))
   :effect (and (at start (not (pending step35))) (at end (done step35)))
  )

  (:durative-action do_step36
   :parameters ()
   :duration (= ?duration 300)
   :condition (at start (pending step36))
   :effect (and (at start (not (pending step36))) (at end (done step36)))
  )

  (:durative-action do_step37
   :parameters ()
   :duration (= ?duration 240)
   :condition (and (at start (pending step37)) (at start (done step11)) (at start (done step43)))
   :effect (and (at start (not (pending step37))) (at end (done step37)))
  )

  (:durative-action do_step38
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step38)) (at start (done step7)))
   :effect (and (at start (not (pending step38))) (at end (done step38)))
  )

  (:durative-action do_step39
   :parameters ()
   :duration (= ?duration 180)
   :condition (and (at start (pending step39)) (at start (done step10)) (at start (done step18)) (at start (done step59)))
   :effect (and (at start (not (pending step39))) (at end (done step39)))
  )

  (:durative-action do_step40
   :parameters ()
   :duration (= ?duration 180)
   :condition (and (at start (pending step40)) (at start (done step18)) (at start (done step35)))
   :effect (and (at start (not (pending step40))) (at end (done step40)))
  )

  (:durative-action do_step41
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step41)) (at start (done step76)))
   :effect (and (at start (not (pending step41))) (at end (done step41)))
  )

  (:durative-action do_step42
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step42)) (at start (done step71)))
   :effect (and (at start (not (pending step42))) (at end (done step42)))
  )

  (:durative-action do_step43
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step43)) (at start (done step18)) (at start (done step21)))
   :effect (and (at start (not (pending step43))) (at end (done step43)))
  )

  (:durative-action do_step44
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step44)) (at start (done step30)) (at start (done step41)))
   :effect (and (at start (not (pending step44))) (at end (done step44)))
  )

  (:durative-action do_step45
   :parameters ()
   :duration (= ?duration 60)
   :condition (at start (pending step45))
   :effect (and (at start (not (pending step45))) (at end (done step45)))
  )

  (:durative-action do_step46
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step46)) (at start (done step39)) (at start (done step45)) (at start (done step65)))
   :effect (and (at start (not (pending step46))) (at end (done step46)))
  )

  (:durative-action do_step47
   :parameters ()
   :duration (= ?duration 5)
   :condition (and (at start (pending step47)) (at start (done step4)) (at start (done step63)))
   :effect (and (at start (not (pending step47))) (at end (done step47)))
  )

  (:durative-action do_step48
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step48)) (at start (done step41)))
   :effect (and (at start (not (pending step48))) (at end (done step48)))
  )

  (:durative-action do_step49
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step49)) (at start (done step8)) (at start (done step34)) (at start (done step45)) (at start (done step70)))
   :effect (and (at start (not (pending step49))) (at end (done step49)))
  )

  (:durative-action do_step50
   :parameters ()
   :duration (= ?duration 300)
   :condition (and (at start (pending step50)) (at start (done step17)) (at start (done step47)))
   :effect (and (at start (not (pending step50))) (at end (done step50)))
  )

  (:durative-action do_step51
   :parameters ()
   :duration (= ?duration 15)
   :condition (and (at start (pending step51)) (at start (done step1)) (at start (done step13)) (at start (done step63)))
   :effect (and (at start (not (pending step51))) (at end (done step51)))
  )

  (:durative-action do_step52
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step52))
   :effect (and (at start (not (pending step52))) (at end (done step52)))
  )

  (:durative-action do_step53
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step53)) (at start (done step7)) (at start (done step10)) (at start (done step11)) (at start (done step67)))
   :effect (and (at start (not (pending step53))) (at end (done step53)))
  )

  (:durative-action do_step54
   :parameters ()
   :duration (= ?duration 20)
   :condition (and (at start (pending step54)) (at start (done step51)) (at start (done step64)) (at start (done step66)) (at start (done step68)))
   :effect (and (at start (not (pending step54))) (at end (done step54)))
  )

  (:durative-action do_step55
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step55)) (at start (done step12)) (at start (done step28)) (at start (done step43)) (at start (done step67)) (at start (done step70)) (at start (done step71)) (at start (done step79)))
   :effect (and (at start (not (pending step55))) (at end (done step55)))
  )

  (:durative-action do_step56
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step56)) (at start (done step24)))
   :effect (and (at start (not (pending step56))) (at end (done step56)))
  )

  (:durative-action do_step57
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step57)) (at start (done step3)) (at start (done step7)) (at start (done step44)) (at start (done step56)) (at start (done step66)))
   :effect (and (at start (not (pending step57))) (at end (done step57)))
  )

  (:durative-action do_step58
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step58)) (at start (done step11)) (at start (done step26)) (at start (done step31)) (at start (done step32)) (at start (done step43)) (at start (done step47)) (at start (done step52)) (at start (done step59)) (at start (done step72)))
   :effect (and (at start (not (pending step58))) (at end (done step58)))
  )

  (:durative-action do_step59
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step59))
   :effect (and (at start (not (pending step59))) (at end (done step59)))
  )

  (:durative-action do_step60
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step60)) (at start (done step21)) (at start (done step25)) (at start (done step45)) (at start (done step52)))
   :effect (and (at start (not (pending step60))) (at end (done step60)))
  )

  (:durative-action do_step61
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step61)) (at start (done step43)))
   :effect (and (at start (not (pending step61))) (at end (done step61)))
  )

  (:durative-action do_step62
   :parameters ()
   :duration (= ?duration 15)
   :condition (and (at start (pending step62)) (at start (done step1)) (at start (done step28)) (at start (done step42)) (at start (done step55)))
   :effect (and (at start (not (pending step62))) (at end (done step62)))
  )

  (:durative-action do_step63
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step63)) (at start (done step15)))
   :effect (and (at start (not (pending step63))) (at end (done step63)))
  )

  (:durative-action do_step64
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step64)) (at start (done step27)))
   :effect (and (at start (not (pending step64))) (at end (done step64)))
  )

  (:durative-action do_step65
   :parameters ()
   :duration (= ?duration 120)
   :condition (at start (pending step65))
   :effect (and (at start (not (pending step65))) (at end (done step65)))
  )

  (:durative-action do_step66
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step66))
   :effect (and (at start (not (pending step66))) (at end (done step66)))
  )

  (:durative-action do_step67
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step67)) (at start (done step13)) (at start (done step61)))
   :effect (and (at start (not (pending step67))) (at end (done step67)))
  )

  (:durative-action do_step68
   :parameters ()
   :duration (= ?duration 60)
   :condition (at start (pending step68))
   :effect (and (at start (not (pending step68))) (at end (done step68)))
  )

  (:durative-action do_step69
   :parameters ()
   :duration (= ?duration 180)
   :condition (and (at start (pending step69)) (at start (done step73)) (at start (done step80)))
   :effect (and (at start (not (pending step69))) (at end (done step69)))
  )

  (:durative-action do_step70
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step70))
   :effect (and (at start (not (pending step70))) (at end (done step70)))
  )

  (:durative-action do_step71
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step71)) (at start (done step7)) (at start (done step18)) (at start (done step30)) (at start (done step31)) (at start (done step49)))
   :effect (and (at start (not (pending step71))) (at end (done step71)))
  )

  (:durative-action do_step72
   :parameters ()
   :duration (= ?duration 30)
   :condition (at start (pending step72))
   :effect (and (at start (not (pending step72))) (at end (done step72)))
  )

  (:durative-action do_step73
   :parameters ()
   :duration (= ?duration 10)
   :condition (and (at start (pending step73)) (at start (done step18)) (at start (done step41)))
   :effect (and (at start (not (pending step73))) (at end (done step73)))
  )

  (:durative-action do_step74
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step74)) (at start (done step11)) (at start (done step12)) (at start (done step15)) (at start (done step19)) (at start (done step30)) (at start (done step32)) (at start (done step41)) (at start (done step50)) (at start (done step60)))
   :effect (and (at start (not (pending step74))) (at end (done step74)))
  )

  (:durative-action do_step75
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step75)) (at start (done step6)) (at start (done step31)) (at start (done step37)) (at start (done step46)) (at start (done step59)) (at start (done step64)))
   :effect (and (at start (not (pending step75))) (at end (done step75)))
  )

  (:durative-action do_step76
   :parameters ()
   :duration (= ?duration 30)
   :condition (and (at start (pending step76)) (at start (done step27)))
   :effect (and (at start (not (pending step76))) (at end (done step76)))
  )

  (:durative-action do_step77
   :parameters ()
   :duration (= ?duration 5)
   :condition (and (at start (pending step77)) (at start (done step26)) (at start (done step42)) (at start (done step65)))
   :effect (and (at start (not (pending step77))) (at end (done step77)))
  )

  (:durative-action do_step78
   :parameters ()
   :duration (= ?duration 60)
   :condition (and (at start (pending step78)) (at start (done step15)) (at start (done step32)) (at start (done step35)) (at start (done step41)) (at start (done step58)) (at start (done step70)))
   :effect (and (at start (not (pending step78))) (at end (done step78)))
  )

  (:durative-action do_step79
   :parameters ()
   :duration (= ?duration 120)
   :condition (and (at start (pending step79)) (at start (done step10)) (at start (done step47)) (at start (done step71)))
   :effect (and (at start (not (pending step79))) (at end (done step79)))
  )

  (:durative-action do_step80
   :parameters ()
   :duration (= ?duration 20)
   :condition (and (at start (pending step80)) (at start (done step6)) (at start (done step15)) (at start (done step68)))
   :effect (and (at start (not (pending step80))) (at end (done step80)))
  )
)