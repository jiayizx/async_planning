(define (domain chipotle_sauce)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pred1) (pred2) (pred3) (pred4) (pred5) (pred6) (pred7) (pred8) (pred9) (pred10)
    (pred11) (pred12) (pred13) (pred14) (pred15) (pred16) (pred17) (pred18) (pred19) (pred20)
    (pred21) (pred22) (pred23) (pred24) (pred25) (pred26) (pred27) (pred28) (pred29) (pred30)
    (pred31) (pred32) (pred33) (pred34) (pred35) (pred36) (pred37) (pred38) (pred39) (pred40)
    (pred41) (pred42) (pred43) (pred44) (pred45) (pred46) (pred47) (pred48) (pred49) (pred50)
    (pred51) (pred52) (pred53) (pred54) (pred55) (pred56) (pred57) (pred58) (pred59) (pred60)
    (pred61) (pred62) (pred63) (pred64) (pred65) (pred66) (pred67) (pred68) (pred69) (pred70)
    (pred71) (pred72) (pred73) (pred74) (pred75) (pred76) (pred77) (pred78) (pred79) (pred80)
  )
  (:durative-action do_step1 :parameters () :duration 2700
    :condition (and (at start (step_pending step1)) (at start (pred40)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (pred1))))
  (:durative-action do_step2 :parameters () :duration 1800
    :condition (and (at start (step_pending step2)) (at start (pred76)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (pred2))))
  (:durative-action do_step3 :parameters () :duration 300
    :condition (and (at start (step_pending step3)) (at start (pred7)) (at start (pred54)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (pred3))))
  (:durative-action do_step4 :parameters () :duration 60
    :condition (and (at start (step_pending step4)) (at start (pred44)) (at start (pred69)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (pred4))))
  (:durative-action do_step5 :parameters () :duration 600
    :condition (and (at start (step_pending step5)) (at start (pred41)) (at start (pred64)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (pred5))))
  (:durative-action do_step6 :parameters () :duration 300
    :condition (and (at start (step_pending step6)) (at start (pred35)) (at start (pred39)) (at start (pred53)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (pred6))))
  (:durative-action do_step7 :parameters () :duration 900
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (pred7))))
  (:durative-action do_step8 :parameters () :duration 600
    :condition (and (at start (step_pending step8)) (at start (pred25)) (at start (pred35)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (pred8))))
  (:durative-action do_step9 :parameters () :duration 1200
    :condition (and (at start (step_pending step9)) (at start (pred2)) (at start (pred3)) (at start (pred66)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (pred9))))
  (:durative-action do_step10 :parameters () :duration 180
    :condition (and (at start (step_pending step10)) (at start (pred8)) (at start (pred11)) (at start (pred12)) (at start (pred29)) (at start (pred78)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (pred10))))
  (:durative-action do_step11 :parameters () :duration 60
    :condition (and (at start (step_pending step11)) (at start (pred19)) (at start (pred55)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (pred11))))
  (:durative-action do_step12 :parameters () :duration 300
    :condition (and (at start (step_pending step12)) (at start (pred17)) (at start (pred53)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (pred12))))
  (:durative-action do_step13 :parameters () :duration 1500
    :condition (and (at start (step_pending step13)) (at start (pred28)) (at start (pred34)) (at start (pred41)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (pred13))))
  (:durative-action do_step14 :parameters () :duration 60
    :condition (and (at start (step_pending step14)) (at start (pred22)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (pred14))))
  (:durative-action do_step15 :parameters () :duration 120
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (pred15))))
  (:durative-action do_step16 :parameters () :duration 60
    :condition (and (at start (step_pending step16)) (at start (pred15)) (at start (pred58)) (at start (pred63)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (pred16))))
  (:durative-action do_step17 :parameters () :duration 1200
    :condition (and (at start (step_pending step17)) (at start (pred25)) (at start (pred47)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (pred17))))
  (:durative-action do_step18 :parameters () :duration 600
    :condition (and (at start (step_pending step18)) (at start (pred25)) (at start (pred38)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (pred18))))
  (:durative-action do_step19 :parameters () :duration 300
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (pred19))))
  (:durative-action do_step20 :parameters () :duration 120
    :condition (and (at start (step_pending step20)) (at start (pred4)) (at start (pred9)) (at start (pred14)) (at start (pred40)) (at start (pred50)) (at start (pred69)) (at start (pred74)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (pred20))))
  (:durative-action do_step21 :parameters () :duration 240
    :condition (and (at start (step_pending step21)) (at start (pred24)) (at start (pred32)) (at start (pred51)) (at start (pred71)) (at start (pred75)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (pred21))))
  (:durative-action do_step22 :parameters () :duration 120
    :condition (and (at start (step_pending step22)) (at start (pred53)) (at start (pred56)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (pred22))))
  (:durative-action do_step23 :parameters () :duration 300
    :condition (and (at start (step_pending step23)) (at start (pred32)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (pred23))))
  (:durative-action do_step24 :parameters () :duration 900
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (pred24))))
  (:durative-action do_step25 :parameters () :duration 900
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (pred25))))
  (:durative-action do_step26 :parameters () :duration 240
    :condition (and (at start (step_pending step26)) (at start (pred39)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (pred26))))
  (:durative-action do_step27 :parameters () :duration 60
    :condition (and (at start (step_pending step27)) (at start (pred4)) (at start (pred16)) (at start (pred19)) (at start (pred48)) (at start (pred56)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (pred27))))
  (:durative-action do_step28 :parameters () :duration 600
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (pred28))))
  (:durative-action do_step29 :parameters () :duration 120
    :condition (and (at start (step_pending step29)) (at start (pred24)) (at start (pred28)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (pred29))))
  (:durative-action do_step30 :parameters () :duration 480
    :condition (and (at start (step_pending step30)) (at start (pred48)) (at start (pred62)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (pred30))))
  (:durative-action do_step31 :parameters () :duration 120
    :condition (and (at start (step_pending step31)) (at start (pred8)) (at start (pred63)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (pred31))))
  (:durative-action do_step32 :parameters () :duration 120
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (pred32))))
  (:durative-action do_step33 :parameters () :duration 60
    :condition (and (at start (step_pending step33)) (at start (pred48)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (pred33))))
  (:durative-action do_step34 :parameters () :duration 120
    :condition (and (at start (step_pending step34)) (at start (pred1)) (at start (pred7)) (at start (pred35)) (at start (pred61)) (at start (pred79)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (pred34))))
  (:durative-action do_step35 :parameters () :duration 720
    :condition (and (at start (step_pending step35)) (at start (pred40)) (at start (pred48)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (pred35))))
  (:durative-action do_step36 :parameters () :duration 30
    :condition (and (at start (step_pending step36)) (at start (pred43)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (pred36))))
  (:durative-action do_step37 :parameters () :duration 120
    :condition (and (at start (step_pending step37)) (at start (pred14)) (at start (pred18)) (at start (pred65)) (at start (pred66)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (pred37))))
  (:durative-action do_step38 :parameters () :duration 900
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (pred38))))
  (:durative-action do_step39 :parameters () :duration 60
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (pred39))))
  (:durative-action do_step40 :parameters () :duration 600
    :condition (and (at start (step_pending step40)) (at start (pred47)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (pred40))))
  (:durative-action do_step41 :parameters () :duration 60
    :condition (and (at start (step_pending step41)) (at start (pred44)) (at start (pred71)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (pred41))))
  (:durative-action do_step42 :parameters () :duration 900
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (pred42))))
  (:durative-action do_step43 :parameters () :duration 180
    :condition (and (at start (step_pending step43)) (at start (pred18)) (at start (pred21)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (pred43))))
  (:durative-action do_step44 :parameters () :duration 600
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (pred44))))
  (:durative-action do_step45 :parameters () :duration 60
    :condition (and (at start (step_pending step45)) (at start (pred25)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (pred45))))
  (:durative-action do_step46 :parameters () :duration 1200
    :condition (and (at start (step_pending step46)) (at start (pred35)) (at start (pred47)) (at start (pred53)) (at start (pred80)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (pred46))))
  (:durative-action do_step47 :parameters () :duration 60
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (pred47))))
  (:durative-action do_step48 :parameters () :duration 300
    :condition (and (at start (step_pending step48)) (at start (pred42)) (at start (pred65)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (pred48))))
  (:durative-action do_step49 :parameters () :duration 300
    :condition (and (at start (step_pending step49)) (at start (pred12)) (at start (pred40)) (at start (pred65)) (at start (pred69)) (at start (pred79)) (at start (pred80)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (pred49))))
  (:durative-action do_step50 :parameters () :duration 60
    :condition (and (at start (step_pending step50)) (at start (pred3)) (at start (pred43)) (at start (pred52)) (at start (pred56)) (at start (pred79)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (pred50))))
  (:durative-action do_step51 :parameters () :duration 120
    :condition (and (at start (step_pending step51)) (at start (pred56)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (pred51))))
  (:durative-action do_step52 :parameters () :duration 300
    :condition (and (at start (step_pending step52)) (at start (pred34)) (at start (pred67)) (at start (pred80)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (pred52))))
  (:durative-action do_step53 :parameters () :duration 1800
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (pred53))))
  (:durative-action do_step54 :parameters () :duration 180
    :condition (and (at start (step_pending step54)) (at start (pred38)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (pred54))))
  (:durative-action do_step55 :parameters () :duration 30
    :condition (and (at start (step_pending step55)) (at start (pred48)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (pred55))))
  (:durative-action do_step56 :parameters () :duration 60
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (pred56))))
  (:durative-action do_step57 :parameters () :duration 3600
    :condition (and (at start (step_pending step57)) (at start (pred37)) (at start (pred39)) (at start (pred41)) (at start (pred68)) (at start (pred78)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (pred57))))
  (:durative-action do_step58 :parameters () :duration 600
    :condition (and (at start (step_pending step58)) (at start (pred40)) (at start (pred42)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (pred58))))
  (:durative-action do_step59 :parameters () :duration 900
    :condition (and (at start (step_pending step59)) (at start (pred40)) (at start (pred73)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (pred59))))
  (:durative-action do_step60 :parameters () :duration 120
    :condition (and (at start (step_pending step60)) (at start (pred5)) (at start (pred14)) (at start (pred22)) (at start (pred65)) (at start (pred75)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (pred60))))
  (:durative-action do_step61 :parameters () :duration 60
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (pred61))))
  (:durative-action do_step62 :parameters () :duration 120
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (pred62))))
  (:durative-action do_step63 :parameters () :duration 300
    :condition (and (at start (step_pending step63)) (at start (pred72)) (at start (pred79)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (pred63))))
  (:durative-action do_step64 :parameters () :duration 600
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (pred64))))
  (:durative-action do_step65 :parameters () :duration 120
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (pred65))))
  (:durative-action do_step66 :parameters () :duration 360
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (pred66))))
  (:durative-action do_step67 :parameters () :duration 120
    :condition (and (at start (step_pending step67)) (at start (pred7)) (at start (pred41)) (at start (pred74)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (pred67))))
  (:durative-action do_step68 :parameters () :duration 1800
    :condition (and (at start (step_pending step68)) (at start (pred13)) (at start (pred44)) (at start (pred60)) (at start (pred61)) (at start (pred65)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (pred68))))
  (:durative-action do_step69 :parameters () :duration 60
    :condition (and (at start (step_pending step69)) (at start (pred25)) (at start (pred72)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (pred69))))
  (:durative-action do_step70 :parameters () :duration 120
    :condition (and (at start (step_pending step70)) (at start (pred37)) (at start (pred68)) (at start (pred74)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (pred70))))
  (:durative-action do_step71 :parameters () :duration 30
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (pred71))))
  (:durative-action do_step72 :parameters () :duration 600
    :condition (and (at start (step_pending step72)) (at start (pred40)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (pred72))))
  (:durative-action do_step73 :parameters () :duration 120
    :condition (and (at start (step_pending step73)) (at start (pred26)) (at start (pred28)) (at start (pred69)) (at start (pred72)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (pred73))))
  (:durative-action do_step74 :parameters () :duration 60
    :condition (and (at start (step_pending step74)) (at start (pred14)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (pred74))))
  (:durative-action do_step75 :parameters () :duration 300
    :condition (and (at start (step_pending step75)) (at start (pred26)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (pred75))))
  (:durative-action do_step76 :parameters () :duration 120
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (pred76))))
  (:durative-action do_step77 :parameters () :duration 2700
    :condition (and (at start (step_pending step77)) (at start (pred19)) (at start (pred26)) (at start (pred27)) (at start (pred34)) (at start (pred38)) (at start (pred42)) (at start (pred46)) (at start (pred67)) (at start (pred70)) (at start (pred76)) (at start (pred80)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (pred77))))
  (:durative-action do_step78 :parameters () :duration 300
    :condition (and (at start (step_pending step78)) (at start (pred12)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (pred78))))
  (:durative-action do_step79 :parameters () :duration 180
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (pred79))))
  (:durative-action do_step80 :parameters () :duration 30
    :condition (and (at start (step_pending step80)) (at start (pred45)) (at start (pred72)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (pred80))))
)