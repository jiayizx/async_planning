(define (domain bookclub-start)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
    step81 step82 step83 step84 step85 step86 step87 step88 step89 step90 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-1) (done-2) (done-3) (done-4) (done-5) (done-6) (done-7) (done-8) (done-9) (done-10)
    (done-11) (done-12) (done-13) (done-14) (done-15) (done-16) (done-17) (done-18) (done-19) (done-20)
    (done-21) (done-22) (done-23) (done-24) (done-25) (done-26) (done-27) (done-28) (done-29) (done-30)
    (done-31) (done-32) (done-33) (done-34) (done-35) (done-36) (done-37) (done-38) (done-39) (done-40)
    (done-41) (done-42) (done-43) (done-44) (done-45) (done-46) (done-47) (done-48) (done-49) (done-50)
    (done-51) (done-52) (done-53) (done-54) (done-55) (done-56) (done-57) (done-58) (done-59) (done-60)
    (done-61) (done-62) (done-63) (done-64) (done-65) (done-66) (done-67) (done-68) (done-69) (done-70)
    (done-71) (done-72) (done-73) (done-74) (done-75) (done-76) (done-77) (done-78) (done-79) (done-80)
    (done-81) (done-82) (done-83) (done-84) (done-85) (done-86) (done-87) (done-88) (done-89) (done-90)
  )

  ;; One durative-action per step. Actions are parameterless and operate on the
  ;; corresponding named step constant. This guarantees exactly one grounding
  ;; per step action (no cross-product with all step objects).

  (:durative-action do-step-1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (done-16)) (at start (done-34)) (at start (done-44)) (at start (done-67)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-1)))
  )

  (:durative-action do-step-2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (done-8)) (at start (done-36)) (at start (done-45)) (at start (done-51)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-2)))
  )

  (:durative-action do-step-3
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (done-26)) (at start (done-81)) (at start (done-83)) (at start (done-84)) (at start (done-85)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-3)))
  )

  (:durative-action do-step-4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (done-29)) (at start (done-30)) (at start (done-34)) (at start (done-90)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-4)))
  )

  (:durative-action do-step-5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (done-7)) (at start (done-19)) (at start (done-76)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-5)))
  )

  (:durative-action do-step-6
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step6)) (at start (done-10)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-6)))
  )

  (:durative-action do-step-7
    :duration (= ?duration 7200)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-7)))
  )

  (:durative-action do-step-8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (done-44)) (at start (done-72)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-8)))
  )

  (:durative-action do-step-9
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step9)) (at start (done-31)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-9)))
  )

  (:durative-action do-step-10
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step10)) (at start (done-66)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-10)))
  )

  (:durative-action do-step-11
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step11)) (at start (done-40)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-11)))
  )

  (:durative-action do-step-12
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step12)) (at start (done-7)) (at start (done-11)) (at start (done-34)) (at start (done-73)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-12)))
  )

  (:durative-action do-step-13
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (done-7)) (at start (done-44)) (at start (done-60)) (at start (done-74)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-13)))
  )

  (:durative-action do-step-14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (done-22)) (at start (done-62)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-14)))
  )

  (:durative-action do-step-15
    :duration (= ?duration 172800)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-15)))
  )

  (:durative-action do-step-16
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step16)) (at start (done-51)) (at start (done-86)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-16)))
  )

  (:durative-action do-step-17
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step17)) (at start (done-43)) (at start (done-67)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-17)))
  )

  (:durative-action do-step-18
    :duration (= ?duration 18000)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-18)))
  )

  (:durative-action do-step-19
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step19)) (at start (done-9)) (at start (done-15)) (at start (done-31)) (at start (done-43)) (at start (done-76)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-19)))
  )

  (:durative-action do-step-20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done-12)) (at start (done-17)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-20)))
  )

  (:durative-action do-step-21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (done-8)) (at start (done-36)) (at start (done-50)) (at start (done-64)) (at start (done-82)) (at start (done-90)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-21)))
  )

  (:durative-action do-step-22
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step22)) (at start (done-26)) (at start (done-68)) (at start (done-81)) (at start (done-83)) (at start (done-88)) (at start (done-34)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-22)))
  )

  (:durative-action do-step-23
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step23)) (at start (done-8)) (at start (done-19)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-23)))
  )

  (:durative-action do-step-24
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step24)) (at start (done-53)) (at start (done-65)) (at start (done-67)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-24)))
  )

  (:durative-action do-step-25
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step25)) (at start (done-20)) (at start (done-33)) (at start (done-54)) (at start (done-70)) (at start (done-83)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-25)))
  )

  (:durative-action do-step-26
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step26)) (at start (done-43)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-26)))
  )

  (:durative-action do-step-27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (done-9)) (at start (done-18)) (at start (done-31)) (at start (done-43)) (at start (done-64)) (at start (done-67)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-27)))
  )

  (:durative-action do-step-28
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step28)) (at start (done-1)) (at start (done-6)) (at start (done-34)) (at start (done-84)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-28)))
  )

  (:durative-action do-step-29
    :duration (= ?duration 7200)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-29)))
  )

  (:durative-action do-step-30
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (done-36)) (at start (done-44)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-30)))
  )

  (:durative-action do-step-31
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (done-46)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-31)))
  )

  (:durative-action do-step-32
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step32)) (at start (done-73)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-32)))
  )

  (:durative-action do-step-33
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step33)) (at start (done-31)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-33)))
  )

  (:durative-action do-step-34
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step34)) (at start (done-67)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-34)))
  )

  (:durative-action do-step-35
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (done-9)) (at start (done-12)) (at start (done-18)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-35)))
  )

  (:durative-action do-step-36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (done-86)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-36)))
  )

  (:durative-action do-step-37
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (done-29)) (at start (done-70)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-37)))
  )

  (:durative-action do-step-38
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (done-15)) (at start (done-18)) (at start (done-46)) (at start (done-68)) (at start (done-83)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-38)))
  )

  (:durative-action do-step-39
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step39)) (at start (done-46)) (at start (done-66)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-39)))
  )

  (:durative-action do-step-40
    :duration (= ?duration 1800)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-40)))
  )

  (:durative-action do-step-41
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step41)) (at start (done-48)) (at start (done-88)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-41)))
  )

  (:durative-action do-step-42
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (done-36)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-42)))
  )

  (:durative-action do-step-43
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step43)) (at start (done-79)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-43)))
  )

  (:durative-action do-step-44
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step44)) (at start (done-60)) (at start (done-72)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-44)))
  )

  (:durative-action do-step-45
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (done-34)) (at start (done-36)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-45)))
  )

  (:durative-action do-step-46
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step46)) (at start (done-7)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-46)))
  )

  (:durative-action do-step-47
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step47)) (at start (done-42)) (at start (done-66)) (at start (done-72)) (at start (done-76)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-47)))
  )

  (:durative-action do-step-48
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step48)) (at start (done-72)) (at start (done-88)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-48)))
  )

  (:durative-action do-step-49
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step49)) (at start (done-28)) (at start (done-43)) (at start (done-45)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-49)))
  )

  (:durative-action do-step-50
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step50)) (at start (done-23)) (at start (done-45)) (at start (done-64)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-50)))
  )

  (:durative-action do-step-51
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (done-9)) (at start (done-65)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-51)))
  )

  (:durative-action do-step-52
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step52)) (at start (done-10)) (at start (done-77)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-52)))
  )

  (:durative-action do-step-53
    :duration (= ?duration 7200)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-53)))
  )

  (:durative-action do-step-54
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (done-20)) (at start (done-26)) (at start (done-29)) (at start (done-33)) (at start (done-36)) (at start (done-46)) (at start (done-68)) (at start (done-71)) (at start (done-73)) (at start (done-83)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-54)))
  )

  (:durative-action do-step-55
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step55)) (at start (done-44)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-55)))
  )

  (:durative-action do-step-56
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step56)) (at start (done-73)) (at start (done-74)) (at start (done-82)) (at start (done-87)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-56)))
  )

  (:durative-action do-step-57
    :duration (= ?duration 10800)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-57)))
  )

  (:durative-action do-step-58
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (done-3)) (at start (done-18)) (at start (done-21)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-58)))
  )

  (:durative-action do-step-59
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step59)) (at start (done-20)) (at start (done-31)) (at start (done-42)) (at start (done-50)) (at start (done-71)) (at start (done-82)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-59)))
  )

  (:durative-action do-step-60
    :duration (= ?duration 1800)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-60)))
  )

  (:durative-action do-step-61
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step61)) (at start (done-63)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done-61)))
  )

  (:durative-action do-step-62
    :duration (= ?duration 7200)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done-62)))
  )

  (:durative-action do-step-63
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step63)) (at start (done-10)) (at start (done-12)) (at start (done-23)) (at start (done-34)) (at start (done-35)) (at start (done-62)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done-63)))
  )

  (:durative-action do-step-64
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step64)) (at start (done-65)) (at start (done-73)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done-64)))
  )

  (:durative-action do-step-65
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step65)) (at start (done-67)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done-65)))
  )

  (:durative-action do-step-66
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step66)) (at start (done-7)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done-66)))
  )

  (:durative-action do-step-67
    :duration (= ?duration 3600)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done-67)))
  )

  (:durative-action do-step-68
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step68)) (at start (done-3)) (at start (done-8)) (at start (done-26)) (at start (done-32)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done-68)))
  )

  (:durative-action do-step-69
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step69)) (at start (done-16)) (at start (done-39)) (at start (done-66)) (at start (done-71)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done-69)))
  )

  (:durative-action do-step-70
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step70)) (at start (done-8)) (at start (done-21)) (at start (done-34)) (at start (done-48)) (at start (done-65)) (at start (done-67)) (at start (done-88)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done-70)))
  )

  (:durative-action do-step-71
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step71)) (at start (done-6)) (at start (done-7)) (at start (done-19)) (at start (done-34)) (at start (done-48)) (at start (done-66)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done-71)))
  )

  (:durative-action do-step-72
    :duration (= ?duration 600)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done-72)))
  )

  (:durative-action do-step-73
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step73)) (at start (done-15)) (at start (done-36)) (at start (done-40)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done-73)))
  )

  (:durative-action do-step-74
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step74)) (at start (done-36)) (at start (done-48)) (at start (done-88)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done-74)))
  )

  (:durative-action do-step-75
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step75)) (at start (done-12)) (at start (done-60)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done-75)))
  )

  (:durative-action do-step-76
    :duration (= ?duration 3600)
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done-76)))
  )

  (:durative-action do-step-77
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step77)) (at start (done-10)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done-77)))
  )

  (:durative-action do-step-78
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step78)) (at start (done-21)) (at start (done-66)) (at start (done-71)) (at start (done-83)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done-78)))
  )

  (:durative-action do-step-79
    :duration (= ?duration 14400)
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done-79)))
  )

  (:durative-action do-step-80
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step80)) (at start (done-39)) (at start (done-46)) (at start (done-57)) (at start (done-64)) (at start (done-69)) (at start (done-71)) (at start (done-88)) (at start (done-90)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done-80)))
  )

  (:durative-action do-step-81
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step81)) (at start (done-35)) (at start (done-50)) (at start (done-45)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done-81)))
  )

  (:durative-action do-step-82
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step82)) (at start (done-17)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done-82)))
  )

  (:durative-action do-step-83
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (done-5)) (at start (done-7)) (at start (done-74)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done-83)))
  )

  (:durative-action do-step-84
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step84)) (at start (done-18)) (at start (done-24)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done-84)))
  )

  (:durative-action do-step-85
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step85)) (at start (done-5)) (at start (done-60)) (at start (done-18)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done-85)))
  )

  (:durative-action do-step-86
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step86)) (at start (done-7)) (at start (done-67)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done-86)))
  )

  (:durative-action do-step-87
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step87)) (at start (done-66)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done-87)))
  )

  (:durative-action do-step-88
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step88)) (at start (done-62)) (at start (done-65)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done-88)))
  )

  (:durative-action do-step-89
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step89)) (at start (done-40)) (at start (done-50)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done-89)))
  )

  (:durative-action do-step-90
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step90)) (at start (done-17)) (at start (done-35)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done-90)))
  )
)
