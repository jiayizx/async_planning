(define (domain expansion-plan)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-s1)
    (done-s2)
    (done-s3)
    (done-s4)
    (done-s5)
    (done-s6)
    (done-s7)
    (done-s8)
    (done-s9)
    (done-s10)
    (done-s11)
    (done-s12)
    (done-s13)
    (done-s14)
    (done-s15)
    (done-s16)
    (done-s17)
    (done-s18)
    (done-s19)
    (done-s20)
    (done-s21)
    (done-s22)
    (done-s23)
    (done-s24)
    (done-s25)
    (done-s26)
    (done-s27)
    (done-s28)
    (done-s29)
    (done-s30)
    (done-s31)
    (done-s32)
    (done-s33)
    (done-s34)
    (done-s35)
    (done-s36)
    (done-s37)
    (done-s38)
    (done-s39)
    (done-s40)
    (done-s41)
    (done-s42)
    (done-s43)
    (done-s44)
    (done-s45)
    (done-s46)
    (done-s47)
    (done-s48)
    (done-s49)
    (done-s50)
    (done-s51)
    (done-s52)
    (done-s53)
    (done-s54)
    (done-s55)
    (done-s56)
    (done-s57)
    (done-s58)
    (done-s59)
    (done-s60)
  )

  (:durative-action perform-step1
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step1)) (at start (done-s37)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-s1)))
  )

  (:durative-action perform-step2
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step2)) (at start (done-s1)) (at start (done-s39)) (at start (done-s50)) (at start (done-s52)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-s2)))
  )

  (:durative-action perform-step3
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (done-s1)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-s3)))
  )

  (:durative-action perform-step4
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step4)) (at start (done-s12)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-s4)))
  )

  (:durative-action perform-step5
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step5)) (at start (done-s51)) (at start (done-s57)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-s5)))
  )

  (:durative-action perform-step6
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step6)) (at start (done-s13)) (at start (done-s22)) (at start (done-s23)) (at start (done-s44)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-s6)))
  )

  (:durative-action perform-step7
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-s7)))
  )

  (:durative-action perform-step8
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step8)) (at start (done-s13)) (at start (done-s41)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-s8)))
  )

  (:durative-action perform-step9
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step9)) (at start (done-s59)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-s9)))
  )

  (:durative-action perform-step10
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step10)) (at start (done-s25)) (at start (done-s50)) (at start (done-s51)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-s10)))
  )

  (:durative-action perform-step11
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-s11)))
  )

  (:durative-action perform-step12
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step12)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-s12)))
  )

  (:durative-action perform-step13
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step13)) (at start (done-s53)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-s13)))
  )

  (:durative-action perform-step14
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step14)) (at start (done-s54)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-s14)))
  )

  (:durative-action perform-step15
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step15)) (at start (done-s23)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-s15)))
  )

  (:durative-action perform-step16
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step16)) (at start (done-s12)) (at start (done-s19)) (at start (done-s24)) (at start (done-s54)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-s16)))
  )

  (:durative-action perform-step17
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step17)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-s17)))
  )

  (:durative-action perform-step18
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step18)) (at start (done-s17)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-s18)))
  )

  (:durative-action perform-step19
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step19)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-s19)))
  )

  (:durative-action perform-step20
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step20)) (at start (done-s22)) (at start (done-s39)) (at start (done-s45)) (at start (done-s48)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-s20)))
  )

  (:durative-action perform-step21
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step21)) (at start (done-s40)) (at start (done-s41)) (at start (done-s47)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-s21)))
  )

  (:durative-action perform-step22
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step22)) (at start (done-s43)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-s22)))
  )

  (:durative-action perform-step23
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step23)) (at start (done-s13)) (at start (done-s22)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-s23)))
  )

  (:durative-action perform-step24
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step24)) (at start (done-s22)) (at start (done-s45)) (at start (done-s50)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-s24)))
  )

  (:durative-action perform-step25
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step25)) (at start (done-s20)) (at start (done-s38)) (at start (done-s56)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-s25)))
  )

  (:durative-action perform-step26
    :duration (= ?duration 1036800)
    :condition (and (at start (step_pending step26)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-s26)))
  )

  (:durative-action perform-step27
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step27)) (at start (done-s23)) (at start (done-s26)) (at start (done-s55)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-s27)))
  )

  (:durative-action perform-step28
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step28)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-s28)))
  )

  (:durative-action perform-step29
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step29)) (at start (done-s23)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-s29)))
  )

  (:durative-action perform-step30
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step30)) (at start (done-s4)) (at start (done-s40)) (at start (done-s54)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-s30)))
  )

  (:durative-action perform-step31
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step31)) (at start (done-s4)) (at start (done-s52)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-s31)))
  )

  (:durative-action perform-step32
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step32)) (at start (done-s28)) (at start (done-s30)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-s32)))
  )

  (:durative-action perform-step33
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step33)) (at start (done-s25)) (at start (done-s38)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-s33)))
  )

  (:durative-action perform-step34
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step34)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-s34)))
  )

  (:durative-action perform-step35
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step35)) (at start (done-s52)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-s35)))
  )

  (:durative-action perform-step36
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step36)) (at start (done-s18)) (at start (done-s40)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-s36)))
  )

  (:durative-action perform-step37
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step37)) (at start (done-s12)) (at start (done-s29)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-s37)))
  )

  (:durative-action perform-step38
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step38)) (at start (done-s11)) (at start (done-s15)) (at start (done-s22)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-s38)))
  )

  (:durative-action perform-step39
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step39)) (at start (done-s29)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-s39)))
  )

  (:durative-action perform-step40
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step40)) (at start (done-s8)) (at start (done-s15)) (at start (done-s18)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-s40)))
  )

  (:durative-action perform-step41
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step41)) (at start (done-s50)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-s41)))
  )

  (:durative-action perform-step42
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step42)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-s42)))
  )

  (:durative-action perform-step43
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step43)) (at start (done-s4)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-s43)))
  )

  (:durative-action perform-step44
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step44)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-s44)))
  )

  (:durative-action perform-step45
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step45)) (at start (done-s9)) (at start (done-s50)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-s45)))
  )

  (:durative-action perform-step46
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step46)) (at start (done-s22)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-s46)))
  )

  (:durative-action perform-step47
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step47)) (at start (done-s7)) (at start (done-s8)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-s47)))
  )

  (:durative-action perform-step48
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step48)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-s48)))
  )

  (:durative-action perform-step49
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step49)) (at start (done-s13)) (at start (done-s25)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-s49)))
  )

  (:durative-action perform-step50
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step50)) (at start (done-s60)) (at start (done-s28)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-s50)))
  )

  (:durative-action perform-step51
    :duration (= ?duration 1036800)
    :condition (and (at start (step_pending step51)) (at start (done-s33)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-s51)))
  )

  (:durative-action perform-step52
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step52)) (at start (done-s8)) (at start (done-s37)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-s52)))
  )

  (:durative-action perform-step53
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step53)) (at start (done-s12)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-s53)))
  )

  (:durative-action perform-step54
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step54)) (at start (done-s24)) (at start (done-s60)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-s54)))
  )

  (:durative-action perform-step55
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step55)) (at start (done-s2)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-s55)))
  )

  (:durative-action perform-step56
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step56)) (at start (done-s1)) (at start (done-s11)) (at start (done-s52)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-s56)))
  )

  (:durative-action perform-step57
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step57)) (at start (done-s12)) (at start (done-s24)) (at start (done-s40)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-s57)))
  )

  (:durative-action perform-step58
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step58)) (at start (done-s34)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-s58)))
  )

  (:durative-action perform-step59
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step59)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-s59)))
  )

  (:durative-action perform-step60
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step60)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-s60)))
  )

)
