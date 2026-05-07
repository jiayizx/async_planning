(define (domain police-clearance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step))
  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step1) (step_done step13) (step_done step32) (step_done step38) (step_done step90)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step2) (step_done step7) (step_done step41)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step3) (step_done step19) (step_done step32) (step_done step83)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step4) (step_done step27) (step_done step32) (step_done step47) (step_done step71) (step_done step72) (step_done step90)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step5) (step_done step7) (step_done step28) (step_done step44) (step_done step72) (step_done step77) (step_done step80)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step6) (step_done step3) (step_done step18) (step_done step26) (step_done step70)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step8) (step_done step5) (step_done step32) (step_done step53) (step_done step58) (step_done step65)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step9) (step_done step35) (step_done step89)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step10) (step_done step29) (step_done step41)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step11) (step_done step78)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))
  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step12) (step_done step87)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))
  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))
  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step14) (step_done step31) (step_done step54)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))
  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step15) (step_done step20) (step_done step29)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))
  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step16) (step_done step11) (step_done step22)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))
  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step17) (step_done step1) (step_done step38) (step_done step80)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))
  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step18) (step_done step12) (step_done step21) (step_done step33) (step_done step54)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))
  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step19) (step_done step23)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))
  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step20) (step_done step43) (step_done step77)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))
  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step21) (step_done step11) (step_done step79)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))
  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step22) (step_done step55)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))
  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step23) (step_done step7) (step_done step63) (step_done step77) (step_done step84)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))
  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step24) (step_done step62) (step_done step73)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))
  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step25) (step_done step87)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))
  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step26) (step_done step16) (step_done step28) (step_done step52)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))
  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step27) (step_done step7)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))
  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step28) (step_done step41)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))
  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))
  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step30) (step_done step31) (step_done step36) (step_done step45) (step_done step56)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))
  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step31) (step_done step11) (step_done step89)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31))))
  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step32) (step_done step12) (step_done step25) (step_done step41) (step_done step53)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32))))
  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step33) (step_done step55)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33))))
  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step34) (step_done step29) (step_done step59)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34))))
  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step35) (step_done step55)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35))))
  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step36) (step_done step57)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36))))
  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37))))
  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step38) (step_done step10) (step_done step62) (step_done step66)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38))))
  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step39) (step_done step21) (step_done step51) (step_done step58) (step_done step62)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39))))
  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step40) (step_done step7) (step_done step28)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40))))
  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step41) (step_done step29)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41))))
  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step42) (step_done step20) (step_done step56)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42))))
  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step43) (step_done step2) (step_done step56) (step_done step88)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43))))
  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44))))
  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step45) (step_done step9) (step_done step25)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45))))
  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step46) (step_done step29) (step_done step34)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46))))
  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step47) (step_done step35) (step_done step45) (step_done step57)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47))))
  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step48) (step_done step16) (step_done step39) (step_done step44)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48))))
  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step49) (step_done step2) (step_done step34) (step_done step66) (step_done step87)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49))))
  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step50) (step_done step68)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50))))
  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step51) (step_done step10) (step_done step29) (step_done step50) (step_done step73) (step_done step87)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51))))
  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step52) (step_done step72) (step_done step80)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52))))
  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step53) (step_done step7) (step_done step54)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53))))
  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step54) (step_done step28) (step_done step55)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54))))
  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step55) (step_done step25)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55))))
  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step56) (step_done step36) (step_done step46) (step_done step64) (step_done step73)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56))))
  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step57) (step_done step25) (step_done step33) (step_done step35)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57))))
  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step58) (step_done step13) (step_done step16) (step_done step64) (step_done step80)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58))))
  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step59) (step_done step41) (step_done step72)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59))))
  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step60) (step_done step3) (step_done step13) (step_done step15) (step_done step17) (step_done step43) (step_done step50) (step_done step59) (step_done step81) (step_done step83)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60))))
  (:durative-action do-step61
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step61) (step_done step5) (step_done step69) (step_done step89)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61))))
  (:durative-action do-step62
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step62) (step_done step29) (step_done step36) (step_done step37) (step_done step54)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62))))
  (:durative-action do-step63
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step63) (step_done step2) (step_done step29) (step_done step33) (step_done step35) (step_done step41)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63))))
  (:durative-action do-step64
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64))))
  (:durative-action do-step65
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step65) (step_done step66) (step_done step68) (step_done step79)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65))))
  (:durative-action do-step66
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66))))
  (:durative-action do-step67
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step67) (step_done step7) (step_done step14) (step_done step18) (step_done step20) (step_done step21) (step_done step40)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67))))
  (:durative-action do-step68
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step68) (step_done step54)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68))))
  (:durative-action do-step69
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step69) (step_done step30) (step_done step31) (step_done step34) (step_done step49) (step_done step73) (step_done step77) (step_done step78)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69))))
  (:durative-action do-step70
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step70) (step_done step22) (step_done step33) (step_done step34) (step_done step41)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70))))
  (:durative-action do-step71
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step71) (step_done step35) (step_done step50)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71))))
  (:durative-action do-step72
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72))))
  (:durative-action do-step73
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step73) (step_done step25)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73))))
  (:durative-action do-step74
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step74) (step_done step35) (step_done step44)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74))))
  (:durative-action do-step75
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step75) (step_done step12) (step_done step16) (step_done step21) (step_done step52) (step_done step62) (step_done step87)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75))))
  (:durative-action do-step76
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step76) (step_done step27) (step_done step51) (step_done step55) (step_done step62)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76))))
  (:durative-action do-step77
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step77) (step_done step25)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77))))
  (:durative-action do-step78
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step78) (step_done step2)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78))))
  (:durative-action do-step79
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step79) (step_done step33)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79))))
  (:durative-action do-step80
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step80) (step_done step25) (step_done step66) (step_done step79)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80))))
  (:durative-action do-step81
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step81) (step_done step37) (step_done step44) (step_done step65)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81))))
  (:durative-action do-step82
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step82) (step_done step6) (step_done step8) (step_done step56) (step_done step89)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82))))
  (:durative-action do-step83
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step83) (step_done step46) (step_done step50) (step_done step51) (step_done step87)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83))))
  (:durative-action do-step84
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step84) (step_done step10) (step_done step34)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84))))
  (:durative-action do-step85
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step85) (step_done step10) (step_done step22) (step_done step31) (step_done step36) (step_done step69) (step_done step75) (step_done step83)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85))))
  (:durative-action do-step86
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step86) (step_done step22) (step_done step55)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86))))
  (:durative-action do-step87
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step87) (step_done step78)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87))))
  (:durative-action do-step88
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step88) (step_done step29) (step_done step37) (step_done step59) (step_done step64)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88))))
  (:durative-action do-step89
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step89))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89))))
  (:durative-action do-step90
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step90) (step_done step51) (step_done step77)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90))))
)