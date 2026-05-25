(define (domain fishing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))

  (:durative-action do_step_1
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (step_done step6)) (at start (step_done step14)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))

  (:durative-action do_step_2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step29)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))

  (:durative-action do_step_3
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))

  (:durative-action do_step_4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (step_done step20)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))

  (:durative-action do_step_5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step_done step6)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))

  (:durative-action do_step_6
    :duration (= ?duration 900)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))

  (:durative-action do_step_7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step49)) (at start (step_done step55)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))

  (:durative-action do_step_8
    :duration (= ?duration 1800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))

  (:durative-action do_step_9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))

  (:durative-action do_step_10
    :duration (= ?duration 600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))

  (:durative-action do_step_11
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step11)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))

  (:durative-action do_step_12
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step12)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))

  (:durative-action do_step_13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step10)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step53)) (at start (step_done step55)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))

  (:durative-action do_step_14
    :duration (= ?duration 600)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))

  (:durative-action do_step_15
    :duration (= ?duration 1200)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))

  (:durative-action do_step_16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (step_done step4)) (at start (step_done step20)) (at start (step_done step43)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))

  (:durative-action do_step_17
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step55)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))

  (:durative-action do_step_18
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step18)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step51)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step67)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))

  (:durative-action do_step_19
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (step_done step20)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))

  (:durative-action do_step_20
    :duration (= ?duration 1200)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))

  (:durative-action do_step_21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step23)) (at start (step_done step27)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step31)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)) (at start (step_done step41)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step46)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step51)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step66)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))

  (:durative-action do_step_22
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))

  (:durative-action do_step_23
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step27)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step31)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step46)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step66)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))

  (:durative-action do_step_24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))

  (:durative-action do_step_25
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step25)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))

  (:durative-action do_step_26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))

  (:durative-action do_step_27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step15)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step39)) (at start (step_done step40)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))

  (:durative-action do_step_28
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step28)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step29)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))

  (:durative-action do_step_29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))

  (:durative-action do_step_30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step27)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step31)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step66)) (at start (step_done step67)) (at start (step_done step68)) (at start (step_done step70)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))

  (:durative-action do_step_31
    :duration (= ?duration 600)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31))))

  (:durative-action do_step_32
    :duration (= ?duration 900)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32))))

  (:durative-action do_step_33
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step33)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step49)) (at start (step_done step51)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33))))

  (:durative-action do_step_34
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step34)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34))))

  (:durative-action do_step_35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35))))

  (:durative-action do_step_36
    :duration (= ?duration 600)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36))))

  (:durative-action do_step_37
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step37)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37))))

  (:durative-action do_step_38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38))))

  (:durative-action do_step_39
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39))))

  (:durative-action do_step_40
    :duration (= ?duration 300)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40))))

  (:durative-action do_step_41
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step41)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step51)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41))))

  (:durative-action do_step_42
    :duration (= ?duration 900)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42))))

  (:durative-action do_step_43
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step43)) (at start (step_done step4)) (at start (step_done step20)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43))))

  (:durative-action do_step_44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44))))

  (:durative-action do_step_45
    :duration (= ?duration 1200)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45))))

  (:durative-action do_step_46
    :duration (= ?duration 120)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46))))

  (:durative-action do_step_47
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step43)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47))))

  (:durative-action do_step_48
    :duration (= ?duration 900)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48))))

  (:durative-action do_step_49
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49))))

  (:durative-action do_step_50
    :duration (= ?duration 600)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50))))

  (:durative-action do_step_51
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step51)) (at start (step_done step8)) (at start (step_done step15)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51))))

  (:durative-action do_step_52
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step52)) (at start (step_done step14)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52))))

  (:durative-action do_step_53
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step53)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step55)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53))))

  (:durative-action do_step_54
    :duration (= ?duration 1200)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54))))

  (:durative-action do_step_55
    :duration (= ?duration 2400)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55))))

  (:durative-action do_step_56
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step56)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step11)) (at start (step_done step20)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step46)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56))))

  (:durative-action do_step_57
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step57)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step51)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step69)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57))))

  (:durative-action do_step_58
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step58)) (at start (step_done step20)) (at start (step_done step54)) (at start (step_done step65)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58))))

  (:durative-action do_step_59
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step59)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step15)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59))))

  (:durative-action do_step_60
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step60)) (at start (step_done step32)) (at start (step_done step36)) (at start (step_done step45)) (at start (step_done step50)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60))))

  (:durative-action do_step_61
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step61)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61))))

  (:durative-action do_step_62
    :duration (= ?duration 3600)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62))))

  (:durative-action do_step_63
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step63)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step13)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step48)) (at start (step_done step49)) (at start (step_done step50)) (at start (step_done step51)) (at start (step_done step53)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step61)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63))))

  (:durative-action do_step_64
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step64)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64))))

  (:durative-action do_step_65
    :duration (= ?duration 900)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65))))

  (:durative-action do_step_66
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step66)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step31)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66))))

  (:durative-action do_step_67
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step67)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67))))

  (:durative-action do_step_68
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step68)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68))))

  (:durative-action do_step_69
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step69)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step20)) (at start (step_done step34)) (at start (step_done step38)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step47)) (at start (step_done step55)) (at start (step_done step62)) (at start (step_done step64)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69))))

  (:durative-action do_step_70
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step14)) (at start (step_done step15)) (at start (step_done step16)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step42)) (at start (step_done step43)) (at start (step_done step44)) (at start (step_done step47)) (at start (step_done step54)) (at start (step_done step55)) (at start (step_done step59)) (at start (step_done step62)) (at start (step_done step64)) (at start (step_done step68)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70))))
)