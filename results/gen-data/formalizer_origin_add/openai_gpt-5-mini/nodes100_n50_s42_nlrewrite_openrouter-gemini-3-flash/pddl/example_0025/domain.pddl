(define (domain drum_customization)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; Unique semantic predicates for each step
    (done-1) (done-2) (done-3) (done-4) (done-5) (done-6) (done-7) (done-8) (done-9) (done-10)
    (done-11) (done-12) (done-13) (done-14) (done-15) (done-16) (done-17) (done-18) (done-19) (done-20)
    (done-21) (done-22) (done-23) (done-24) (done-25) (done-26) (done-27) (done-28) (done-29) (done-30)
    (done-31) (done-32) (done-33) (done-34) (done-35) (done-36) (done-37) (done-38) (done-39) (done-40)
    (done-41) (done-42) (done-43) (done-44) (done-45) (done-46) (done-47) (done-48) (done-49) (done-50)
    (done-51) (done-52) (done-53) (done-54) (done-55) (done-56) (done-57) (done-58) (done-59) (done-60)
    (done-61) (done-62) (done-63) (done-64) (done-65) (done-66) (done-67) (done-68) (done-69) (done-70)
    (done-71) (done-72) (done-73) (done-74) (done-75) (done-76) (done-77) (done-78) (done-79) (done-80)
    (done-81) (done-82) (done-83) (done-84) (done-85) (done-86) (done-87) (done-88) (done-89) (done-90)
    (done-91) (done-92) (done-93) (done-94) (done-95) (done-96) (done-97) (done-98) (done-99) (done-100)
  )

  ; One durative-action per step (100 actions)

  (:durative-action do-step1
    :duration (= ?duration 86400)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (done-13)) (at start (done-33)) (at start (done-68)) (at start (done-69)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (done-3)) (at start (done-63)) (at start (done-69)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (done-13)) (at start (done-33)) (at start (done-35)) (at start (done-61)) (at start (done-65)) (at start (done-85)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step6)) (at start (done-17)) (at start (done-61)) (at start (done-69)) (at start (done-100)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (done-24)) (at start (done-46)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (done-24)) (at start (done-48)) (at start (done-96)) (at start (done-97)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step9)) (at start (done-55)) (at start (done-77)) (at start (done-78)) (at start (done-45)) (at start (done-68)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 900)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (done-55)) (at start (done-61)) (at start (done-93)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1800)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (done-18)) (at start (done-34)) (at start (done-89)) (at start (done-93)) (at start (done-84)) (at start (done-31)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step14)) (at start (done-31)) (at start (done-67)) (at start (done-95)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step15)) (at start (done-5)) (at start (done-12)) (at start (done-19)) (at start (done-91)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step16)) (at start (done-19)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 10800)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 3600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (done-25)) (at start (done-34)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step20)) (at start (done-18)) (at start (done-26)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (done-12)) (at start (done-52)) (at start (done-54)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 2700)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step23)) (at start (done-28)) (at start (done-43)) (at start (done-94)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (done-12)) (at start (done-35)) (at start (done-67)) (at start (done-93)) (at start (done-94)) (at start (done-85)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step25)) (at start (done-17)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 14400)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (done-35)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (done-26)) (at start (done-35)) (at start (done-86)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step29)) (at start (done-17)) (at start (done-36)) (at start (done-45)) (at start (done-46)) (at start (done-96)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (done-18)) (at start (done-23)) (at start (done-43)) (at start (done-50)) (at start (done-82)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 900)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (done-79)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 1800)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step34)) (at start (done-47)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 7200)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (done-37)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 18000)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (done-13)) (at start (done-24)) (at start (done-42)) (at start (done-56)) (at start (done-77)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step39)) (at start (done-9)) (at start (done-15)) (at start (done-28)) (at start (done-54)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step40)) (at start (done-19)) (at start (done-22)) (at start (done-35)) (at start (done-46)) (at start (done-85)) (at start (done-90)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step41)) (at start (done-48)) (at start (done-51)) (at start (done-77)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (done-21)) (at start (done-27)) (at start (done-66)) (at start (done-96)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step43)) (at start (done-25)) (at start (done-28)) (at start (done-48)) (at start (done-80)) (at start (done-87)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step44)) (at start (done-9)) (at start (done-54)) (at start (done-57)) (at start (done-65)) (at start (done-72)) (at start (done-90)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (done-12)) (at start (done-89)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step46)) (at start (done-14)) (at start (done-35)) (at start (done-90)) (at start (done-74)) (at start (done-91)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 259200)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step48)) (at start (done-34)) (at start (done-67)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step49)) (at start (done-26)) (at start (done-45)) (at start (done-61)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step50)) (at start (done-20)) (at start (done-34)) (at start (done-36)) (at start (done-43)) (at start (done-79)) (at start (done-85)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step51)) (at start (done-89)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step52)) (at start (done-93)) (at start (done-94)) (at start (done-96)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 3600)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 1200)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step55)) (at start (done-2)) (at start (done-14)) (at start (done-25)) (at start (done-33)) (at start (done-77)) (at start (done-86)) (at start (done-93)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step56)) (at start (done-26)) (at start (done-45)) (at start (done-65)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 1200)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 1800)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step59)) (at start (done-17)) (at start (done-35)) (at start (done-45)) (at start (done-65)) (at start (done-95)) (at start (done-94)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step60)) (at start (done-16)) (at start (done-58)) (at start (done-79)) (at start (done-93)) (at start (done-100)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 1800)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done-61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step62)) (at start (done-10)) (at start (done-19)) (at start (done-36)) (at start (done-42)) (at start (done-70)) (at start (done-74)) (at start (done-96)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done-62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 1800)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done-63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step64)) (at start (done-48)) (at start (done-93)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done-64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step65)) (at start (done-17)) (at start (done-36)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done-65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step66)) (at start (done-1)) (at start (done-65)) (at start (done-89)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done-66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step67)) (at start (done-47)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done-67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step68)) (at start (done-16)) (at start (done-25)) (at start (done-31)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done-68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 432000)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done-69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step70)) (at start (done-18)) (at start (done-84)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done-70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step71)) (at start (done-1)) (at start (done-16)) (at start (done-20)) (at start (done-83)) (at start (done-88)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done-71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step72)) (at start (done-26)) (at start (done-42)) (at start (done-48)) (at start (done-87)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done-72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step73)) (at start (done-14)) (at start (done-53)) (at start (done-82)) (at start (done-87)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done-73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 3600)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done-74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step75)) (at start (done-24)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done-75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step76)) (at start (done-6)) (at start (done-9)) (at start (done-23)) (at start (done-31)) (at start (done-42)) (at start (done-57)) (at start (done-60)) (at start (done-61)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done-76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step77)) (at start (done-14)) (at start (done-33)) (at start (done-69)) (at start (done-82)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done-77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step78)) (at start (done-17)) (at start (done-22)) (at start (done-35)) (at start (done-83)) (at start (done-94)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done-78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 1800)
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done-79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step80)) (at start (done-27)) (at start (done-28)) (at start (done-35)) (at start (done-36)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done-80)))
  )

  (:durative-action do-step81
    :duration (= ?duration 900)
    :condition (at start (step_pending step81))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done-81)))
  )

  (:durative-action do-step82
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step82)) (at start (done-5)) (at start (done-18)) (at start (done-31)) (at start (done-37)) (at start (done-60)) (at start (done-90)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done-82)))
  )

  (:durative-action do-step83
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step83)) (at start (done-22)) (at start (done-94)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done-83)))
  )

  (:durative-action do-step84
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step84)) (at start (done-18)) (at start (done-35)) (at start (done-46)) (at start (done-87)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done-84)))
  )

  (:durative-action do-step85
    :duration (= ?duration 3600)
    :condition (at start (step_pending step85))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done-85)))
  )

  (:durative-action do-step86
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step86)) (at start (done-22)) (at start (done-26)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done-86)))
  )

  (:durative-action do-step87
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step87)) (at start (done-43)) (at start (done-87)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done-87)))
  )

  (:durative-action do-step88
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step88)) (at start (done-57)) (at start (done-66)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done-88)))
  )

  (:durative-action do-step89
    :duration (= ?duration 2700)
    :condition (at start (step_pending step89))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done-89)))
  )

  (:durative-action do-step90
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step90)) (at start (done-69)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done-90)))
  )

  (:durative-action do-step91
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step91)) (at start (done-60)) (at start (done-90)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (done-91)))
  )

  (:durative-action do-step92
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step92)) (at start (done-1)) (at start (done-24)) (at start (done-31)) (at start (done-45)) (at start (done-57)) (at start (done-60)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (done-92)))
  )

  (:durative-action do-step93
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step93)) (at start (done-35)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (done-93)))
  )

  (:durative-action do-step94
    :duration (= ?duration 1800)
    :condition (at start (step_pending step94))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (done-94)))
  )

  (:durative-action do-step95
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step95)) (at start (done-86)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (done-95)))
  )

  (:durative-action do-step96
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step96)) (at start (done-16)) (at start (done-17)) (at start (done-36)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (done-96)))
  )

  (:durative-action do-step97
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step97)) (at start (done-20)) (at start (done-58)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (done-97)))
  )

  (:durative-action do-step98
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step98)) (at start (done-19)) (at start (done-38)) (at start (done-78)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (done-98)))
  )

  (:durative-action do-step99
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step99)) (at start (done-57)) (at start (done-67)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (done-99)))
  )

  (:durative-action do-step100
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step100)) (at start (done-53)) (at start (done-84)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (done-100)))
  )
)
