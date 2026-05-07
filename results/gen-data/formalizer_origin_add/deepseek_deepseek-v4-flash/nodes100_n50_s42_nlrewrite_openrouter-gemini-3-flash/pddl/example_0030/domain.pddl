(define (domain drum_customization)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed ?s - step)
  )
  ;; Step 1
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed step1)))
  )
  ;; Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed step2)))
  )
  ;; Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (completed step9)) (at start (completed step19)) (at start (completed step32)) (at start (completed step62)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed step3)))
  )
  ;; Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (completed step21)) (at start (completed step39)) (at start (completed step50)) (at start (completed step67)) (at start (completed step74)) (at start (completed step75)) (at start (completed step86)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed step4)))
  )
  ;; Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (completed step8)) (at start (completed step16)) (at start (completed step46)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed step5)))
  )
  ;; Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (completed step44)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed step6)))
  )
  ;; Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (completed step26)) (at start (completed step82)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed step7)))
  )
  ;; Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step8)) (at start (completed step56)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed step8)))
  )
  ;; Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (completed step51)) (at start (completed step58)) (at start (completed step62)) (at start (completed step90)) (at start (completed step91)) (at start (completed step94)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed step9)))
  )
  ;; Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (completed step30)) (at start (completed step63)) (at start (completed step85)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed step10)))
  )
  ;; Step 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (completed step57)) (at start (completed step95)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed step11)))
  )
  ;; Step 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (completed step6)) (at start (completed step14)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed step12)))
  )
  ;; Step 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step13)) (at start (completed step35)) (at start (completed step96)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed step13)))
  )
  ;; Step 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (completed step35)) (at start (completed step80)) (at start (completed step84)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed step14)))
  )
  ;; Step 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (completed step27)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed step15)))
  )
  ;; Step 16
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (completed step35)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed step16)))
  )
  ;; Step 17
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (completed step1)) (at start (completed step42)) (at start (completed step84)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed step17)))
  )
  ;; Step 18
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (completed step58)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed step18)))
  )
  ;; Step 19
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step19)) (at start (completed step57)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed step19)))
  )
  ;; Step 20
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed step20)))
  )
  ;; Step 21
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (completed step18)) (at start (completed step46)) (at start (completed step76)) (at start (completed step83)) (at start (completed step91)) (at start (completed step92)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed step21)))
  )
  ;; Step 22
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step22)) (at start (completed step12)) (at start (completed step51)) (at start (completed step71)) (at start (completed step91)) (at start (completed step95)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed step22)))
  )
  ;; Step 23
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step23)) (at start (completed step7)) (at start (completed step15)) (at start (completed step19)) (at start (completed step35)) (at start (completed step36)) (at start (completed step55)) (at start (completed step87)) (at start (completed step91)) (at start (completed step93)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed step23)))
  )
  ;; Step 24
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step24)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed step24)))
  )
  ;; Step 25
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (completed step58)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed step25)))
  )
  ;; Step 26
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (completed step35)) (at start (completed step86)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed step26)))
  )
  ;; Step 27
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed step27)))
  )
  ;; Step 28
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (completed step2)) (at start (completed step24)) (at start (completed step26)) (at start (completed step30)) (at start (completed step36)) (at start (completed step55)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed step28)))
  )
  ;; Step 29
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (completed step64)) (at start (completed step69)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed step29)))
  )
  ;; Step 30
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (completed step46)) (at start (completed step55)) (at start (completed step86)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed step30)))
  )
  ;; Step 31
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step31)) (at start (completed step1)) (at start (completed step15)) (at start (completed step37)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed step31)))
  )
  ;; Step 32
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step32)) (at start (completed step8)) (at start (completed step19)) (at start (completed step47)) (at start (completed step55)) (at start (completed step90)) (at start (completed step91)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed step32)))
  )
  ;; Step 33
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step33)) (at start (completed step8)) (at start (completed step20)) (at start (completed step36)) (at start (completed step57)) (at start (completed step77)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed step33)))
  )
  ;; Step 34
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step34)) (at start (completed step4)) (at start (completed step67)) (at start (completed step82)) (at start (completed step90)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed step34)))
  )
  ;; Step 35
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step35)) (at start (completed step84)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed step35)))
  )
  ;; Step 36
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step36)) (at start (completed step8)) (at start (completed step45)) (at start (completed step63)) (at start (completed step64)) (at start (completed step83)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed step36)))
  )
  ;; Step 37
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step37)) (at start (completed step30)) (at start (completed step69)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed step37)))
  )
  ;; Step 38
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (completed step7)) (at start (completed step52)) (at start (completed step54)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed step38)))
  )
  ;; Step 39
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step39)) (at start (completed step20)) (at start (completed step82)) (at start (completed step88)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed step39)))
  )
  ;; Step 40
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step40)) (at start (completed step4)) (at start (completed step35)) (at start (completed step85)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed step40)))
  )
  ;; Step 41
  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)) (at start (completed step24)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed step41)))
  )
  ;; Step 42
  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step42)) (at start (completed step13)) (at start (completed step46)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed step42)))
  )
  ;; Step 43
  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (completed step11)) (at start (completed step22)) (at start (completed step32)) (at start (completed step35)) (at start (completed step38)) (at start (completed step52)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed step43)))
  )
  ;; Step 44
  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step44)) (at start (completed step1)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed step44)))
  )
  ;; Step 45
  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (completed step24)) (at start (completed step26)) (at start (completed step67)) (at start (completed step84)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed step45)))
  )
  ;; Step 46
  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (completed step64)) (at start (completed step83)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed step46)))
  )
  ;; Step 47
  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step47)) (at start (completed step7)) (at start (completed step15)) (at start (completed step44)) (at start (completed step73)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed step47)))
  )
  ;; Step 48
  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step48)) (at start (completed step54)) (at start (completed step62)) (at start (completed step94)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed step48)))
  )
  ;; Step 49
  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step49)) (at start (completed step44)) (at start (completed step57)) (at start (completed step58)) (at start (completed step72)) (at start (completed step79)) (at start (completed step80)) (at start (completed step94)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed step49)))
  )
  ;; Step 50
  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (completed step6)) (at start (completed step96)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed step50)))
  )
  ;; Step 51
  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (completed step1)) (at start (completed step73)) (at start (completed step89)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed step51)))
  )
  ;; Step 52
  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step52)) (at start (completed step58)) (at start (completed step72)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed step52)))
  )
  ;; Step 53
  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step53)) (at start (completed step2)) (at start (completed step52)) (at start (completed step58)) (at start (completed step96)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed step53)))
  )
  ;; Step 54
  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step54)) (at start (completed step21)) (at start (completed step27)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed step54)))
  )
  ;; Step 55
  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed step55)))
  )
  ;; Step 56
  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step56)) (at start (completed step24)) (at start (completed step29)) (at start (completed step42)) (at start (completed step63)) (at start (completed step69)) (at start (completed step75)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed step56)))
  )
  ;; Step 57
  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step57)) (at start (completed step8)) (at start (completed step63)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed step57)))
  )
  ;; Step 58
  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step58)) (at start (completed step44)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed step58)))
  )
  ;; Step 59
  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step59)) (at start (completed step64)) (at start (completed step72)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed step59)))
  )
  ;; Step 60
  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step60)) (at start (completed step53)) (at start (completed step69)) (at start (completed step93)) (at start (completed step95)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed step60)))
  )
  ;; Step 61
  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step61)) (at start (completed step14)) (at start (completed step54)) (at start (completed step76)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (completed step61)))
  )
  ;; Step 62
  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step62)) (at start (completed step52)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (completed step62)))
  )
  ;; Step 63
  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step63)) (at start (completed step44)) (at start (completed step52)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (completed step63)))
  )
  ;; Step 64
  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step64)) (at start (completed step52)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (completed step64)))
  )
  ;; Step 65
  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step65)) (at start (completed step6)) (at start (completed step54)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (completed step65)))
  )
  ;; Step 66
  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step66)) (at start (completed step24)) (at start (completed step35)) (at start (completed step72)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (completed step66)))
  )
  ;; Step 67
  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (completed step67)))
  )
  ;; Step 68
  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step68)) (at start (completed step1)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (completed step68)))
  )
  ;; Step 69
  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step69)) (at start (completed step6)) (at start (completed step64)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (completed step69)))
  )
  ;; Step 70
  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (completed step2)) (at start (completed step15)) (at start (completed step34)) (at start (completed step40)) (at start (completed step52)) (at start (completed step56)) (at start (completed step83)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (completed step70)))
  )
  ;; Step 71
  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step71)) (at start (completed step35)) (at start (completed step50)) (at start (completed step87)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (completed step71)))
  )
  ;; Step 72
  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 864000)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (completed step72)))
  )
  ;; Step 73
  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step73)) (at start (completed step20)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (completed step73)))
  )
  ;; Step 74
  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step74)) (at start (completed step2)) (at start (completed step20)) (at start (completed step67)) (at start (completed step83)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (completed step74)))
  )
  ;; Step 75
  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step75)) (at start (completed step76)) (at start (completed step86)) (at start (completed step92)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (completed step75)))
  )
  ;; Step 76
  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step76)) (at start (completed step35)) (at start (completed step92)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (completed step76)))
  )
  ;; Step 77
  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step77)) (at start (completed step26)) (at start (completed step59)) (at start (completed step60)) (at start (completed step69)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (completed step77)))
  )
  ;; Step 78
  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step78)) (at start (completed step30)) (at start (completed step39)) (at start (completed step51)) (at start (completed step52)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (completed step78)))
  )
  ;; Step 79
  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step79)) (at start (completed step27)) (at start (completed step76)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (completed step79)))
  )
  ;; Step 80
  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step80)) (at start (completed step13)) (at start (completed step25)) (at start (completed step42)) (at start (completed step48)) (at start (completed step75)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (completed step80)))
  )
  ;; Step 81
  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step81)) (at start (completed step2)) (at start (completed step17)) (at start (completed step39)) (at start (completed step41)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (completed step81)))
  )
  ;; Step 82
  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step82)) (at start (completed step18)) (at start (completed step51)) (at start (completed step79)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (completed step82)))
  )
  ;; Step 83
  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (completed step1)) (at start (completed step25)) (at start (completed step35)) (at start (completed step52)) (at start (completed step86)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (completed step83)))
  )
  ;; Step 84
  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step84))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (completed step84)))
  )
  ;; Step 85
  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step85)) (at start (completed step72)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (completed step85)))
  )
  ;; Step 86
  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step86)) (at start (completed step95)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (completed step86)))
  )
  ;; Step 87
  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step87)) (at start (completed step95)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (completed step87)))
  )
  ;; Step 88
  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step88)) (at start (completed step27)) (at start (completed step62)) (at start (completed step79)) (at start (completed step91)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (completed step88)))
  )
  ;; Step 89
  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step89)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (completed step89)))
  )
  ;; Step 90
  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step90)) (at start (completed step36)) (at start (completed step45)) (at start (completed step63)) (at start (completed step96)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (completed step90)))
  )
  ;; Step 91
  (:durative-action do_step91
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step91)) (at start (completed step72)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (completed step91)))
  )
  ;; Step 92
  (:durative-action do_step92
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step92)) (at start (completed step44)) (at start (completed step63)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (completed step92)))
  )
  ;; Step 93
  (:durative-action do_step93
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step93)) (at start (completed step1)) (at start (completed step67)) (at start (completed step88)) (at start (completed step97)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (completed step93)))
  )
  ;; Step 94
  (:durative-action do_step94
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step94)) (at start (completed step16)) (at start (completed step26)) (at start (completed step50)) (at start (completed step62)) (at start (completed step96)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (completed step94)))
  )
  ;; Step 95
  (:durative-action do_step95
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step95))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (completed step95)))
  )
  ;; Step 96
  (:durative-action do_step96
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step96)) (at start (completed step63)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (completed step96)))
  )
  ;; Step 97
  (:durative-action do_step97
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step97)) (at start (completed step13)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (completed step97)))
  )
  ;; Step 98
  (:durative-action do_step98
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (completed step98)))
  )
  ;; Step 99
  (:durative-action do_step99
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step99)) (at start (completed step37)) (at start (completed step94)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (completed step99)))
  )
  ;; Step 100
  (:durative-action do_step100
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step100)) (at start (completed step11)) (at start (completed step14)) (at start (completed step51)) (at start (completed step61)) (at start (completed step74)) (at start (completed step98)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (completed step100)))
  )
)