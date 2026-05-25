(define (domain boat_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (semantic_done ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (pending step1))
    :effect (and (at start (not (pending step1))) (at end (semantic_done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (pending step2)) (at start (semantic_done step18)) (at start (semantic_done step48)))
    :effect (and (at start (not (pending step2))) (at end (semantic_done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (at start (pending step3))
    :effect (and (at start (not (pending step3))) (at end (semantic_done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 172800)
    :condition (at start (pending step4))
    :effect (and (at start (not (pending step4))) (at end (semantic_done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (at start (pending step5))
    :effect (and (at start (not (pending step5))) (at end (semantic_done step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (pending step6)) (at start (semantic_done step15)) (at start (semantic_done step21)) (at start (semantic_done step63)))
    :effect (and (at start (not (pending step6))) (at end (semantic_done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (and (at start (pending step7)) (at start (semantic_done step10)) (at start (semantic_done step12)))
    :effect (and (at start (not (pending step7))) (at end (semantic_done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (pending step8)) (at start (semantic_done step17)))
    :effect (and (at start (not (pending step8))) (at end (semantic_done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (and (at start (pending step9)) (at start (semantic_done step3)))
    :effect (and (at start (not (pending step9))) (at end (semantic_done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (and (at start (pending step10)) (at start (semantic_done step8)))
    :effect (and (at start (not (pending step10))) (at end (semantic_done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 28800)
    :condition (at start (pending step11))
    :effect (and (at start (not (pending step11))) (at end (semantic_done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 120)
    :condition (and (at start (pending step12)) (at start (semantic_done step36)) (at start (semantic_done step51)) (at start (semantic_done step66)))
    :effect (and (at start (not (pending step12))) (at end (semantic_done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (and (at start (pending step13)) (at start (semantic_done step8)) (at start (semantic_done step34)) (at start (semantic_done step50)) (at start (semantic_done step53)))
    :effect (and (at start (not (pending step13))) (at end (semantic_done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 2700)
    :condition (and (at start (pending step14)) (at start (semantic_done step9)))
    :effect (and (at start (not (pending step14))) (at end (semantic_done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 1200)
    :condition (at start (pending step15))
    :effect (and (at start (not (pending step15))) (at end (semantic_done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (and (at start (pending step16)) (at start (semantic_done step21)))
    :effect (and (at start (not (pending step16))) (at end (semantic_done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (and (at start (pending step17)) (at start (semantic_done step1)) (at start (semantic_done step47)))
    :effect (and (at start (not (pending step17))) (at end (semantic_done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (and (at start (pending step18)) (at start (semantic_done step28)) (at start (semantic_done step55)) (at start (semantic_done step63)))
    :effect (and (at start (not (pending step18))) (at end (semantic_done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (pending step19)) (at start (semantic_done step2)) (at start (semantic_done step9)) (at start (semantic_done step51)) (at start (semantic_done step55)) (at start (semantic_done step57)))
    :effect (and (at start (not (pending step19))) (at end (semantic_done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (pending step20)) (at start (semantic_done step12)) (at start (semantic_done step61)))
    :effect (and (at start (not (pending step20))) (at end (semantic_done step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (at start (pending step21))
    :effect (and (at start (not (pending step21))) (at end (semantic_done step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 300)
    :condition (and (at start (pending step22)) (at start (semantic_done step9)) (at start (semantic_done step52)))
    :effect (and (at start (not (pending step22))) (at end (semantic_done step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (and (at start (pending step23)) (at start (semantic_done step10)) (at start (semantic_done step46)))
    :effect (and (at start (not (pending step23))) (at end (semantic_done step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (and (at start (pending step24)) (at start (semantic_done step11)) (at start (semantic_done step14)))
    :effect (and (at start (not (pending step24))) (at end (semantic_done step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 900)
    :condition (and (at start (pending step25)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step25))) (at end (semantic_done step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 2400)
    :condition (and (at start (pending step26)) (at start (semantic_done step21)) (at start (semantic_done step29)) (at start (semantic_done step51)))
    :effect (and (at start (not (pending step26))) (at end (semantic_done step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (pending step27)) (at start (semantic_done step16)) (at start (semantic_done step37)) (at start (semantic_done step44)))
    :effect (and (at start (not (pending step27))) (at end (semantic_done step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 1200)
    :condition (and (at start (pending step28)) (at start (semantic_done step33)))
    :effect (and (at start (not (pending step28))) (at end (semantic_done step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 900)
    :condition (and (at start (pending step29)) (at start (semantic_done step47)))
    :effect (and (at start (not (pending step29))) (at end (semantic_done step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (and (at start (pending step30)) (at start (semantic_done step10)) (at start (semantic_done step11)) (at start (semantic_done step25)) (at start (semantic_done step36)) (at start (semantic_done step54)) (at start (semantic_done step61)) (at start (semantic_done step62)))
    :effect (and (at start (not (pending step30))) (at end (semantic_done step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 1800)
    :condition (and (at start (pending step31)) (at start (semantic_done step52)))
    :effect (and (at start (not (pending step31))) (at end (semantic_done step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 300)
    :condition (and (at start (pending step32)) (at start (semantic_done step19)))
    :effect (and (at start (not (pending step32))) (at end (semantic_done step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 3600)
    :condition (at start (pending step33))
    :effect (and (at start (not (pending step33))) (at end (semantic_done step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 300)
    :condition (and (at start (pending step34)) (at start (semantic_done step18)) (at start (semantic_done step44)) (at start (semantic_done step66)))
    :effect (and (at start (not (pending step34))) (at end (semantic_done step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 600)
    :condition (and (at start (pending step35)) (at start (semantic_done step5)) (at start (semantic_done step17)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step35))) (at end (semantic_done step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 600)
    :condition (and (at start (pending step36)) (at start (semantic_done step47)))
    :effect (and (at start (not (pending step36))) (at end (semantic_done step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (pending step37)) (at start (semantic_done step8)) (at start (semantic_done step15)) (at start (semantic_done step34)) (at start (semantic_done step44)))
    :effect (and (at start (not (pending step37))) (at end (semantic_done step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (pending step38)) (at start (semantic_done step31)) (at start (semantic_done step52)) (at start (semantic_done step70)))
    :effect (and (at start (not (pending step38))) (at end (semantic_done step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 300)
    :condition (and (at start (pending step39)) (at start (semantic_done step29)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step39))) (at end (semantic_done step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 120)
    :condition (and (at start (pending step40)) (at start (semantic_done step34)) (at start (semantic_done step39)))
    :effect (and (at start (not (pending step40))) (at end (semantic_done step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 900)
    :condition (and (at start (pending step41)) (at start (semantic_done step3)) (at start (semantic_done step39)) (at start (semantic_done step60)))
    :effect (and (at start (not (pending step41))) (at end (semantic_done step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 600)
    :condition (and (at start (pending step42)) (at start (semantic_done step7)) (at start (semantic_done step31)) (at start (semantic_done step38)) (at start (semantic_done step49)) (at start (semantic_done step50)) (at start (semantic_done step52)))
    :effect (and (at start (not (pending step42))) (at end (semantic_done step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 900)
    :condition (and (at start (pending step43)) (at start (semantic_done step19)) (at start (semantic_done step22)) (at start (semantic_done step27)) (at start (semantic_done step50)) (at start (semantic_done step62)) (at start (semantic_done step63)))
    :effect (and (at start (not (pending step43))) (at end (semantic_done step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 1800)
    :condition (and (at start (pending step44)) (at start (semantic_done step2)))
    :effect (and (at start (not (pending step44))) (at end (semantic_done step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 300)
    :condition (and (at start (pending step45)) (at start (semantic_done step3)) (at start (semantic_done step38)) (at start (semantic_done step44)) (at start (semantic_done step66)))
    :effect (and (at start (not (pending step45))) (at end (semantic_done step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 60)
    :condition (at start (pending step46))
    :effect (and (at start (not (pending step46))) (at end (semantic_done step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (pending step47)) (at start (semantic_done step1)) (at start (semantic_done step3)))
    :effect (and (at start (not (pending step47))) (at end (semantic_done step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 1200)
    :condition (and (at start (pending step48)) (at start (semantic_done step25)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step48))) (at end (semantic_done step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (at start (pending step49))
    :effect (and (at start (not (pending step49))) (at end (semantic_done step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (pending step50)) (at start (semantic_done step65)))
    :effect (and (at start (not (pending step50))) (at end (semantic_done step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 600)
    :condition (and (at start (pending step51)) (at start (semantic_done step15)))
    :effect (and (at start (not (pending step51))) (at end (semantic_done step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 1200)
    :condition (at start (pending step52))
    :effect (and (at start (not (pending step52))) (at end (semantic_done step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (pending step53)) (at start (semantic_done step29)) (at start (semantic_done step33)))
    :effect (and (at start (not (pending step53))) (at end (semantic_done step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (pending step54)) (at start (semantic_done step26)))
    :effect (and (at start (not (pending step54))) (at end (semantic_done step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 300)
    :condition (and (at start (pending step55)) (at start (semantic_done step5)) (at start (semantic_done step33)) (at start (semantic_done step48)) (at start (semantic_done step52)))
    :effect (and (at start (not (pending step55))) (at end (semantic_done step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 900)
    :condition (and (at start (pending step56)) (at start (semantic_done step2)) (at start (semantic_done step18)))
    :effect (and (at start (not (pending step56))) (at end (semantic_done step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 300)
    :condition (and (at start (pending step57)) (at start (semantic_done step3)) (at start (semantic_done step18)) (at start (semantic_done step22)))
    :effect (and (at start (not (pending step57))) (at end (semantic_done step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (pending step58)) (at start (semantic_done step13)) (at start (semantic_done step68)))
    :effect (and (at start (not (pending step58))) (at end (semantic_done step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 1200)
    :condition (and (at start (pending step59)) (at start (semantic_done step33)) (at start (semantic_done step51)))
    :effect (and (at start (not (pending step59))) (at end (semantic_done step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 300)
    :condition (and (at start (pending step60)) (at start (semantic_done step3)) (at start (semantic_done step4)) (at start (semantic_done step7)) (at start (semantic_done step34)) (at start (semantic_done step54)) (at start (semantic_done step65)))
    :effect (and (at start (not (pending step60))) (at end (semantic_done step60)))
  )
  (:durative-action do_step61
    :duration (= ?duration 900)
    :condition (and (at start (pending step61)) (at start (semantic_done step1)) (at start (semantic_done step7)) (at start (semantic_done step32)))
    :effect (and (at start (not (pending step61))) (at end (semantic_done step61)))
  )
  (:durative-action do_step62
    :duration (= ?duration 300)
    :condition (and (at start (pending step62)) (at start (semantic_done step10)))
    :effect (and (at start (not (pending step62))) (at end (semantic_done step62)))
  )
  (:durative-action do_step63
    :duration (= ?duration 600)
    :condition (at start (pending step63))
    :effect (and (at start (not (pending step63))) (at end (semantic_done step63)))
  )
  (:durative-action do_step64
    :duration (= ?duration 2700)
    :condition (and (at start (pending step64)) (at start (semantic_done step16)) (at start (semantic_done step33)))
    :effect (and (at start (not (pending step64))) (at end (semantic_done step64)))
  )
  (:durative-action do_step65
    :duration (= ?duration 600)
    :condition (and (at start (pending step65)) (at start (semantic_done step31)))
    :effect (and (at start (not (pending step65))) (at end (semantic_done step65)))
  )
  (:durative-action do_step66
    :duration (= ?duration 600)
    :condition (and (at start (pending step66)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step66))) (at end (semantic_done step66)))
  )
  (:durative-action do_step67
    :duration (= ?duration 1800)
    :condition (at start (pending step67))
    :effect (and (at start (not (pending step67))) (at end (semantic_done step67)))
  )
  (:durative-action do_step68
    :duration (= ?duration 300)
    :condition (and (at start (pending step68)) (at start (semantic_done step5)) (at start (semantic_done step15)))
    :effect (and (at start (not (pending step68))) (at end (semantic_done step68)))
  )
  (:durative-action do_step69
    :duration (= ?duration 3600)
    :condition (and (at start (pending step69)) (at start (semantic_done step18)) (at start (semantic_done step49)))
    :effect (and (at start (not (pending step69))) (at end (semantic_done step69)))
  )
  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (pending step70)) (at start (semantic_done step33)) (at start (semantic_done step50)) (at start (semantic_done step67)))
    :effect (and (at start (not (pending step70))) (at end (semantic_done step70)))
  )
)