(define (domain learn_to_fly)
  (:requirements :strips :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))
  (:constants step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
              step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
              step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
              step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
              step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
              step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
              step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
              step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
              step81 step82 step83 step84 step85 step86 step87 step88 step89 step90
              step91 step92 step93 step94 step95 step96 step97 step98 step99 step100 - step)

  (:durative-action do_step1
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step1)) (at start (step_done step8)) (at start (step_done step43)) (at start (step_done step61)) (at start (step_done step68)) (at start (step_done step73)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do_step2
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step2)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do_step3
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step3)) (at start (step_done step43)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do_step4
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step4)) (at start (step_done step23)) (at start (step_done step42)) (at start (step_done step73)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do_step5
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step5)) (at start (step_done step10)) (at start (step_done step12)) (at start (step_done step76)) (at start (step_done step95)) (at start (step_done step98)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do_step6
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step6)) (at start (step_done step56)) (at start (step_done step88)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do_step7
    :duration (= ?duration 172800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do_step8
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step8)) (at start (step_done step35)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (step_done step32)) (at start (step_done step51)) (at start (step_done step85)) (at start (step_done step89)) (at start (step_done step100)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (step_done step43)) (at start (step_done step85)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  (:durative-action do_step11
    :duration (= ?duration 7200)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))
  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (step_done step55)) (at start (step_done step65)) (at start (step_done step71)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))
  (:durative-action do_step13
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step13)) (at start (step_done step6)) (at start (step_done step74)) (at start (step_done step85)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))
  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (step_done step19)) (at start (step_done step36)) (at start (step_done step58)) (at start (step_done step69)) (at start (step_done step74)) (at start (step_done step76)) (at start (step_done step82)) (at start (step_done step88)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))
  (:durative-action do_step15
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step15)) (at start (step_done step24)) (at start (step_done step35)) (at start (step_done step67)) (at start (step_done step71)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))
  (:durative-action do_step16
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step16)) (at start (step_done step21)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (step_done step74)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))
  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step18)) (at start (step_done step22)) (at start (step_done step41)) (at start (step_done step54)) (at start (step_done step86)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))
  (:durative-action do_step19
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step19)) (at start (step_done step4)) (at start (step_done step26)) (at start (step_done step30)) (at start (step_done step68)) (at start (step_done step76)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))
  (:durative-action do_step20
    :duration (= ?duration 21600)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))
  (:durative-action do_step21
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step21)) (at start (step_done step34)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))
  (:durative-action do_step22
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step22)) (at start (step_done step23)) (at start (step_done step25)) (at start (step_done step64)) (at start (step_done step97)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))
  (:durative-action do_step23
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending step23)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))
  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (step_done step37)) (at start (step_done step42)) (at start (step_done step93)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))
  (:durative-action do_step25
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step25)) (at start (step_done step42)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))
  (:durative-action do_step26
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step26)) (at start (step_done step20)) (at start (step_done step32)) (at start (step_done step44)) (at start (step_done step58)) (at start (step_done step67)) (at start (step_done step69)) (at start (step_done step72)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))
  (:durative-action do_step27
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step27)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step32)) (at start (step_done step79)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))
  (:durative-action do_step28
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step28)) (at start (step_done step61)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))
  (:durative-action do_step29
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (step_done step1)) (at start (step_done step13)) (at start (step_done step22)) (at start (step_done step52)) (at start (step_done step57)) (at start (step_done step58)) (at start (step_done step73)) (at start (step_done step79)) (at start (step_done step93)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))
  (:durative-action do_step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (step_done step51)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))
  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step31)) (at start (step_done step10)) (at start (step_done step51)) (at start (step_done step76)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31))))
  (:durative-action do_step32
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step32)) (at start (step_done step44)) (at start (step_done step73)) (at start (step_done step93)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32))))
  (:durative-action do_step33
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (step_done step39)) (at start (step_done step65)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33))))
  (:durative-action do_step34
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step34)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34))))
  (:durative-action do_step35
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step35)) (at start (step_done step41)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35))))
  (:durative-action do_step36
    :duration (= ?duration 86400)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36))))
  (:durative-action do_step37
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (step_done step10)) (at start (step_done step34)) (at start (step_done step44)) (at start (step_done step54)) (at start (step_done step67)) (at start (step_done step99)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37))))
  (:durative-action do_step38
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (step_done step26)) (at start (step_done step75)) (at start (step_done step93)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38))))
  (:durative-action do_step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (step_done step7)) (at start (step_done step54)) (at start (step_done step89)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39))))
  (:durative-action do_step40
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step40)) (at start (step_done step49)) (at start (step_done step54)) (at start (step_done step73)) (at start (step_done step90)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40))))
  (:durative-action do_step41
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step41)) (at start (step_done step36)) (at start (step_done step44)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41))))
  (:durative-action do_step42
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step42)) (at start (step_done step10)) (at start (step_done step17)) (at start (step_done step23)) (at start (step_done step65)) (at start (step_done step89)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42))))
  (:durative-action do_step43
    :duration (= ?duration 604800)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43))))
  (:durative-action do_step44
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step44)) (at start (step_done step73)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44))))
  (:durative-action do_step45
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step45)) (at start (step_done step31)) (at start (step_done step56)) (at start (step_done step64)) (at start (step_done step77)) (at start (step_done step90)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45))))
  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46))))
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (step_done step63)) (at start (step_done step65)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47))))
  (:durative-action do_step48
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step48)) (at start (step_done step14)) (at start (step_done step18)) (at start (step_done step58)) (at start (step_done step61)) (at start (step_done step81)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48))))
  (:durative-action do_step49
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step49)) (at start (step_done step41)) (at start (step_done step74)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49))))
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (step_done step44)) (at start (step_done step58)) (at start (step_done step81)) (at start (step_done step85)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50))))
  (:durative-action do_step51
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (step_done step6)) (at start (step_done step44)) (at start (step_done step67)) (at start (step_done step81)) (at start (step_done step85)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51))))
  (:durative-action do_step52
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step52)) (at start (step_done step65)) (at start (step_done step76)) (at start (step_done step78)) (at start (step_done step81)) (at start (step_done step85)) (at start (step_done step97)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52))))
  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (step_done step31)) (at start (step_done step37)) (at start (step_done step39)) (at start (step_done step40)) (at start (step_done step93)) (at start (step_done step100)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53))))
  (:durative-action do_step54
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step54)) (at start (step_done step44)) (at start (step_done step67)) (at start (step_done step86)) (at start (step_done step93)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54))))
  (:durative-action do_step55
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step55)) (at start (step_done step62)) (at start (step_done step79)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55))))
  (:durative-action do_step56
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step56)) (at start (step_done step2)) (at start (step_done step65)) (at start (step_done step74)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56))))
  (:durative-action do_step57
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step57)) (at start (step_done step3)) (at start (step_done step43)) (at start (step_done step53)) (at start (step_done step55)) (at start (step_done step67)) (at start (step_done step77)) (at start (step_done step81)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57))))
  (:durative-action do_step58
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (step_done step3)) (at start (step_done step7)) (at start (step_done step17)) (at start (step_done step73)) (at start (step_done step74)) (at start (step_done step99)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58))))
  (:durative-action do_step59
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step59)) (at start (step_done step6)) (at start (step_done step26)) (at start (step_done step28)) (at start (step_done step49)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59))))
  (:durative-action do_step60
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step60)) (at start (step_done step96)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60))))
  (:durative-action do_step61
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step61)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step64)) (at start (step_done step68)) (at start (step_done step71)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61))))
  (:durative-action do_step62
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step62)) (at start (step_done step71)) (at start (step_done step85)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62))))
  (:durative-action do_step63
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step63)) (at start (step_done step43)) (at start (step_done step61)) (at start (step_done step68)) (at start (step_done step77)) (at start (step_done step96)) (at start (step_done step98)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63))))
  (:durative-action do_step64
    :duration (= ?duration 900)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64))))
  (:durative-action do_step65
    :duration (= ?duration 7200)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65))))
  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step66)) (at start (step_done step75)) (at start (step_done step90)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66))))
  (:durative-action do_step67
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step67)) (at start (step_done step73)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67))))
  (:durative-action do_step68
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step68)) (at start (step_done step43)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68))))
  (:durative-action do_step69
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step69)) (at start (step_done step88)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69))))
  (:durative-action do_step70
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step70)) (at start (step_done step17)) (at start (step_done step56)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70))))
  (:durative-action do_step71
    :duration (= ?duration 900)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71))))
  (:durative-action do_step72
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step72)) (at start (step_done step34)) (at start (step_done step35)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72))))
  (:durative-action do_step73
    :duration (= ?duration 900)
    :condition (at start (step_pending step73))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73))))
  (:durative-action do_step74
    :duration (= ?duration 7200)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74))))
  (:durative-action do_step75
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step75)) (at start (step_done step3)) (at start (step_done step41)) (at start (step_done step49)) (at start (step_done step100)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75))))
  (:durative-action do_step76
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step76)) (at start (step_done step65)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76))))
  (:durative-action do_step77
    :duration (= ?duration 28800)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77))))
  (:durative-action do_step78
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step78)) (at start (step_done step27)) (at start (step_done step32)) (at start (step_done step65)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78))))
  (:durative-action do_step79
    :duration (= ?duration 14400)
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79))))
  (:durative-action do_step80
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step80)) (at start (step_done step41)) (at start (step_done step97)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80))))
  (:durative-action do_step81
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step81)) (at start (step_done step64)) (at start (step_done step72)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81))))
  (:durative-action do_step82
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step82)) (at start (step_done step6)) (at start (step_done step33)) (at start (step_done step65)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82))))
  (:durative-action do_step83
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (step_done step3)) (at start (step_done step30)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step39)) (at start (step_done step41)) (at start (step_done step75)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83))))
  (:durative-action do_step84
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step84)) (at start (step_done step23)) (at start (step_done step34)) (at start (step_done step73)) (at start (step_done step79)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84))))
  (:durative-action do_step85
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step85)) (at start (step_done step67)) (at start (step_done step79)) (at start (step_done step97)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85))))
  (:durative-action do_step86
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step86)) (at start (step_done step8)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86))))
  (:durative-action do_step87
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step87)) (at start (step_done step30)) (at start (step_done step64)) (at start (step_done step70)) (at start (step_done step89)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87))))
  (:durative-action do_step88
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step88)) (at start (step_done step43)) (at start (step_done step46)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88))))
  (:durative-action do_step89
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step89)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89))))
  (:durative-action do_step90
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step90)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90))))
  (:durative-action do_step91
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step91)) (at start (step_done step52)) (at start (step_done step55)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91))))
  (:durative-action do_step92
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step92)) (at start (step_done step43)) (at start (step_done step70)) (at start (step_done step75)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92))))
  (:durative-action do_step93
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step93)) (at start (step_done step11)) (at start (step_done step21)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93))))
  (:durative-action do_step94
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step94)) (at start (step_done step19)) (at start (step_done step37)) (at start (step_done step53)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94))))
  (:durative-action do_step95
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step95)) (at start (step_done step3)) (at start (step_done step26)) (at start (step_done step33)) (at start (step_done step61)) (at start (step_done step73)) (at start (step_done step98)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95))))
  (:durative-action do_step96
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step96)) (at start (step_done step2)) (at start (step_done step46)) (at start (step_done step54)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96))))
  (:durative-action do_step97
    :duration (= ?duration 3600)
    :condition (at start (step_pending step97))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97))))
  (:durative-action do_step98
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step98)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98))))
  (:durative-action do_step99
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step99)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99))))
  (:durative-action do_step100
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step100)) (at start (step_done step97)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100))))
)