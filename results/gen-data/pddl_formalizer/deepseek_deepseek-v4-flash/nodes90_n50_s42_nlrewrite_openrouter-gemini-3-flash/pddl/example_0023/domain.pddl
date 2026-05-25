(define (domain peanut_butter)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_step1)
    (completed_step2)
    (completed_step3)
    (completed_step4)
    (completed_step5)
    (completed_step6)
    (completed_step7)
    (completed_step8)
    (completed_step9)
    (completed_step10)
    (completed_step11)
    (completed_step12)
    (completed_step13)
    (completed_step14)
    (completed_step15)
    (completed_step16)
    (completed_step17)
    (completed_step18)
    (completed_step19)
    (completed_step20)
    (completed_step21)
    (completed_step22)
    (completed_step23)
    (completed_step24)
    (completed_step25)
    (completed_step26)
    (completed_step27)
    (completed_step28)
    (completed_step29)
    (completed_step30)
    (completed_step31)
    (completed_step32)
    (completed_step33)
    (completed_step34)
    (completed_step35)
    (completed_step36)
    (completed_step37)
    (completed_step38)
    (completed_step39)
    (completed_step40)
    (completed_step41)
    (completed_step42)
    (completed_step43)
    (completed_step44)
    (completed_step45)
    (completed_step46)
    (completed_step47)
    (completed_step48)
    (completed_step49)
    (completed_step50)
    (completed_step51)
    (completed_step52)
    (completed_step53)
    (completed_step54)
    (completed_step55)
    (completed_step56)
    (completed_step57)
    (completed_step58)
    (completed_step59)
    (completed_step60)
    (completed_step61)
    (completed_step62)
    (completed_step63)
    (completed_step64)
    (completed_step65)
    (completed_step66)
    (completed_step67)
    (completed_step68)
    (completed_step69)
    (completed_step70)
    (completed_step71)
    (completed_step72)
    (completed_step73)
    (completed_step74)
    (completed_step75)
    (completed_step76)
    (completed_step77)
    (completed_step78)
    (completed_step79)
    (completed_step80)
    (completed_step81)
    (completed_step82)
    (completed_step83)
    (completed_step84)
    (completed_step85)
    (completed_step86)
    (completed_step87)
    (completed_step88)
    (completed_step89)
    (completed_step90)
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed_step1)))
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (completed_step62)) (at start (completed_step90)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed_step2)))
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step3)) (at start (completed_step17)) (at start (completed_step26)) (at start (completed_step37)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed_step3)))
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed_step4)))
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step5)) (at start (completed_step38)) (at start (completed_step39)) (at start (completed_step42)) (at start (completed_step50)) (at start (completed_step53)) (at start (completed_step55)) (at start (completed_step66)) (at start (completed_step70)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed_step5)))
  )
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed_step6)))
  )
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed_step7)))
  )
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step8)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed_step8)))
  )
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step9)) (at start (completed_step20)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed_step9)))
  )
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (completed_step2)) (at start (completed_step36)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed_step10)))
  )
  
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (completed_step20)) (at start (completed_step28)) (at start (completed_step73)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed_step11)))
  )
  
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step12)) (at start (completed_step9)) (at start (completed_step13)) (at start (completed_step21)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed_step12)))
  )
  
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step13)) (at start (completed_step35)) (at start (completed_step55)) (at start (completed_step64)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed_step13)))
  )
  
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step14)) (at start (completed_step2)) (at start (completed_step32)) (at start (completed_step55)) (at start (completed_step58)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed_step14)))
  )
  
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step15)) (at start (completed_step17)) (at start (completed_step22)) (at start (completed_step50)) (at start (completed_step75)) (at start (completed_step83)) (at start (completed_step86)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed_step15)))
  )
  
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step16)) (at start (completed_step8)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed_step16)))
  )
  
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed_step17)))
  )
  
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step18)) (at start (completed_step8)) (at start (completed_step17)) (at start (completed_step47)) (at start (completed_step67)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed_step18)))
  )
  
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step19)) (at start (completed_step15)) (at start (completed_step31)) (at start (completed_step50)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed_step19)))
  )
  
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed_step20)))
  )
  
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step21)) (at start (completed_step4)) (at start (completed_step90)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed_step21)))
  )
  
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step22)) (at start (completed_step6)) (at start (completed_step23)) (at start (completed_step55)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed_step22)))
  )
  
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step23)) (at start (completed_step48)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed_step23)))
  )
  
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step24)) (at start (completed_step26)) (at start (completed_step42)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed_step24)))
  )
  
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (completed_step20)) (at start (completed_step21)) (at start (completed_step73)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed_step25)))
  )
  
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step26)) (at start (completed_step8)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed_step26)))
  )
  
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed_step27)))
  )
  
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step28)) (at start (completed_step20)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed_step28)))
  )
  
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (completed_step47)) (at start (completed_step75)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed_step29)))
  )
  
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step30)) (at start (completed_step2)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed_step30)))
  )
  
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step31)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed_step31)))
  )
  
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step32)) (at start (completed_step4)) (at start (completed_step56)) (at start (completed_step90)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed_step32)))
  )
  
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step33)) (at start (completed_step24)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed_step33)))
  )
  
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step34)) (at start (completed_step14)) (at start (completed_step23)) (at start (completed_step53)) (at start (completed_step72)) (at start (completed_step74)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed_step34)))
  )
  
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step35)) (at start (completed_step7)) (at start (completed_step58)) (at start (completed_step75)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed_step35)))
  )
  
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step36)) (at start (completed_step52)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed_step36)))
  )
  
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step37)) (at start (completed_step23)) (at start (completed_step67)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed_step37)))
  )
  
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step38)) (at start (completed_step20)) (at start (completed_step56)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed_step38)))
  )
  
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step39)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed_step39)))
  )
  
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step40)) (at start (completed_step9)) (at start (completed_step44)) (at start (completed_step65)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed_step40)))
  )
  
  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step41)) (at start (completed_step66)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed_step41)))
  )
  
  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step42)) (at start (completed_step58)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed_step42)))
  )
  
  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step43)) (at start (completed_step1)) (at start (completed_step22)) (at start (completed_step23)) (at start (completed_step37)) (at start (completed_step49)) (at start (completed_step54)) (at start (completed_step78)) (at start (completed_step80)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed_step43)))
  )
  
  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step44)) (at start (completed_step14)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed_step44)))
  )
  
  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step45)) (at start (completed_step11)) (at start (completed_step13)) (at start (completed_step52)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed_step45)))
  )
  
  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step46)) (at start (completed_step42)) (at start (completed_step44)) (at start (completed_step52)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed_step46)))
  )
  
  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step47)) (at start (completed_step73)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed_step47)))
  )
  
  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step48)) (at start (completed_step4)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed_step48)))
  )
  
  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step49)) (at start (completed_step36)) (at start (completed_step73)) (at start (completed_step90)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed_step49)))
  )
  
  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step50)) (at start (completed_step13)) (at start (completed_step22)) (at start (completed_step36)) (at start (completed_step61)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed_step50)))
  )
  
  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step51)) (at start (completed_step31)) (at start (completed_step34)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed_step51)))
  )
  
  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed_step52)))
  )
  
  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed_step53)))
  )
  
  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step54)) (at start (completed_step2)) (at start (completed_step20)) (at start (completed_step37)) (at start (completed_step49)) (at start (completed_step79)) (at start (completed_step90)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed_step54)))
  )
  
  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step55)) (at start (completed_step8)) (at start (completed_step31)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed_step55)))
  )
  
  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed_step56)))
  )
  
  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step57)) (at start (completed_step7)) (at start (completed_step13)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed_step57)))
  )
  
  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step58)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed_step58)))
  )
  
  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step59)) (at start (completed_step14)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed_step59)))
  )
  
  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step60)) (at start (completed_step33)) (at start (completed_step63)) (at start (completed_step72)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed_step60)))
  )
  
  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (completed_step61)))
  )
  
  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step62)) (at start (completed_step41)) (at start (completed_step66)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (completed_step62)))
  )
  
  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step63)) (at start (completed_step22)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (completed_step63)))
  )
  
  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step64)) (at start (completed_step56)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (completed_step64)))
  )
  
  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step65)) (at start (completed_step46)) (at start (completed_step64)) (at start (completed_step81)) (at start (completed_step83)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (completed_step65)))
  )
  
  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step66)) (at start (completed_step1)) (at start (completed_step21)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (completed_step66)))
  )
  
  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step67)) (at start (completed_step22)) (at start (completed_step52)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (completed_step67)))
  )
  
  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step68)) (at start (completed_step24)) (at start (completed_step57)) (at start (completed_step59)) (at start (completed_step75)) (at start (completed_step79)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (completed_step68)))
  )
  
  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step69)) (at start (completed_step37)) (at start (completed_step59)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (completed_step69)))
  )
  
  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step70)) (at start (completed_step7)) (at start (completed_step20)) (at start (completed_step55)) (at start (completed_step59)) (at start (completed_step61)) (at start (completed_step65)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (completed_step70)))
  )
  
  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step71)) (at start (completed_step13)) (at start (completed_step19)) (at start (completed_step63)) (at start (completed_step69)) (at start (completed_step81)) (at start (completed_step82)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (completed_step71)))
  )
  
  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step72)) (at start (completed_step17)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (completed_step72)))
  )
  
  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step73)) (at start (completed_step4)) (at start (completed_step48)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (completed_step73)))
  )
  
  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step74)) (at start (completed_step52)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (completed_step74)))
  )
  
  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step75)) (at start (completed_step1)) (at start (completed_step28)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (completed_step75)))
  )
  
  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step76)) (at start (completed_step31)) (at start (completed_step34)) (at start (completed_step39)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (completed_step76)))
  )
  
  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (completed_step7)) (at start (completed_step52)) (at start (completed_step89)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (completed_step77)))
  )
  
  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step78)) (at start (completed_step7)) (at start (completed_step29)) (at start (completed_step39)) (at start (completed_step86)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (completed_step78)))
  )
  
  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step79)) (at start (completed_step6)) (at start (completed_step21)) (at start (completed_step35)) (at start (completed_step72)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (completed_step79)))
  )
  
  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step80)) (at start (completed_step4)) (at start (completed_step13)) (at start (completed_step22)) (at start (completed_step62)) (at start (completed_step64)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (completed_step80)))
  )
  
  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step81)) (at start (completed_step6)) (at start (completed_step79)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (completed_step81)))
  )
  
  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step82)) (at start (completed_step4)) (at start (completed_step19)) (at start (completed_step35)) (at start (completed_step60)) (at start (completed_step67)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (completed_step82)))
  )
  
  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step83)) (at start (completed_step30)) (at start (completed_step72)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (completed_step83)))
  )
  
  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step84)) (at start (completed_step28)) (at start (completed_step33)) (at start (completed_step39)) (at start (completed_step88)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (completed_step84)))
  )
  
  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step85)) (at start (completed_step7)) (at start (completed_step12)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (completed_step85)))
  )
  
  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step86)) (at start (completed_step31)) (at start (completed_step66)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (completed_step86)))
  )
  
  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step87)) (at start (completed_step8)) (at start (completed_step41)) (at start (completed_step75)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (completed_step87)))
  )
  
  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step88)) (at start (completed_step8)) (at start (completed_step20)) (at start (completed_step24)) (at start (completed_step39)) (at start (completed_step51)) (at start (completed_step80)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (completed_step88)))
  )
  
  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step89)) (at start (completed_step27)) (at start (completed_step46)) (at start (completed_step67)) (at start (completed_step76)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (completed_step89)))
  )
  
  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (completed_step90)))
  )
)