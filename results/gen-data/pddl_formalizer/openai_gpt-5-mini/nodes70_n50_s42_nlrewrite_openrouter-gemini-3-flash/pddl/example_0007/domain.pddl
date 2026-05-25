(define (domain wealth_building)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1)
    (d2)
    (d3)
    (d4)
    (d5)
    (d6)
    (d7)
    (d8)
    (d9)
    (d10)
    (d11)
    (d12)
    (d13)
    (d14)
    (d15)
    (d16)
    (d17)
    (d18)
    (d19)
    (d20)
    (d21)
    (d22)
    (d23)
    (d24)
    (d25)
    (d26)
    (d27)
    (d28)
    (d29)
    (d30)
    (d31)
    (d32)
    (d33)
    (d34)
    (d35)
    (d36)
    (d37)
    (d38)
    (d39)
    (d40)
    (d41)
    (d42)
    (d43)
    (d44)
    (d45)
    (d46)
    (d47)
    (d48)
    (d49)
    (d50)
    (d51)
    (d52)
    (d53)
    (d54)
    (d55)
    (d56)
    (d57)
    (d58)
    (d59)
    (d60)
    (d61)
    (d62)
    (d63)
    (d64)
    (d65)
    (d66)
    (d67)
    (d68)
    (d69)
    (d70)
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (d4)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (d1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (d64)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (d2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step3)) (at start (d36)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (d3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 14400)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (d4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (d9)) (at start (d39)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (d5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 86400)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (d6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step7)) (at start (d47)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (d7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 36000)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (d8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (d9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step10)) (at start (d32)) (at start (d48)) (at start (d54)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (d10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step11)) (at start (d9)) (at start (d44)) (at start (d58)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (d11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step12)) (at start (d8)) (at start (d48)) (at start (d63)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (d12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (d64)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (d13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step14)) (at start (d20)) (at start (d41)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (d14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step15)) (at start (d1)) (at start (d43)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (d15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (d16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step17)) (at start (d37)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (d17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step18)) (at start (d9)) (at start (d29)) (at start (d65)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (d18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step19)) (at start (d20)) (at start (d40)) (at start (d46)) (at start (d47)) (at start (d48)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (d19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 10800)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (d20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (d8)) (at start (d11)) (at start (d14)) (at start (d36)) (at start (d40)) (at start (d47)) (at start (d50)) (at start (d59)) (at start (d64)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (d21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 7200)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (d22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step23)) (at start (d16)) (at start (d50)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (d23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step24)) (at start (d41)) (at start (d52)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (d24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step25)) (at start (d9)) (at start (d34)) (at start (d36)) (at start (d66)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (d25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (d26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step27)) (at start (d9)) (at start (d12)) (at start (d50)) (at start (d66)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (d27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (d9)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (d28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 2592000)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (d29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (d40)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (d30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step31)) (at start (d15)) (at start (d22)) (at start (d26)) (at start (d28)) (at start (d46)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (d31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step32)) (at start (d3)) (at start (d43)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (d32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 7200)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (d33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step34)) (at start (d12)) (at start (d60)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (d34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 10800)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (d35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step36)) (at start (d16)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (d36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step37)) (at start (d58)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (d37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step38)) (at start (d11)) (at start (d46)) (at start (d51)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (d38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step39)) (at start (d8)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (d39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (d38)) (at start (d56)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (d40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step41)) (at start (d60)) (at start (d64)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (d41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step42)) (at start (d4)) (at start (d11)) (at start (d28)) (at start (d38)) (at start (d51)) (at start (d61)) (at start (d65)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (d42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step43)) (at start (d47)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (d43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 5184000)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (d44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step45)) (at start (d17)) (at start (d26)) (at start (d29)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (d45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 604800)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (d46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step47)) (at start (d16)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (d47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (d48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step49)) (at start (d16)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (d49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step50)) (at start (d48)) (at start (d65)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (d50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step51)) (at start (d3)) (at start (d58)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (d51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step52)) (at start (d2)) (at start (d50)) (at start (d60)) (at start (d66)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (d52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step53)) (at start (d5)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (d53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (d30)) (at start (d35)) (at start (d60)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (d54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step55)) (at start (d32)) (at start (d35)) (at start (d61)) (at start (d66)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (d55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step56)) (at start (d60)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (d56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step57)) (at start (d38)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (d57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 15552000)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (d58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step59)) (at start (d36)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (d59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step60)) (at start (d35)) (at start (d43)) (at start (d46)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (d60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step61)) (at start (d2)) (at start (d35)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (d61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step62)) (at start (d6)) (at start (d9)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (d62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step63)) (at start (d37)) (at start (d53)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (d63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step64)) (at start (d48)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (d64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending step65)) (at start (d33)) (at start (d36)) (at start (d37)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (d65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step66)) (at start (d29)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (d66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step67)) (at start (d4)) (at start (d26)) (at start (d44)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (d67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step68)) (at start (d24)) (at start (d42)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (d68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step69)) (at start (d3)) (at start (d10)) (at start (d25)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (d69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step70)) (at start (d10)) (at start (d39)) (at start (d47)) (at start (d54)) (at start (d66)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (d70)))
  )
)
