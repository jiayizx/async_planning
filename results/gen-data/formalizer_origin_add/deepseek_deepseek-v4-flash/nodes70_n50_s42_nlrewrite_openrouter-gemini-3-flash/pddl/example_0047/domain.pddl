(define (domain lecture_recording)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_step ?s - step)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step1))
      (at start (completed_step step43))
      (at start (completed_step step52))
      (at start (completed_step step57))
      (at start (completed_step step67))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (completed_step step1))
    )
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step2))
      (at start (completed_step step13))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (completed_step step2))
    )
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step3))
      (at start (completed_step step40))
      (at start (completed_step step47))
      (at start (completed_step step61))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (completed_step step3))
    )
  )
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step4))
      (at start (completed_step step5))
      (at start (completed_step step10))
      (at start (completed_step step33))
      (at start (completed_step step63))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (completed_step step4))
    )
  )
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step5))
      (at start (completed_step step16))
      (at start (completed_step step21))
      (at start (completed_step step34))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (completed_step step5))
    )
  )
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step6))
      (at start (completed_step step32))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (completed_step step6))
    )
  )
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending step7))
      (at start (completed_step step3))
      (at start (completed_step step38))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (completed_step step7))
    )
  )
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step8))
      (at start (completed_step step40))
      (at start (completed_step step44))
      (at start (completed_step step70))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (completed_step step8))
    )
  )
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (completed_step step9))
    )
  )
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step10))
      (at start (completed_step step9))
      (at start (completed_step step40))
      (at start (completed_step step41))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (completed_step step10))
    )
  )
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step11))
      (at start (completed_step step21))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (completed_step step11))
    )
  )
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step12))
      (at start (completed_step step9))
      (at start (completed_step step19))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (completed_step step12))
    )
  )
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step13))
      (at start (completed_step step12))
      (at start (completed_step step21))
      (at start (completed_step step50))
    )
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (completed_step step13))
    )
  )
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step14))
      (at start (completed_step step9))
      (at start (completed_step step26))
      (at start (completed_step step37))
      (at start (completed_step step50))
      (at start (completed_step step60))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (completed_step step14))
    )
  )
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step15))
      (at start (completed_step step39))
      (at start (completed_step step63))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (completed_step step15))
    )
  )
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step16))
      (at start (completed_step step39))
    )
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (completed_step step16))
    )
  )
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step17))
      (at start (completed_step step40))
      (at start (completed_step step44))
      (at start (completed_step step54))
    )
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (completed_step step17))
    )
  )
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step18))
      (at start (completed_step step61))
    )
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (completed_step step18))
    )
  )
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step19))
      (at start (completed_step step69))
    )
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (completed_step step19))
    )
  )
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step20))
      (at start (completed_step step35))
    )
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (completed_step step20))
    )
  )
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step21))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (completed_step step21))
    )
  )
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step22))
      (at start (completed_step step1))
      (at start (completed_step step11))
      (at start (completed_step step17))
      (at start (completed_step step31))
      (at start (completed_step step49))
      (at start (completed_step step56))
    )
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (completed_step step22))
    )
  )
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step23))
      (at start (completed_step step37))
    )
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (completed_step step23))
    )
  )
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step24))
      (at start (completed_step step4))
      (at start (completed_step step9))
    )
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (completed_step step24))
    )
  )
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step25))
      (at start (completed_step step23))
      (at start (completed_step step24))
    )
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (completed_step step25))
    )
  )
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step26))
      (at start (completed_step step7))
      (at start (completed_step step11))
      (at start (completed_step step13))
      (at start (completed_step step15))
    )
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (completed_step step26))
    )
  )
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step27))
      (at start (completed_step step35))
      (at start (completed_step step48))
    )
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (completed_step step27))
    )
  )
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step28))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (completed_step step28))
    )
  )
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step29))
      (at start (completed_step step4))
      (at start (completed_step step7))
      (at start (completed_step step34))
      (at start (completed_step step40))
      (at start (completed_step step70))
    )
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (completed_step step29))
    )
  )
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step30))
      (at start (completed_step step9))
      (at start (completed_step step18))
    )
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (completed_step step30))
    )
  )
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step31))
      (at start (completed_step step18))
      (at start (completed_step step41))
    )
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (completed_step step31))
    )
  )
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step32))
      (at start (completed_step step18))
      (at start (completed_step step20))
      (at start (completed_step step54))
    )
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (completed_step step32))
    )
  )
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step33))
      (at start (completed_step step20))
      (at start (completed_step step32))
      (at start (completed_step step39))
    )
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (completed_step step33))
    )
  )
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step34))
      (at start (completed_step step3))
    )
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (completed_step step34))
    )
  )
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step35))
      (at start (completed_step step10))
      (at start (completed_step step37))
    )
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (completed_step step35))
    )
  )
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step36))
      (at start (completed_step step37))
      (at start (completed_step step41))
    )
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (completed_step step36))
    )
  )
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step37))
      (at start (completed_step step48))
      (at start (completed_step step54))
    )
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (completed_step step37))
    )
  )
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step38))
      (at start (completed_step step20))
      (at start (completed_step step34))
    )
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (completed_step step38))
    )
  )
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step39))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (completed_step step39))
    )
  )
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step40))
      (at start (completed_step step48))
      (at start (completed_step step65))
    )
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (completed_step step40))
    )
  )
  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step41))
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (completed_step step41))
    )
  )
  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step42))
      (at start (completed_step step38))
    )
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (completed_step step42))
    )
  )
  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step43))
      (at start (completed_step step49))
      (at start (completed_step step56))
      (at start (completed_step step63))
    )
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (completed_step step43))
    )
  )
  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step44))
      (at start (completed_step step7))
      (at start (completed_step step50))
    )
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (completed_step step44))
    )
  )
  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step45))
      (at start (completed_step step2))
      (at start (completed_step step10))
      (at start (completed_step step30))
    )
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (completed_step step45))
    )
  )
  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending step46))
      (at start (completed_step step50))
      (at start (completed_step step65))
      (at start (completed_step step69))
    )
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (completed_step step46))
    )
  )
  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step47))
      (at start (completed_step step54))
    )
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (completed_step step47))
    )
  )
  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step48))
      (at start (completed_step step52))
    )
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (completed_step step48))
    )
  )
  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step49))
      (at start (completed_step step7))
      (at start (completed_step step52))
      (at start (completed_step step56))
      (at start (completed_step step60))
      (at start (completed_step step61))
    )
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (completed_step step49))
    )
  )
  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step50))
      (at start (completed_step step20))
      (at start (completed_step step37))
      (at start (completed_step step65))
    )
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (completed_step step50))
    )
  )
  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step51))
      (at start (completed_step step45))
      (at start (completed_step step58))
    )
    :effect (and
      (at start (not (step_pending step51)))
      (at end (step_done step51))
      (at end (completed_step step51))
    )
  )
  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step52))
    :effect (and
      (at start (not (step_pending step52)))
      (at end (step_done step52))
      (at end (completed_step step52))
    )
  )
  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step53))
    :effect (and
      (at start (not (step_pending step53)))
      (at end (step_done step53))
      (at end (completed_step step53))
    )
  )
  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step54))
      (at start (completed_step step67))
    )
    :effect (and
      (at start (not (step_pending step54)))
      (at end (step_done step54))
      (at end (completed_step step54))
    )
  )
  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step55))
      (at start (completed_step step42))
      (at start (completed_step step51))
      (at start (completed_step step52))
    )
    :effect (and
      (at start (not (step_pending step55)))
      (at end (step_done step55))
      (at end (completed_step step55))
    )
  )
  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step56))
      (at start (completed_step step21))
      (at start (completed_step step52))
      (at start (completed_step step53))
    )
    :effect (and
      (at start (not (step_pending step56)))
      (at end (step_done step56))
      (at end (completed_step step56))
    )
  )
  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step57))
      (at start (completed_step step20))
    )
    :effect (and
      (at start (not (step_pending step57)))
      (at end (step_done step57))
      (at end (completed_step step57))
    )
  )
  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step58))
      (at start (completed_step step7))
      (at start (completed_step step28))
      (at start (completed_step step52))
    )
    :effect (and
      (at start (not (step_pending step58)))
      (at end (step_done step58))
      (at end (completed_step step58))
    )
  )
  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step59))
      (at start (completed_step step22))
      (at start (completed_step step33))
      (at start (completed_step step39))
      (at start (completed_step step44))
    )
    :effect (and
      (at start (not (step_pending step59)))
      (at end (step_done step59))
      (at end (completed_step step59))
    )
  )
  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step60))
      (at start (completed_step step16))
      (at start (completed_step step63))
    )
    :effect (and
      (at start (not (step_pending step60)))
      (at end (step_done step60))
      (at end (completed_step step60))
    )
  )
  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step61))
      (at start (completed_step step10))
      (at start (completed_step step65))
    )
    :effect (and
      (at start (not (step_pending step61)))
      (at end (step_done step61))
      (at end (completed_step step61))
    )
  )
  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step62))
      (at start (completed_step step46))
    )
    :effect (and
      (at start (not (step_pending step62)))
      (at end (step_done step62))
      (at end (completed_step step62))
    )
  )
  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step63))
      (at start (completed_step step3))
      (at start (completed_step step39))
      (at start (completed_step step67))
    )
    :effect (and
      (at start (not (step_pending step63)))
      (at end (step_done step63))
      (at end (completed_step step63))
    )
  )
  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step64))
      (at start (completed_step step57))
      (at start (completed_step step65))
    )
    :effect (and
      (at start (not (step_pending step64)))
      (at end (step_done step64))
      (at end (completed_step step64))
    )
  )
  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending step65))
      (at start (completed_step step52))
    )
    :effect (and
      (at start (not (step_pending step65)))
      (at end (step_done step65))
      (at end (completed_step step65))
    )
  )
  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step66))
      (at start (completed_step step5))
      (at start (completed_step step6))
      (at start (completed_step step15))
      (at start (completed_step step36))
      (at start (completed_step step51))
    )
    :effect (and
      (at start (not (step_pending step66)))
      (at end (step_done step66))
      (at end (completed_step step66))
    )
  )
  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step67))
    :effect (and
      (at start (not (step_pending step67)))
      (at end (step_done step67))
      (at end (completed_step step67))
    )
  )
  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step68))
      (at start (completed_step step8))
      (at start (completed_step step42))
      (at start (completed_step step58))
      (at start (completed_step step62))
    )
    :effect (and
      (at start (not (step_pending step68)))
      (at end (step_done step68))
      (at end (completed_step step68))
    )
  )
  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step69))
      (at start (completed_step step48))
    )
    :effect (and
      (at start (not (step_pending step69)))
      (at end (step_done step69))
      (at end (completed_step step69))
    )
  )
  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step70))
      (at start (completed_step step20))
      (at start (completed_step step45))
    )
    :effect (and
      (at start (not (step_pending step70)))
      (at end (step_done step70))
      (at end (completed_step step70))
    )
  )
)