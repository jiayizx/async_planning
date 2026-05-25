(define (domain roast_macadamia)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (pending ?s - step) (done ?s - step) (sem ?s - step))

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (pending step1)) (at start (sem step9)) (at start (sem step48)) (at start (sem step98)))
    :effect (and (at start (not (pending step1))) (at end (done step1)) (at end (sem step1))))

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (and (at start (pending step2)) (at start (sem step35)) (at start (sem step48)) (at start (sem step73)))
    :effect (and (at start (not (pending step2))) (at end (done step2)) (at end (sem step2))))

  (:durative-action do_step3
    :duration (= ?duration 180)
    :condition (and (at start (pending step3)) (at start (sem step35)) (at start (sem step45)) (at start (sem step66)) (at start (sem step85)))
    :effect (and (at start (not (pending step3))) (at end (done step3)) (at end (sem step3))))

  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (and (at start (pending step4)) (at start (sem step3)) (at start (sem step27)) (at start (sem step36)) (at start (sem step45)) (at start (sem step72)))
    :effect (and (at start (not (pending step4))) (at end (done step4)) (at end (sem step4))))

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (and (at start (pending step5)) (at start (sem step55)) (at start (sem step86)))
    :effect (and (at start (not (pending step5))) (at end (done step5)) (at end (sem step5))))

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (pending step6)) (at start (sem step16)))
    :effect (and (at start (not (pending step6))) (at end (done step6)) (at end (sem step6))))

  (:durative-action do_step7
    :duration (= ?duration 60)
    :condition (and (at start (pending step7)) (at start (sem step11)) (at start (sem step17)) (at start (sem step21)) (at start (sem step86)) (at start (sem step96)))
    :effect (and (at start (not (pending step7))) (at end (done step7)) (at end (sem step7))))

  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (and (at start (pending step8)) (at start (sem step3)) (at start (sem step75)) (at start (sem step79)))
    :effect (and (at start (not (pending step8))) (at end (done step8)) (at end (sem step8))))

  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (and (at start (pending step9)) (at start (sem step20)) (at start (sem step71)))
    :effect (and (at start (not (pending step9))) (at end (done step9)) (at end (sem step9))))

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (pending step10)) (at start (sem step36)) (at start (sem step86)))
    :effect (and (at start (not (pending step10))) (at end (done step10)) (at end (sem step10))))

  (:durative-action do_step11
    :duration (= ?duration 900)
    :condition (at start (pending step11))
    :effect (and (at start (not (pending step11))) (at end (done step11)) (at end (sem step11))))

  (:durative-action do_step12
    :duration (= ?duration 240)
    :condition (and (at start (pending step12)) (at start (sem step35)) (at start (sem step45)) (at start (sem step56)) (at start (sem step63)) (at start (sem step82)) (at start (sem step93)))
    :effect (and (at start (not (pending step12))) (at end (done step12)) (at end (sem step12))))

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (pending step13)) (at start (sem step88)))
    :effect (and (at start (not (pending step13))) (at end (done step13)) (at end (sem step13))))

  (:durative-action do_step14
    :duration (= ?duration 1200)
    :condition (and (at start (pending step14)) (at start (sem step63)) (at start (sem step96)))
    :effect (and (at start (not (pending step14))) (at end (done step14)) (at end (sem step14))))

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (pending step15)) (at start (sem step53)) (at start (sem step56)) (at start (sem step58)) (at start (sem step62)) (at start (sem step73)))
    :effect (and (at start (not (pending step15))) (at end (done step15)) (at end (sem step15))))

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (at start (pending step16))
    :effect (and (at start (not (pending step16))) (at end (done step16)) (at end (sem step16))))

  (:durative-action do_step17
    :duration (= ?duration 900)
    :condition (and (at start (pending step17)) (at start (sem step72)))
    :effect (and (at start (not (pending step17))) (at end (done step17)) (at end (sem step17))))

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (pending step18)) (at start (sem step5)) (at start (sem step76)))
    :effect (and (at start (not (pending step18))) (at end (done step18)) (at end (sem step18))))

  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (at start (pending step19))
    :effect (and (at start (not (pending step19))) (at end (done step19)) (at end (sem step19))))

  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (and (at start (pending step20)) (at start (sem step61)))
    :effect (and (at start (not (pending step20))) (at end (done step20)) (at end (sem step20))))

  (:durative-action do_step21
    :duration (= ?duration 240)
    :condition (and (at start (pending step21)) (at start (sem step35)) (at start (sem step48)) (at start (sem step71)))
    :effect (and (at start (not (pending step21))) (at end (done step21)) (at end (sem step21))))

  (:durative-action do_step22
    :duration (= ?duration 600)
    :condition (and (at start (pending step22)) (at start (sem step27)) (at start (sem step41)) (at start (sem step53)) (at start (sem step84)))
    :effect (and (at start (not (pending step22))) (at end (done step22)) (at end (sem step22))))

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (pending step23)) (at start (sem step13)) (at start (sem step75)))
    :effect (and (at start (not (pending step23))) (at end (done step23)) (at end (sem step23))))

  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (and (at start (pending step24)) (at start (sem step8)) (at start (sem step44)) (at start (sem step80)))
    :effect (and (at start (not (pending step24))) (at end (done step24)) (at end (sem step24))))

  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (at start (pending step25))
    :effect (and (at start (not (pending step25))) (at end (done step25)) (at end (sem step25))))

  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (and (at start (pending step26)) (at start (sem step46)))
    :effect (and (at start (not (pending step26))) (at end (done step26)) (at end (sem step26))))

  (:durative-action do_step27
    :duration (= ?duration 300)
    :condition (at start (pending step27))
    :effect (and (at start (not (pending step27))) (at end (done step27)) (at end (sem step27))))

  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (pending step28)) (at start (sem step1)) (at start (sem step17)) (at start (sem step21)) (at start (sem step42)))
    :effect (and (at start (not (pending step28))) (at end (done step28)) (at end (sem step28))))

  (:durative-action do_step29
    :duration (= ?duration 180)
    :condition (and (at start (pending step29)) (at start (sem step12)) (at start (sem step58)))
    :effect (and (at start (not (pending step29))) (at end (done step29)) (at end (sem step29))))

  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (and (at start (pending step30)) (at start (sem step15)) (at start (sem step31)) (at start (sem step53)) (at start (sem step61)) (at start (sem step68)) (at start (sem step80)) (at start (sem step84)))
    :effect (and (at start (not (pending step30))) (at end (done step30)) (at end (sem step30))))

  (:durative-action do_step31
    :duration (= ?duration 60)
    :condition (and (at start (pending step31)) (at start (sem step11)) (at start (sem step24)) (at start (sem step42)) (at start (sem step57)))
    :effect (and (at start (not (pending step31))) (at end (done step31)) (at end (sem step31))))

  (:durative-action do_step32
    :duration (= ?duration 240)
    :condition (and (at start (pending step32)) (at start (sem step25)) (at start (sem step55)) (at start (sem step92)))
    :effect (and (at start (not (pending step32))) (at end (done step32)) (at end (sem step32))))

  (:durative-action do_step33
    :duration (= ?duration 60)
    :condition (and (at start (pending step33)) (at start (sem step8)))
    :effect (and (at start (not (pending step33))) (at end (done step33)) (at end (sem step33))))

  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (pending step34)) (at start (sem step23)) (at start (sem step32)) (at start (sem step39)) (at start (sem step46)) (at start (sem step78)) (at start (sem step94)))
    :effect (and (at start (not (pending step34))) (at end (done step34)) (at end (sem step34))))

  (:durative-action do_step35
    :duration (= ?duration 600)
    :condition (and (at start (pending step35)) (at start (sem step13)))
    :effect (and (at start (not (pending step35))) (at end (done step35)) (at end (sem step35))))

  (:durative-action do_step36
    :duration (= ?duration 180)
    :condition (and (at start (pending step36)) (at start (sem step12)) (at start (sem step41)) (at start (sem step56)) (at start (sem step61)) (at start (sem step94)))
    :effect (and (at start (not (pending step36))) (at end (done step36)) (at end (sem step36))))

  (:durative-action do_step37
    :duration (= ?duration 60)
    :condition (and (at start (pending step37)) (at start (sem step18)) (at start (sem step29)))
    :effect (and (at start (not (pending step37))) (at end (done step37)) (at end (sem step37))))

  (:durative-action do_step38
    :duration (= ?duration 600)
    :condition (and (at start (pending step38)) (at start (sem step9)) (at start (sem step71)))
    :effect (and (at start (not (pending step38))) (at end (done step38)) (at end (sem step38))))

  (:durative-action do_step39
    :duration (= ?duration 180)
    :condition (and (at start (pending step39)) (at start (sem step79)) (at start (sem step88)))
    :effect (and (at start (not (pending step39))) (at end (done step39)) (at end (sem step39))))

  (:durative-action do_step40
    :duration (= ?duration 600)
    :condition (and (at start (pending step40)) (at start (sem step7)) (at start (sem step17)) (at start (sem step56)))
    :effect (and (at start (not (pending step40))) (at end (done step40)) (at end (sem step40))))

  (:durative-action do_step41
    :duration (= ?duration 120)
    :condition (and (at start (pending step41)) (at start (sem step54)) (at start (sem step96)))
    :effect (and (at start (not (pending step41))) (at end (done step41)) (at end (sem step41))))

  (:durative-action do_step42
    :duration (= ?duration 120)
    :condition (and (at start (pending step42)) (at start (sem step45)) (at start (sem step49)) (at start (sem step85)))
    :effect (and (at start (not (pending step42))) (at end (done step42)) (at end (sem step42))))

  (:durative-action do_step43
    :duration (= ?duration 480)
    :condition (and (at start (pending step43)) (at start (sem step76)) (at start (sem step83)) (at start (sem step92)))
    :effect (and (at start (not (pending step43))) (at end (done step43)) (at end (sem step43))))

  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (and (at start (pending step44)) (at start (sem step14)) (at start (sem step63)))
    :effect (and (at start (not (pending step44))) (at end (done step44)) (at end (sem step44))))

  (:durative-action do_step45
    :duration (= ?duration 600)
    :condition (at start (pending step45))
    :effect (and (at start (not (pending step45))) (at end (done step45)) (at end (sem step45))))

  (:durative-action do_step46
    :duration (= ?duration 60)
    :condition (at start (pending step46))
    :effect (and (at start (not (pending step46))) (at end (done step46)) (at end (sem step46))))

  (:durative-action do_step47
    :duration (= ?duration 600)
    :condition (and (at start (pending step47)) (at start (sem step55)) (at start (sem step84)) (at start (sem step93)) (at start (sem step94)))
    :effect (and (at start (not (pending step47))) (at end (done step47)) (at end (sem step47))))

  (:durative-action do_step48
    :duration (= ?duration 60)
    :condition (at start (pending step48))
    :effect (and (at start (not (pending step48))) (at end (done step48)) (at end (sem step48))))

  (:durative-action do_step49
    :duration (= ?duration 60)
    :condition (and (at start (pending step49)) (at start (sem step38)) (at start (sem step51)) (at start (sem step52)) (at start (sem step54)) (at start (sem step62)) (at start (sem step86)))
    :effect (and (at start (not (pending step49))) (at end (done step49)) (at end (sem step49))))

  (:durative-action do_step50
    :duration (= ?duration 30)
    :condition (and (at start (pending step50)) (at start (sem step16)) (at start (sem step32)) (at start (sem step41)) (at start (sem step74)) (at start (sem step85)))
    :effect (and (at start (not (pending step50))) (at end (done step50)) (at end (sem step50))))

  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (and (at start (pending step51)) (at start (sem step19)) (at start (sem step38)) (at start (sem step39)) (at start (sem step57)) (at start (sem step94)))
    :effect (and (at start (not (pending step51))) (at end (done step51)) (at end (sem step51))))

  (:durative-action do_step52
    :duration (= ?duration 600)
    :condition (and (at start (pending step52)) (at start (sem step2)) (at start (sem step4)) (at start (sem step23)) (at start (sem step75)))
    :effect (and (at start (not (pending step52))) (at end (done step52)) (at end (sem step52))))

  (:durative-action do_step53
    :duration (= ?duration 600)
    :condition (and (at start (pending step53)) (at start (sem step41)) (at start (sem step71)) (at start (sem step90)))
    :effect (and (at start (not (pending step53))) (at end (done step53)) (at end (sem step53))))

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (at start (pending step54))
    :effect (and (at start (not (pending step54))) (at end (done step54)) (at end (sem step54))))

  (:durative-action do_step55
    :duration (= ?duration 120)
    :condition (and (at start (pending step55)) (at start (sem step11)) (at start (sem step63)))
    :effect (and (at start (not (pending step55))) (at end (done step55)) (at end (sem step55))))

  (:durative-action do_step56
    :duration (= ?duration 180)
    :condition (and (at start (pending step56)) (at start (sem step17)) (at start (sem step83)))
    :effect (and (at start (not (pending step56))) (at end (done step56)) (at end (sem step56))))

  (:durative-action do_step57
    :duration (= ?duration 240)
    :condition (and (at start (pending step57)) (at start (sem step58)))
    :effect (and (at start (not (pending step57))) (at end (done step57)) (at end (sem step57))))

  (:durative-action do_step58
    :duration (= ?duration 300)
    :condition (and (at start (pending step58)) (at start (sem step83)))
    :effect (and (at start (not (pending step58))) (at end (done step58)) (at end (sem step58))))

  (:durative-action do_step59
    :duration (= ?duration 300)
    :condition (and (at start (pending step59)) (at start (sem step17)) (at start (sem step41)) (at start (sem step90)) (at start (sem step92)))
    :effect (and (at start (not (pending step59))) (at end (done step59)) (at end (sem step59))))

  (:durative-action do_step60
    :duration (= ?duration 300)
    :condition (and (at start (pending step60)) (at start (sem step39)))
    :effect (and (at start (not (pending step60))) (at end (done step60)) (at end (sem step60))))

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (pending step61)) (at start (sem step5)))
    :effect (and (at start (not (pending step61))) (at end (done step61)) (at end (sem step61))))

  (:durative-action do_step62
    :duration (= ?duration 240)
    :condition (and (at start (pending step62)) (at start (sem step13)) (at start (sem step26)))
    :effect (and (at start (not (pending step62))) (at end (done step62)) (at end (sem step62))))

  (:durative-action do_step63
    :duration (= ?duration 900)
    :condition (at start (pending step63))
    :effect (and (at start (not (pending step63))) (at end (done step63)) (at end (sem step63))))

  (:durative-action do_step64
    :duration (= ?duration 300)
    :condition (and (at start (pending step64)) (at start (sem step85)))
    :effect (and (at start (not (pending step64))) (at end (done step64)) (at end (sem step64))))

  (:durative-action do_step65
    :duration (= ?duration 120)
    :condition (and (at start (pending step65)) (at start (sem step35)))
    :effect (and (at start (not (pending step65))) (at end (done step65)) (at end (sem step65))))

  (:durative-action do_step66
    :duration (= ?duration 300)
    :condition (and (at start (pending step66)) (at start (sem step39)) (at start (sem step62)) (at start (sem step72)))
    :effect (and (at start (not (pending step66))) (at end (done step66)) (at end (sem step66))))

  (:durative-action do_step67
    :duration (= ?duration 30)
    :condition (and (at start (pending step67)) (at start (sem step62)))
    :effect (and (at start (not (pending step67))) (at end (done step67)) (at end (sem step67))))

  (:durative-action do_step68
    :duration (= ?duration 120)
    :condition (and (at start (pending step68)) (at start (sem step49)) (at start (sem step53)) (at start (sem step60)) (at start (sem step63)) (at start (sem step75)) (at start (sem step87)) (at start (sem step91)) (at start (sem step92)))
    :effect (and (at start (not (pending step68))) (at end (done step68)) (at end (sem step68))))

  (:durative-action do_step69
    :duration (= ?duration 300)
    :condition (and (at start (pending step69)) (at start (sem step43)) (at start (sem step45)) (at start (sem step96)))
    :effect (and (at start (not (pending step69))) (at end (done step69)) (at end (sem step69))))

  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (and (at start (pending step70)) (at start (sem step79)))
    :effect (and (at start (not (pending step70))) (at end (done step70)) (at end (sem step70))))

  (:durative-action do_step71
    :duration (= ?duration 600)
    :condition (and (at start (pending step71)) (at start (sem step5)) (at start (sem step26)))
    :effect (and (at start (not (pending step71))) (at end (done step71)) (at end (sem step71))))

  (:durative-action do_step72
    :duration (= ?duration 120)
    :condition (at start (pending step72))
    :effect (and (at start (not (pending step72))) (at end (done step72)) (at end (sem step72))))

  (:durative-action do_step73
    :duration (= ?duration 600)
    :condition (at start (pending step73))
    :effect (and (at start (not (pending step73))) (at end (done step73)) (at end (sem step73))))

  (:durative-action do_step74
    :duration (= ?duration 300)
    :condition (and (at start (pending step74)) (at start (sem step14)))
    :effect (and (at start (not (pending step74))) (at end (done step74)) (at end (sem step74))))

  (:durative-action do_step75
    :duration (= ?duration 120)
    :condition (and (at start (pending step75)) (at start (sem step86)))
    :effect (and (at start (not (pending step75))) (at end (done step75)) (at end (sem step75))))

  (:durative-action do_step76
    :duration (= ?duration 120)
    :condition (and (at start (pending step76)) (at start (sem step74)))
    :effect (and (at start (not (pending step76))) (at end (done step76)) (at end (sem step76))))

  (:durative-action do_step77
    :duration (= ?duration 600)
    :condition (and (at start (pending step77)) (at start (sem step3)) (at start (sem step57)) (at start (sem step66)) (at start (sem step68)) (at start (sem step88)) (at start (sem step91)))
    :effect (and (at start (not (pending step77))) (at end (done step77)) (at end (sem step77))))

  (:durative-action do_step78
    :duration (= ?duration 60)
    :condition (and (at start (pending step78)) (at start (sem step5)) (at start (sem step33)) (at start (sem step56)) (at start (sem step82)))
    :effect (and (at start (not (pending step78))) (at end (done step78)) (at end (sem step78))))

  (:durative-action do_step79
    :duration (= ?duration 1200)
    :condition (at start (pending step79))
    :effect (and (at start (not (pending step79))) (at end (done step79)) (at end (sem step79))))

  (:durative-action do_step80
    :duration (= ?duration 10)
    :condition (and (at start (pending step80)) (at start (sem step8)) (at start (sem step92)))
    :effect (and (at start (not (pending step80))) (at end (done step80)) (at end (sem step80))))

  (:durative-action do_step81
    :duration (= ?duration 60)
    :condition (and (at start (pending step81)) (at start (sem step34)) (at start (sem step36)) (at start (sem step38)) (at start (sem step77)) (at start (sem step94)))
    :effect (and (at start (not (pending step81))) (at end (done step81)) (at end (sem step81))))

  (:durative-action do_step82
    :duration (= ?duration 120)
    :condition (and (at start (pending step82)) (at start (sem step48)) (at start (sem step98)))
    :effect (and (at start (not (pending step82))) (at end (done step82)) (at end (sem step82))))

  (:durative-action do_step83
    :duration (= ?duration 180)
    :condition (and (at start (pending step83)) (at start (sem step3)) (at start (sem step25)) (at start (sem step93)))
    :effect (and (at start (not (pending step83))) (at end (done step83)) (at end (sem step83))))

  (:durative-action do_step84
    :duration (= ?duration 120)
    :condition (and (at start (pending step84)) (at start (sem step6)) (at start (sem step11)) (at start (sem step63)))
    :effect (and (at start (not (pending step84))) (at end (done step84)) (at end (sem step84))))

  (:durative-action do_step85
    :duration (= ?duration 120)
    :condition (and (at start (pending step85)) (at start (sem step60)))
    :effect (and (at start (not (pending step85))) (at end (done step85)) (at end (sem step85))))

  (:durative-action do_step86
    :duration (= ?duration 180)
    :condition (and (at start (pending step86)) (at start (sem step26)))
    :effect (and (at start (not (pending step86))) (at end (done step86)) (at end (sem step86))))

  (:durative-action do_step87
    :duration (= ?duration 60)
    :condition (and (at start (pending step87)) (at start (sem step14)) (at start (sem step62)))
    :effect (and (at start (not (pending step87))) (at end (done step87)) (at end (sem step87))))

  (:durative-action do_step88
    :duration (= ?duration 600)
    :condition (at start (pending step88))
    :effect (and (at start (not (pending step88))) (at end (done step88)) (at end (sem step88))))

  (:durative-action do_step89
    :duration (= ?duration 120)
    :condition (and (at start (pending step89)) (at start (sem step25)) (at start (sem step51)) (at start (sem step63)) (at start (sem step86)))
    :effect (and (at start (not (pending step89))) (at end (done step89)) (at end (sem step89))))

  (:durative-action do_step90
    :duration (= ?duration 120)
    :condition (and (at start (pending step90)) (at start (sem step51)))
    :effect (and (at start (not (pending step90))) (at end (done step90)) (at end (sem step90))))

  (:durative-action do_step91
    :duration (= ?duration 180)
    :condition (and (at start (pending step91)) (at start (sem step5)) (at start (sem step33)) (at start (sem step89)))
    :effect (and (at start (not (pending step91))) (at end (done step91)) (at end (sem step91))))

  (:durative-action do_step92
    :duration (= ?duration 300)
    :condition (and (at start (pending step92)) (at start (sem step13)) (at start (sem step75)))
    :effect (and (at start (not (pending step92))) (at end (done step92)) (at end (sem step92))))

  (:durative-action do_step93
    :duration (= ?duration 180)
    :condition (and (at start (pending step93)) (at start (sem step66)) (at start (sem step79)))
    :effect (and (at start (not (pending step93))) (at end (done step93)) (at end (sem step93))))

  (:durative-action do_step94
    :duration (= ?duration 300)
    :condition (and (at start (pending step94)) (at start (sem step12)) (at start (sem step45)) (at start (sem step60)) (at start (sem step83)) (at start (sem step86)))
    :effect (and (at start (not (pending step94))) (at end (done step94)) (at end (sem step94))))

  (:durative-action do_step95
    :duration (= ?duration 120)
    :condition (and (at start (pending step95)) (at start (sem step37)) (at start (sem step44)) (at start (sem step46)) (at start (sem step57)))
    :effect (and (at start (not (pending step95))) (at end (done step95)) (at end (sem step95))))

  (:durative-action do_step96
    :duration (= ?duration 120)
    :condition (at start (pending step96))
    :effect (and (at start (not (pending step96))) (at end (done step96)) (at end (sem step96))))

  (:durative-action do_step97
    :duration (= ?duration 120)
    :condition (and (at start (pending step97)) (at start (sem step2)) (at start (sem step5)) (at start (sem step9)) (at start (sem step42)) (at start (sem step65)) (at start (sem step78)) (at start (sem step83)) (at start (sem step100)))
    :effect (and (at start (not (pending step97))) (at end (done step97)) (at end (sem step97))))

  (:durative-action do_step98
    :duration (= ?duration 300)
    :condition (and (at start (pending step98)) (at start (sem step41)) (at start (sem step83)))
    :effect (and (at start (not (pending step98))) (at end (done step98)) (at end (sem step98))))

  (:durative-action do_step99
    :duration (= ?duration 600)
    :condition (and (at start (pending step99)) (at start (sem step18)) (at start (sem step22)) (at start (sem step25)) (at start (sem step26)) (at start (sem step33)) (at start (sem step34)) (at start (sem step37)) (at start (sem step41)) (at start (sem step49)) (at start (sem step53)) (at start (sem step63)) (at start (sem step65)) (at start (sem step89)) (at start (sem step90)))
    :effect (and (at start (not (pending step99))) (at end (done step99)) (at end (sem step99))))

  (:durative-action do_step100
    :duration (= ?duration 60)
    :condition (and (at start (pending step100)) (at start (sem step39)) (at start (sem step40)) (at start (sem step45)) (at start (sem step66)) (at start (sem step76)))
    :effect (and (at start (not (pending step100))) (at end (done step100)) (at end (sem step100))))
)
