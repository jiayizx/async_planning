(define (domain grease-cleanup)
 (:requirements :durative-actions :typing)
 (:types step)
 (:constants step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 step61 step62 step63 step64 step65 step66 step67 step68 step69 step70 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
  (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
  (c21) (c22) (c23) (c24) (c25) (c26) (c27) (c28) (c29) (c30)
  (c31) (c32) (c33) (c34) (c35) (c36) (c37) (c38) (c39) (c40)
  (c41) (c42) (c43) (c44) (c45) (c46) (c47) (c48) (c49) (c50)
  (c51) (c52) (c53) (c54) (c55) (c56) (c57) (c58) (c59) (c60)
  (c61) (c62) (c63) (c64) (c65) (c66) (c67) (c68) (c69) (c70))

 (:durative-action step-1
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step1)) (at start (c64)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (c1))))
 (:durative-action step-2
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step2)) (at start (c25)) (at start (c63)) (at start (c66)))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (c2))))
 (:durative-action step-3
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step3)) (at start (c7)) (at start (c15)) (at start (c18)))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (c3))))
 (:durative-action step-4
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step4)) (at start (c18)) (at start (c31)) (at start (c65)))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (c4))))
 (:durative-action step-5
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step5))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (c5))))
 (:durative-action step-6
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step6))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (c6))))
 (:durative-action step-7
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step7))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (c7))))
 (:durative-action step-8
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step8)) (at start (c49)) (at start (c61)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (c8))))
 (:durative-action step-9
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step9)) (at start (c11)))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (c9))))
 (:durative-action step-10
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step10)) (at start (c3)) (at start (c47)))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (c10))))
 (:durative-action step-11
  :parameters () :duration (= ?duration 360)
  :condition (and (at start (step_pending step11)) (at start (c6)) (at start (c27)) (at start (c55)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (c11))))
 (:durative-action step-12
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step12)) (at start (c58)))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (c12))))
 (:durative-action step-13
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step13)) (at start (c20)) (at start (c66)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (c13))))
 (:durative-action step-14
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step14)) (at start (c42)) (at start (c61)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (c14))))
 (:durative-action step-15
  :parameters () :duration (= ?duration 420)
  :condition (at start (step_pending step15))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (c15))))
 (:durative-action step-16
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step16)) (at start (c30)) (at start (c46)) (at start (c52)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (c16))))
 (:durative-action step-17
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step17)) (at start (c16)) (at start (c27)) (at start (c29)) (at start (c40)) (at start (c53)) (at start (c54)) (at start (c58)))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (c17))))
 (:durative-action step-18
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step18)) (at start (c29)) (at start (c61)))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (c18))))
 (:durative-action step-19
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step19)) (at start (c25)) (at start (c28)) (at start (c29)) (at start (c52)))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (c19))))
 (:durative-action step-20
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step20)) (at start (c46)))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (c20))))
 (:durative-action step-21
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step21)) (at start (c66)))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (c21))))
 (:durative-action step-22
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step22)) (at start (c55)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (c22))))
 (:durative-action step-23
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step23)) (at start (c37)))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (c23))))
 (:durative-action step-24
  :parameters () :duration (= ?duration 1500)
  :condition (and (at start (step_pending step24)) (at start (c10)) (at start (c65)) (at start (c70)))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (c24))))
 (:durative-action step-25
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step25)) (at start (c21)))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (c25))))
 (:durative-action step-26
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step26)) (at start (c28)))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (c26))))
 (:durative-action step-27
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step27))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (c27))))
 (:durative-action step-28
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step28)) (at start (c2)) (at start (c4)) (at start (c55)) (at start (c57)))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (c28))))
 (:durative-action step-29
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step29)) (at start (c22)) (at start (c63)) (at start (c67)))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (c29))))
 (:durative-action step-30
  :parameters () :duration (= ?duration 180)
  :condition (at start (step_pending step30))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (c30))))
 (:durative-action step-31
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step31))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (c31))))
 (:durative-action step-32
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step32)) (at start (c1)) (at start (c27)) (at start (c38)) (at start (c61)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (c32))))
 (:durative-action step-33
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step33)) (at start (c1)) (at start (c47)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (c33))))
 (:durative-action step-34
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step34)) (at start (c15)) (at start (c36)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (c34))))
 (:durative-action step-35
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step35)) (at start (c8)) (at start (c55)))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (c35))))
 (:durative-action step-36
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step36)) (at start (c50)) (at start (c55)) (at start (c59)) (at start (c61)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (c36))))
 (:durative-action step-37
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step37)) (at start (c39)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (c37))))
 (:durative-action step-38
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step38)) (at start (c12)) (at start (c24)) (at start (c25)) (at start (c44)) (at start (c55)))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (c38))))
 (:durative-action step-39
  :parameters () :duration (= ?duration 360)
  :condition (and (at start (step_pending step39)) (at start (c31)) (at start (c61)))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (c39))))
 (:durative-action step-40
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step40)) (at start (c5)) (at start (c9)) (at start (c25)) (at start (c55)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (c40))))
 (:durative-action step-41
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step41)) (at start (c26)))
  :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (c41))))
 (:durative-action step-42
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step42)) (at start (c20)) (at start (c63)))
  :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (c42))))
 (:durative-action step-43
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step43))
  :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (c43))))
 (:durative-action step-44
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step44)) (at start (c7)))
  :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (c44))))
 (:durative-action step-45
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step45)) (at start (c1)) (at start (c13)) (at start (c15)) (at start (c19)) (at start (c24)) (at start (c25)) (at start (c35)) (at start (c37)) (at start (c38)) (at start (c59)))
  :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (c45))))
 (:durative-action step-46
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step46)) (at start (c54)))
  :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (c46))))
 (:durative-action step-47
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step47)) (at start (c55)))
  :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (c47))))
 (:durative-action step-48
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step48)) (at start (c6)) (at start (c60)))
  :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (c48))))
 (:durative-action step-49
  :parameters () :duration (= ?duration 240)
  :condition (at start (step_pending step49))
  :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (c49))))
 (:durative-action step-50
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step50))
  :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (c50))))
 (:durative-action step-51
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step51)) (at start (c20)) (at start (c31)) (at start (c33)) (at start (c48)))
  :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (c51))))
 (:durative-action step-52
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step52)) (at start (c18)))
  :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (c52))))
 (:durative-action step-53
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step53)) (at start (c40)))
  :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (c53))))
 (:durative-action step-54
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step54)) (at start (c61)))
  :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (c54))))
 (:durative-action step-55
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step55)) (at start (c67)))
  :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (c55))))
 (:durative-action step-56
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step56)) (at start (c20)) (at start (c57)))
  :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (c56))))
 (:durative-action step-57
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step57)) (at start (c39)))
  :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (c57))))
 (:durative-action step-58
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step58)) (at start (c30)))
  :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (c58))))
 (:durative-action step-59
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step59)) (at start (c6)) (at start (c24)))
  :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (c59))))
 (:durative-action step-60
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step60)) (at start (c43)) (at start (c46)) (at start (c63)))
  :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (c60))))
 (:durative-action step-61
  :parameters () :duration (= ?duration 900)
  :condition (at start (step_pending step61))
  :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (c61))))
 (:durative-action step-62
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step62)) (at start (c7)) (at start (c21)) (at start (c44)) (at start (c70)))
  :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (c62))))
 (:durative-action step-63
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step63)) (at start (c31)))
  :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (c63))))
 (:durative-action step-64
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step64)) (at start (c22)))
  :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (c64))))
 (:durative-action step-65
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step65)) (at start (c33)) (at start (c61)))
  :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (c65))))
 (:durative-action step-66
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step66)) (at start (c5)) (at start (c29)) (at start (c54)))
  :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (c66))))
 (:durative-action step-67
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step67))
  :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (c67))))
 (:durative-action step-68
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step68)) (at start (c1)) (at start (c44)))
  :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (c68))))
 (:durative-action step-69
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step69)) (at start (c24)) (at start (c29)) (at start (c62)))
  :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (c69))))
 (:durative-action step-70
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step70)) (at start (c6)))
  :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (c70))))
)