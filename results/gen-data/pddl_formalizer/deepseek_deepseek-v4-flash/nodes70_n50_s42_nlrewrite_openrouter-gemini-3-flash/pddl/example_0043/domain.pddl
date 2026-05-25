(define (domain marriage)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_action ?s - step))
  
  (:durative-action do_step1
    :duration (300)
    :condition (and
      (at start (step_pending step1))
      (at start (done_action step9))
      (at start (done_action step15))
      (at start (done_action step32))
      (at start (done_action step41))
      (at start (done_action step54))
      (at start (done_action step62))
      (at start (done_action step65))
      (at start (done_action step67)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_action step1))))
  
  (:durative-action do_step2
    :duration (7200)
    :condition (and
      (at start (step_pending step2))
      (at start (done_action step22))
      (at start (done_action step56)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_action step2))))
  
  (:durative-action do_step3
    :duration (3600)
    :condition (and
      (at start (step_pending step3))
      (at start (done_action step4)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_action step3))))
  
  (:durative-action do_step4
    :duration (10800)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_action step4))))
  
  (:durative-action do_step5
    :duration (1800)
    :condition (and
      (at start (step_pending step5))
      (at start (done_action step13)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_action step5))))
  
  (:durative-action do_step6
    :duration (3600)
    :condition (and
      (at start (step_pending step6))
      (at start (done_action step40)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_action step6))))
  
  (:durative-action do_step7
    :duration (1200)
    :condition (and
      (at start (step_pending step7))
      (at start (done_action step31)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_action step7))))
  
  (:durative-action do_step8
    :duration (3600)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_action step8))))
  
  (:durative-action do_step9
    :duration (1800)
    :condition (and
      (at start (step_pending step9))
      (at start (done_action step51)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_action step9))))
  
  (:durative-action do_step10
    :duration (900)
    :condition (and
      (at start (step_pending step10))
      (at start (done_action step8))
      (at start (done_action step12))
      (at start (done_action step29))
      (at start (done_action step31))
      (at start (done_action step63)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_action step10))))
  
  (:durative-action do_step11
    :duration (7200)
    :condition (and
      (at start (step_pending step11))
      (at start (done_action step13))
      (at start (done_action step37))
      (at start (done_action step46))
      (at start (done_action step51)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done_action step11))))
  
  (:durative-action do_step12
    :duration (2700)
    :condition (and
      (at start (step_pending step12))
      (at start (done_action step58))
      (at start (done_action step64)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done_action step12))))
  
  (:durative-action do_step13
    :duration (3600)
    :condition (and
      (at start (step_pending step13))
      (at start (done_action step37)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done_action step13))))
  
  (:durative-action do_step14
    :duration (7200)
    :condition (and
      (at start (step_pending step14))
      (at start (done_action step4))
      (at start (done_action step50)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done_action step14))))
  
  (:durative-action do_step15
    :duration (14400)
    :condition (at start (step_pending step15))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done_action step15))))
  
  (:durative-action do_step16
    :duration (259200)
    :condition (and
      (at start (step_pending step16))
      (at start (done_action step2))
      (at start (done_action step21))
      (at start (done_action step57)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done_action step16))))
  
  (:durative-action do_step17
    :duration (2700)
    :condition (and
      (at start (step_pending step17))
      (at start (done_action step26)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done_action step17))))
  
  (:durative-action do_step18
    :duration (7200)
    :condition (and
      (at start (step_pending step18))
      (at start (done_action step4))
      (at start (done_action step5))
      (at start (done_action step26)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done_action step18))))
  
  (:durative-action do_step19
    :duration (600)
    :condition (and
      (at start (step_pending step19))
      (at start (done_action step11))
      (at start (done_action step50))
      (at start (done_action step51)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done_action step19))))
  
  (:durative-action do_step20
    :duration (7200)
    :condition (and
      (at start (step_pending step20))
      (at start (done_action step5))
      (at start (done_action step40)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done_action step20))))
  
  (:durative-action do_step21
    :duration (604800)
    :condition (and
      (at start (step_pending step21))
      (at start (done_action step15)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (done_action step21))))
  
  (:durative-action do_step22
    :duration (600)
    :condition (and
      (at start (step_pending step22))
      (at start (done_action step13))
      (at start (done_action step18))
      (at start (done_action step25))
      (at start (done_action step46))
      (at start (done_action step64)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (done_action step22))))
  
  (:durative-action do_step23
    :duration (1800)
    :condition (and
      (at start (step_pending step23))
      (at start (done_action step29))
      (at start (done_action step35))
      (at start (done_action step52))
      (at start (done_action step66)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (done_action step23))))
  
  (:durative-action do_step24
    :duration (3600)
    :condition (and
      (at start (step_pending step24))
      (at start (done_action step63)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (done_action step24))))
  
  (:durative-action do_step25
    :duration (3600)
    :condition (and
      (at start (step_pending step25))
      (at start (done_action step26))
      (at start (done_action step70)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (done_action step25))))
  
  (:durative-action do_step26
    :duration (14400)
    :condition (and
      (at start (step_pending step26))
      (at start (done_action step11))
      (at start (done_action step60)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (done_action step26))))
  
  (:durative-action do_step27
    :duration (7200)
    :condition (and
      (at start (step_pending step27))
      (at start (done_action step18)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (done_action step27))))
  
  (:durative-action do_step28
    :duration (1800)
    :condition (and
      (at start (step_pending step28))
      (at start (done_action step46))
      (at start (done_action step47)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (done_action step28))))
  
  (:durative-action do_step29
    :duration (1200)
    :condition (and
      (at start (step_pending step29))
      (at start (done_action step4))
      (at start (done_action step18))
      (at start (done_action step37))
      (at start (done_action step52))
      (at start (done_action step53)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (done_action step29))))
  
  (:durative-action do_step30
    :duration (600)
    :condition (and
      (at start (step_pending step30))
      (at start (done_action step45))
      (at start (done_action step47))
      (at start (done_action step61)))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (done_action step30))))
  
  (:durative-action do_step31
    :duration (3600)
    :condition (and
      (at start (step_pending step31))
      (at start (done_action step51))
      (at start (done_action step60)))
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (done_action step31))))
  
  (:durative-action do_step32
    :duration (172800)
    :condition (and
      (at start (step_pending step32))
      (at start (done_action step27))
      (at start (done_action step58))
      (at start (done_action step70)))
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (done_action step32))))
  
  (:durative-action do_step33
    :duration (900)
    :condition (and
      (at start (step_pending step33))
      (at start (done_action step15))
      (at start (done_action step47)))
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (done_action step33))))
  
  (:durative-action do_step34
    :duration (900)
    :condition (and
      (at start (step_pending step34))
      (at start (done_action step11))
      (at start (done_action step24)))
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (done_action step34))))
  
  (:durative-action do_step35
    :duration (7200)
    :condition (and
      (at start (step_pending step35))
      (at start (done_action step14))
      (at start (done_action step21))
      (at start (done_action step28))
      (at start (done_action step44)))
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (done_action step35))))
  
  (:durative-action do_step36
    :duration (900)
    :condition (and
      (at start (step_pending step36))
      (at start (done_action step11))
      (at start (done_action step13))
      (at start (done_action step23)))
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (done_action step36))))
  
  (:durative-action do_step37
    :duration (3600)
    :condition (and
      (at start (step_pending step37))
      (at start (done_action step4)))
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (done_action step37))))
  
  (:durative-action do_step38
    :duration (1800)
    :condition (and
      (at start (step_pending step38))
      (at start (done_action step32))
      (at start (done_action step47)))
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (done_action step38))))
  
  (:durative-action do_step39
    :duration (1200)
    :condition (and
      (at start (step_pending step39))
      (at start (done_action step6))
      (at start (done_action step8))
      (at start (done_action step9))
      (at start (done_action step32)))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (done_action step39))))
  
  (:durative-action do_step40
    :duration (10800)
    :condition (and
      (at start (step_pending step40))
      (at start (done_action step3)))
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (done_action step40))))
  
  (:durative-action do_step41
    :duration (300)
    :condition (and
      (at start (step_pending step41))
      (at start (done_action step39)))
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (done_action step41))))
  
  (:durative-action do_step42
    :duration (600)
    :condition (and
      (at start (step_pending step42))
      (at start (done_action step14))
      (at start (done_action step40))
      (at start (done_action step48)))
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (done_action step42))))
  
  (:durative-action do_step43
    :duration (1800)
    :condition (and
      (at start (step_pending step43))
      (at start (done_action step4)))
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (done_action step43))))
  
  (:durative-action do_step44
    :duration (2700)
    :condition (and
      (at start (step_pending step44))
      (at start (done_action step15))
      (at start (done_action step19))
      (at start (done_action step62))
      (at start (done_action step63)))
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (done_action step44))))
  
  (:durative-action do_step45
    :duration (3600)
    :condition (and
      (at start (step_pending step45))
      (at start (done_action step32)))
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (done_action step45))))
  
  (:durative-action do_step46
    :duration (7200)
    :condition (at start (step_pending step46))
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (done_action step46))))
  
  (:durative-action do_step47
    :duration (900)
    :condition (and
      (at start (step_pending step47))
      (at start (done_action step14))
      (at start (done_action step57)))
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (done_action step47))))
  
  (:durative-action do_step48
    :duration (600)
    :condition (and
      (at start (step_pending step48))
      (at start (done_action step9))
      (at start (done_action step14)))
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (done_action step48))))
  
  (:durative-action do_step49
    :duration (300)
    :condition (and
      (at start (step_pending step49))
      (at start (done_action step13))
      (at start (done_action step14))
      (at start (done_action step32))
      (at start (done_action step52)))
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (done_action step49))))
  
  (:durative-action do_step50
    :duration (1800)
    :condition (and
      (at start (step_pending step50))
      (at start (done_action step64)))
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (done_action step50))))
  
  (:durative-action do_step51
    :duration (3600)
    :condition (at start (step_pending step51))
    :effect (and
      (at start (not (step_pending step51)))
      (at end (step_done step51))
      (at end (done_action step51))))
  
  (:durative-action do_step52
    :duration (900)
    :condition (and
      (at start (step_pending step52))
      (at start (done_action step51))
      (at start (done_action step64)))
    :effect (and
      (at start (not (step_pending step52)))
      (at end (step_done step52))
      (at end (done_action step52))))
  
  (:durative-action do_step53
    :duration (2700)
    :condition (and
      (at start (step_pending step53))
      (at start (done_action step21)))
    :effect (and
      (at start (not (step_pending step53)))
      (at end (step_done step53))
      (at end (done_action step53))))
  
  (:durative-action do_step54
    :duration (10800)
    :condition (and
      (at start (step_pending step54))
      (at start (done_action step43))
      (at start (done_action step48)))
    :effect (and
      (at start (not (step_pending step54)))
      (at end (step_done step54))
      (at end (done_action step54))))
  
  (:durative-action do_step55
    :duration (1200)
    :condition (and
      (at start (step_pending step55))
      (at start (done_action step13))
      (at start (done_action step18))
      (at start (done_action step64)))
    :effect (and
      (at start (not (step_pending step55)))
      (at end (step_done step55))
      (at end (done_action step55))))
  
  (:durative-action do_step56
    :duration (600)
    :condition (and
      (at start (step_pending step56))
      (at start (done_action step14))
      (at start (done_action step47)))
    :effect (and
      (at start (not (step_pending step56)))
      (at end (step_done step56))
      (at end (done_action step56))))
  
  (:durative-action do_step57
    :duration (7200)
    :condition (and
      (at start (step_pending step57))
      (at start (done_action step27))
      (at start (done_action step63)))
    :effect (and
      (at start (not (step_pending step57)))
      (at end (step_done step57))
      (at end (done_action step57))))
  
  (:durative-action do_step58
    :duration (1800)
    :condition (and
      (at start (step_pending step58))
      (at start (done_action step8))
      (at start (done_action step43)))
    :effect (and
      (at start (not (step_pending step58)))
      (at end (step_done step58))
      (at end (done_action step58))))
  
  (:durative-action do_step59
    :duration (3600)
    :condition (and
      (at start (step_pending step59))
      (at start (done_action step19))
      (at start (done_action step25))
      (at start (done_action step35))
      (at start (done_action step67)))
    :effect (and
      (at start (not (step_pending step59)))
      (at end (step_done step59))
      (at end (done_action step59))))
  
  (:durative-action do_step60
    :duration (3600)
    :condition (and
      (at start (step_pending step60))
      (at start (done_action step3)))
    :effect (and
      (at start (not (step_pending step60)))
      (at end (step_done step60))
      (at end (done_action step60))))
  
  (:durative-action do_step61
    :duration (900)
    :condition (and
      (at start (step_pending step61))
      (at start (done_action step11))
      (at start (done_action step42)))
    :effect (and
      (at start (not (step_pending step61)))
      (at end (step_done step61))
      (at end (done_action step61))))
  
  (:durative-action do_step62
    :duration (300)
    :condition (and
      (at start (step_pending step62))
      (at start (done_action step6))
      (at start (done_action step14)))
    :effect (and
      (at start (not (step_pending step62)))
      (at end (step_done step62))
      (at end (done_action step62))))
  
  (:durative-action do_step63
    :duration (3600)
    :condition (at start (step_pending step63))
    :effect (and
      (at start (not (step_pending step63)))
      (at end (step_done step63))
      (at end (done_action step63))))
  
  (:durative-action do_step64
    :duration (3600)
    :condition (and
      (at start (step_pending step64))
      (at start (done_action step8)))
    :effect (and
      (at start (not (step_pending step64)))
      (at end (step_done step64))
      (at end (done_action step64))))
  
  (:durative-action do_step65
    :duration (1200)
    :condition (and
      (at start (step_pending step65))
      (at start (done_action step33))
      (at start (done_action step69)))
    :effect (and
      (at start (not (step_pending step65)))
      (at end (step_done step65))
      (at end (done_action step65))))
  
  (:durative-action do_step66
    :duration (3600)
    :condition (and
      (at start (step_pending step66))
      (at start (done_action step8))
      (at start (done_action step51)))
    :effect (and
      (at start (not (step_pending step66)))
      (at end (step_done step66))
      (at end (done_action step66))))
  
  (:durative-action do_step67
    :duration (1800)
    :condition (and
      (at start (step_pending step67))
      (at start (done_action step29))
      (at start (done_action step42)))
    :effect (and
      (at start (not (step_pending step67)))
      (at end (step_done step67))
      (at end (done_action step67))))
  
  (:durative-action do_step68
    :duration (300)
    :condition (and
      (at start (step_pending step68))
      (at start (done_action step3))
      (at start (done_action step11))
      (at start (done_action step45))
      (at start (done_action step46))
      (at start (done_action step58))
      (at start (done_action step70)))
    :effect (and
      (at start (not (step_pending step68)))
      (at end (step_done step68))
      (at end (done_action step68))))
  
  (:durative-action do_step69
    :duration (900)
    :condition (at start (step_pending step69))
    :effect (and
      (at start (not (step_pending step69)))
      (at end (step_done step69))
      (at end (done_action step69))))
  
  (:durative-action do_step70
    :duration (600)
    :condition (and
      (at start (step_pending step70))
      (at start (done_action step53))
      (at start (done_action step57))
      (at start (done_action step66)))
    :effect (and
      (at start (not (step_pending step70)))
      (at end (step_done step70))
      (at end (done_action step70))))
)