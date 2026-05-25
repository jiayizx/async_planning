(define (domain constellation-piercing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
    (done16)
    (done17)
    (done18)
    (done19)
    (done20)
    (done21)
    (done22)
    (done23)
    (done24)
    (done25)
    (done26)
    (done27)
    (done28)
    (done29)
    (done30)
    (done31)
    (done32)
    (done33)
    (done34)
    (done35)
    (done36)
    (done37)
    (done38)
    (done39)
    (done40)
    (done41)
    (done42)
    (done43)
    (done44)
    (done45)
    (done46)
    (done47)
    (done48)
    (done49)
    (done50)
    (done51)
    (done52)
    (done53)
    (done54)
    (done55)
    (done56)
    (done57)
    (done58)
    (done59)
    (done60)
    (done61)
    (done62)
    (done63)
    (done64)
    (done65)
    (done66)
    (done67)
    (done68)
    (done69)
    (done70)
    (done71)
    (done72)
    (done73)
    (done74)
    (done75)
    (done76)
    (done77)
    (done78)
    (done79)
    (done80)
  )

  (:durative-action step1_action
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (done49)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action step2_action
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action step3_action
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (done9)) (at start (done12)) (at start (done27)) (at start (done28)) (at start (done56)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action step4_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (done1)) (at start (done6)) (at start (done35)) (at start (done49)) (at start (done56)) (at start (done46)) (at start (done48)) (at start (done67)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action step5_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (done31)) (at start (done59)) (at start (done61)) (at start (done66)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action step6_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (done21)) (at start (done60)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action step7_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (done12)) (at start (done18)) (at start (done60)) (at start (done63)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action step8_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (done9)) (at start (done17)) (at start (done44)) (at start (done45)) (at start (done49)) (at start (done63)) (at start (done77)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action step9_action
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action step10_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (done50)) (at start (done52)) (at start (done61)) (at start (done73)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action step11_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (done3)) (at start (done49)) (at start (done79)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action step12_action
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (done50)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action step13_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (done26)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action step14_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (done50)) (at start (done70)) (at start (done63)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action step15_action
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action step16_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (done33)) (at start (done26)) (at start (done35)) (at start (done79)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action step17_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (done1)) (at start (done58)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action step18_action
    :duration (= ?duration 900)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action step19_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (done1)) (at start (done34)) (at start (done47)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action step20_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20)) (at start (done15)) (at start (done44)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action step21_action
    :duration (= ?duration 3600)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action step22_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step22)) (at start (done5)) (at start (done58)) (at start (done61)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action step23_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (done15)) (at start (done31)) (at start (done50)) (at start (done46)) (at start (done32)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action step24_action
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (done34)) (at start (done47)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action step25_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (done1)) (at start (done9)) (at start (done34)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action step26_action
    :duration (= ?duration 10800)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action step27_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (done78)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action step28_action
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step28)) (at start (done17)) (at start (done21)) (at start (done33)) (at start (done49)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action step29_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (done4)) (at start (done9)) (at start (done19)) (at start (done21)) (at start (done45)) (at start (done48)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action step30_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (done17)) (at start (done18)) (at start (done28)) (at start (done43)) (at start (done55)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action step31_action
    :duration (= ?duration 172800)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action step32_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step32)) (at start (done48)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action step33_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step33)) (at start (done18)) (at start (done39)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action step34_action
    :duration (= ?duration 3600)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action step35_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step35)) (at start (done68)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action step36_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (done43)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action step37_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (done55)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action step38_action
    :duration (= ?duration 7200)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action step39_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (done38)) (at start (done70)) (at start (done49)) (at start (done71)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action step40_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (done26)) (at start (done38)) (at start (done55)) (at start (done56)) (at start (done63)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action step41_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (done7)) (at start (done17)) (at start (done22)) (at start (done56)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action step42_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step42)) (at start (done1)) (at start (done14)) (at start (done16)) (at start (done32)) (at start (done70)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action step43_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step43)) (at start (done26)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action step44_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (done26)) (at start (done37)) (at start (done53)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action step45_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step45)) (at start (done21)) (at start (done53)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action step46_action
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step46)) (at start (done6)) (at start (done15)) (at start (done68)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action step47_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step47)) (at start (done43)) (at start (done64)) (at start (done71)) (at start (done49)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action step48_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step48)) (at start (done70)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action step49_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (done70)) (at start (done71)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action step50_action
    :duration (= ?duration 10800)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action step51_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step51)) (at start (done3)) (at start (done18)) (at start (done28)) (at start (done50)) (at start (done52)) (at start (done66)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action step52_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step52)) (at start (done18)) (at start (done60)) (at start (done71)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action step53_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (done32)) (at start (done71)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action step54_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step54)) (at start (done46)) (at start (done58)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action step55_action
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step55)) (at start (done36)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action step56_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step56)) (at start (done59)) (at start (done72)) (at start (done58)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action step57_action
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step57)) (at start (done23)) (at start (done26)) (at start (done35)) (at start (done45)) (at start (done58)) (at start (done79)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action step58_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step58)) (at start (done9)) (at start (done55)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action step59_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step59)) (at start (done21)) (at start (done60)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action step60_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step60)) (at start (done38)) (at start (done39)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action step61_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step61)) (at start (done12)) (at start (done21)) (at start (done50)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action step62_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step62)) (at start (done78)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action step63_action
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step63)) (at start (done12)) (at start (done33)) (at start (done58)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action step64_action
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step64)) (at start (done13)) (at start (done17)) (at start (done18)) (at start (done45)) (at start (done52)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action step65_action
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step65)) (at start (done15)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action step66_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (done27)) (at start (done50)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action step67_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (done12)) (at start (done18)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action step68_action
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step68)) (at start (done71)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action step69_action
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step69)) (at start (done3)) (at start (done26)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action step70_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step70)) (at start (done2)) (at start (done43)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done70)))
  )

  (:durative-action step71_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step71)) (at start (done50)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done71)))
  )

  (:durative-action step72_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step72)) (at start (done27)) (at start (done58)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done72)))
  )

  (:durative-action step73_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step73)) (at start (done60)) (at start (done68)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done73)))
  )

  (:durative-action step74_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step74)) (at start (done11)) (at start (done27)) (at start (done29)) (at start (done53)) (at start (done71)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done74)))
  )

  (:durative-action step75_action
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step75)) (at start (done47)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done75)))
  )

  (:durative-action step76_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step76)) (at start (done9)) (at start (done15)) (at start (done25)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done76)))
  )

  (:durative-action step77_action
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step77)) (at start (done43)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done77)))
  )

  (:durative-action step78_action
    :duration (= ?duration 604800)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done78)))
  )

  (:durative-action step79_action
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step79)) (at start (done38)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done79)))
  )

  (:durative-action step80_action
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step80)) (at start (done4)) (at start (done17)) (at start (done26)) (at start (done43)) (at start (done58)) (at start (done65)) (at start (done76)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done80)))
  )
)
