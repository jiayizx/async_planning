(define (domain make_apartment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (and (pending step1) (done step19)))
    :effect (and (at start (not (pending step1))) (at end (done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (at start (and (pending step2) (done step21) (done step77)))
    :effect (and (at start (not (pending step2))) (at end (done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (at start (and (pending step3) (done step11) (done step28) (done step40) (done step59)))
    :effect (and (at start (not (pending step3))) (at end (done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (at start (and (pending step4) (done step14)))
    :effect (and (at start (not (pending step4))) (at end (done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 86400)
    :condition (at start (and (pending step5) (done step61)))
    :effect (and (at start (not (pending step5))) (at end (done step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (at start (and (pending step6) (done step77)))
    :effect (and (at start (not (pending step6))) (at end (done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (at start (and (pending step7) (done step54) (done step59)))
    :effect (and (at start (not (pending step7))) (at end (done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 10800)
    :condition (at start (and (pending step8) (done step41) (done step56) (done step71)))
    :effect (and (at start (not (pending step8))) (at end (done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (at start (and (pending step9) (done step40) (done step59) (done step73)))
    :effect (and (at start (not (pending step9))) (at end (done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (at start (and (pending step10) (done step5) (done step16) (done step31) (done step43) (done step44) (done step78)))
    :effect (and (at start (not (pending step10))) (at end (done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 259200)
    :condition (at start (pending step11))
    :effect (and (at start (not (pending step11))) (at end (done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (at start (and (pending step12) (done step19) (done step40) (done step63)))
    :effect (and (at start (not (pending step12))) (at end (done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (at start (and (pending step13) (done step11) (done step28)))
    :effect (and (at start (not (pending step13))) (at end (done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 18000)
    :condition (at start (pending step14))
    :effect (and (at start (not (pending step14))) (at end (done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (at start (pending step15))
    :effect (and (at start (not (pending step15))) (at end (done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 21600)
    :condition (at start (and (pending step16) (done step2) (done step6) (done step37)))
    :effect (and (at start (not (pending step16))) (at end (done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (at start (and (pending step17) (done step7) (done step8) (done step10) (done step69)))
    :effect (and (at start (not (pending step17))) (at end (done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (at start (and (pending step18) (done step48)))
    :effect (and (at start (not (pending step18))) (at end (done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 86400)
    :condition (at start (pending step19))
    :effect (and (at start (not (pending step19))) (at end (done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 2400)
    :condition (at start (and (pending step20) (done step2) (done step25) (done step35)))
    :effect (and (at start (not (pending step20))) (at end (done step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 1200)
    :condition (at start (and (pending step21) (done step37)))
    :effect (and (at start (not (pending step21))) (at end (done step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 3600)
    :condition (at start (and (pending step22) (done step6) (done step34) (done step64)))
    :effect (and (at start (not (pending step22))) (at end (done step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (at start (pending step23))
    :effect (and (at start (not (pending step23))) (at end (done step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 3600)
    :condition (at start (pending step24))
    :effect (and (at start (not (pending step24))) (at end (done step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (at start (and (pending step25) (done step15) (done step45) (done step66) (done step68)))
    :effect (and (at start (not (pending step25))) (at end (done step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 5400)
    :condition (at start (and (pending step26) (done step42)))
    :effect (and (at start (not (pending step26))) (at end (done step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 2700)
    :condition (at start (and (pending step27) (done step2) (done step4) (done step21) (done step24) (done step37)))
    :effect (and (at start (not (pending step27))) (at end (done step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 10800)
    :condition (at start (and (pending step28) (done step15) (done step43) (done step55) (done step71)))
    :effect (and (at start (not (pending step28))) (at end (done step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 172800)
    :condition (at start (pending step29))
    :effect (and (at start (not (pending step29))) (at end (done step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (at start (and (pending step30) (done step6) (done step11) (done step34) (done step56) (done step75)))
    :effect (and (at start (not (pending step30))) (at end (done step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 900)
    :condition (at start (and (pending step31) (done step25) (done step32) (done step40) (done step41) (done step59)))
    :effect (and (at start (not (pending step31))) (at end (done step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 3600)
    :condition (at start (and (pending step32) (done step1) (done step56)))
    :effect (and (at start (not (pending step32))) (at end (done step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 7200)
    :condition (at start (pending step33))
    :effect (and (at start (not (pending step33))) (at end (done step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 7200)
    :condition (at start (and (pending step34) (done step24)))
    :effect (and (at start (not (pending step34))) (at end (done step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (at start (pending step35))
    :effect (and (at start (not (pending step35))) (at end (done step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 900)
    :condition (at start (and (pending step36) (done step13) (done step24) (done step55) (done step73)))
    :effect (and (at start (not (pending step36))) (at end (done step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (at start (pending step37))
    :effect (and (at start (not (pending step37))) (at end (done step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (at start (and (pending step38) (done step12) (done step54)))
    :effect (and (at start (not (pending step38))) (at end (done step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 7200)
    :condition (at start (and (pending step39) (done step8)))
    :effect (and (at start (not (pending step39))) (at end (done step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 14400)
    :condition (at start (and (pending step40) (done step33)))
    :effect (and (at start (not (pending step40))) (at end (done step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 7200)
    :condition (at start (and (pending step41) (done step2) (done step12)))
    :effect (and (at start (not (pending step41))) (at end (done step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 3600)
    :condition (at start (and (pending step42) (done step31) (done step40) (done step45)))
    :effect (and (at start (not (pending step42))) (at end (done step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 3600)
    :condition (at start (and (pending step43) (done step71) (done step74)))
    :effect (and (at start (not (pending step43))) (at end (done step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 7200)
    :condition (at start (pending step44))
    :effect (and (at start (not (pending step44))) (at end (done step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 2700)
    :condition (at start (and (pending step45) (done step6) (done step24) (done step51)))
    :effect (and (at start (not (pending step45))) (at end (done step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (at start (and (pending step46) (done step11) (done step69)))
    :effect (and (at start (not (pending step46))) (at end (done step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (at start (and (pending step47) (done step5) (done step28) (done step50) (done step56) (done step68)))
    :effect (and (at start (not (pending step47))) (at end (done step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 10800)
    :condition (at start (and (pending step48) (done step44) (done step75)))
    :effect (and (at start (not (pending step48))) (at end (done step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 10800)
    :condition (at start (and (pending step49) (done step29)))
    :effect (and (at start (not (pending step49))) (at end (done step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (at start (and (pending step50) (done step1) (done step4) (done step14) (done step45)))
    :effect (and (at start (not (pending step50))) (at end (done step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (at start (and (pending step51) (done step77)))
    :effect (and (at start (not (pending step51))) (at end (done step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (at start (and (pending step52) (done step2) (done step62)))
    :effect (and (at start (not (pending step52))) (at end (done step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 3600)
    :condition (at start (and (pending step53) (done step40)))
    :effect (and (at start (not (pending step53))) (at end (done step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 10800)
    :condition (at start (and (pending step54) (done step1) (done step3) (done step12) (done step14) (done step35)))
    :effect (and (at start (not (pending step54))) (at end (done step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 3600)
    :condition (at start (pending step55))
    :effect (and (at start (not (pending step55))) (at end (done step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 14400)
    :condition (at start (and (pending step56) (done step19) (done step28)))
    :effect (and (at start (not (pending step56))) (at end (done step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 600)
    :condition (at start (and (pending step57) (done step5) (done step16) (done step45)))
    :effect (and (at start (not (pending step57))) (at end (done step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 300)
    :condition (at start (and (pending step58) (done step14) (done step56)))
    :effect (and (at start (not (pending step58))) (at end (done step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 3600)
    :condition (at start (and (pending step59) (done step74)))
    :effect (and (at start (not (pending step59))) (at end (done step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 1800)
    :condition (at start (and (pending step60) (done step9) (done step17) (done step24) (done step56) (done step59) (done step66)))
    :effect (and (at start (not (pending step60))) (at end (done step60)))
  )
  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (at start (and (pending step61) (done step51)))
    :effect (and (at start (not (pending step61))) (at end (done step61)))
  )
  (:durative-action do_step62
    :duration (= ?duration 600)
    :condition (at start (and (pending step62) (done step25) (done step35) (done step55)))
    :effect (and (at start (not (pending step62))) (at end (done step62)))
  )
  (:durative-action do_step63
    :duration (= ?duration 7200)
    :condition (at start (pending step63))
    :effect (and (at start (not (pending step63))) (at end (done step63)))
  )
  (:durative-action do_step64
    :duration (= ?duration 3600)
    :condition (at start (pending step64))
    :effect (and (at start (not (pending step64))) (at end (done step64)))
  )
  (:durative-action do_step65
    :duration (= ?duration 600)
    :condition (at start (and (pending step65) (done step35) (done step54) (done step79)))
    :effect (and (at start (not (pending step65))) (at end (done step65)))
  )
  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (at start (pending step66))
    :effect (and (at start (not (pending step66))) (at end (done step66)))
  )
  (:durative-action do_step67
    :duration (= ?duration 300)
    :condition (at start (and (pending step67) (done step5) (done step64) (done step73) (done step77) (done step78)))
    :effect (and (at start (not (pending step67))) (at end (done step67)))
  )
  (:durative-action do_step68
    :duration (= ?duration 1800)
    :condition (at start (and (pending step68) (done step1)))
    :effect (and (at start (not (pending step68))) (at end (done step68)))
  )
  (:durative-action do_step69
    :duration (= ?duration 7200)
    :condition (at start (and (pending step69) (done step39) (done step43) (done step73)))
    :effect (and (at start (not (pending step69))) (at end (done step69)))
  )
  (:durative-action do_step70
    :duration (= ?duration 900)
    :condition (at start (and (pending step70) (done step19) (done step44) (done step50) (done step51) (done step73)))
    :effect (and (at start (not (pending step70))) (at end (done step70)))
  )
  (:durative-action do_step71
    :duration (= ?duration 3600)
    :condition (at start (and (pending step71) (done step2) (done step63)))
    :effect (and (at start (not (pending step71))) (at end (done step71)))
  )
  (:durative-action do_step72
    :duration (= ?duration 300)
    :condition (at start (and (pending step72) (done step5) (done step56) (done step59) (done step78)))
    :effect (and (at start (not (pending step72))) (at end (done step72)))
  )
  (:durative-action do_step73
    :duration (= ?duration 7200)
    :condition (at start (and (pending step73) (done step2) (done step14)))
    :effect (and (at start (not (pending step73))) (at end (done step73)))
  )
  (:durative-action do_step74
    :duration (= ?duration 3600)
    :condition (at start (pending step74))
    :effect (and (at start (not (pending step74))) (at end (done step74)))
  )
  (:durative-action do_step75
    :duration (= ?duration 1800)
    :condition (at start (and (pending step75) (done step21)))
    :effect (and (at start (not (pending step75))) (at end (done step75)))
  )
  (:durative-action do_step76
    :duration (= ?duration 1800)
    :condition (at start (and (pending step76) (done step51)))
    :effect (and (at start (not (pending step76))) (at end (done step76)))
  )
  (:durative-action do_step77
    :duration (= ?duration 3600)
    :condition (at start (and (pending step77) (done step19)))
    :effect (and (at start (not (pending step77))) (at end (done step77)))
  )
  (:durative-action do_step78
    :duration (= ?duration 7200)
    :condition (at start (and (pending step78) (done step18) (done step38) (done step46) (done step50) (done step71) (done step73)))
    :effect (and (at start (not (pending step78))) (at end (done step78)))
  )
  (:durative-action do_step79
    :duration (= ?duration 300)
    :condition (at start (and (pending step79) (done step6) (done step20) (done step26) (done step50) (done step53) (done step69)))
    :effect (and (at start (not (pending step79))) (at end (done step79)))
  )
  (:durative-action do_step80
    :duration (= ?duration 1200)
    :condition (at start (and (pending step80) (done step23)))
    :effect (and (at start (not (pending step80))) (at end (done step80)))
  )
)