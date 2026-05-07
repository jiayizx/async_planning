(define (domain trapezoid_area)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (completed ?s - step)
  )
  
  (:durative-action do_step_1
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step1))
      (at start (completed step11))
      (at start (completed step35))
      (at start (completed step39))
      (at start (completed step49))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (completed step1))
    )
  )
  
  (:durative-action do_step_2
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step2))
      (at start (completed step46))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (completed step2))
    )
  )
  
  (:durative-action do_step_3
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (completed step3))
    )
  )
  
  (:durative-action do_step_4
    :parameters ()
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending step4))
      (at start (completed step13))
      (at start (completed step39))
      (at start (completed step65))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (completed step4))
    )
  )
  
  (:durative-action do_step_5
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step5))
      (at start (completed step23))
      (at start (completed step57))
      (at start (completed step61))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (completed step5))
    )
  )
  
  (:durative-action do_step_6
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step6))
      (at start (completed step13))
      (at start (completed step61))
      (at start (completed step66))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (completed step6))
    )
  )
  
  (:durative-action do_step_7
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step7))
      (at start (completed step42))
      (at start (completed step60))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (completed step7))
    )
  )
  
  (:durative-action do_step_8
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step8))
      (at start (completed step55))
      (at start (completed step63))
      (at start (completed step65))
      (at start (completed step70))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (completed step8))
    )
  )
  
  (:durative-action do_step_9
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step9))
      (at start (completed step3))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (completed step9))
    )
  )
  
  (:durative-action do_step_10
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step10))
      (at start (completed step14))
      (at start (completed step36))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (completed step10))
    )
  )
  
  (:durative-action do_step_11
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step11))
      (at start (completed step40))
      (at start (completed step70))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (completed step11))
    )
  )
  
  (:durative-action do_step_12
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step12))
      (at start (completed step13))
      (at start (completed step20))
      (at start (completed step47))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (completed step12))
    )
  )
  
  (:durative-action do_step_13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step13))
      (at start (completed step66))
    )
    :effect (and
      (at start (not (step_pending step13)))
      (at end (completed step13))
    )
  )
  
  (:durative-action do_step_14
    :parameters ()
    :duration (= ?duration 40)
    :condition (and
      (at start (step_pending step14))
      (at start (completed step20))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (completed step14))
    )
  )
  
  (:durative-action do_step_15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step15))
      (at start (completed step13))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (completed step15))
    )
  )
  
  (:durative-action do_step_16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step16))
      (at start (completed step28))
    )
    :effect (and
      (at start (not (step_pending step16)))
      (at end (completed step16))
    )
  )
  
  (:durative-action do_step_17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step17))
      (at start (completed step34))
      (at start (completed step58))
      (at start (completed step63))
    )
    :effect (and
      (at start (not (step_pending step17)))
      (at end (completed step17))
    )
  )
  
  (:durative-action do_step_18
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step18))
      (at start (completed step2))
      (at start (completed step24))
      (at start (completed step62))
    )
    :effect (and
      (at start (not (step_pending step18)))
      (at end (completed step18))
    )
  )
  
  (:durative-action do_step_19
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step19))
      (at start (completed step47))
      (at start (completed step67))
    )
    :effect (and
      (at start (not (step_pending step19)))
      (at end (completed step19))
    )
  )
  
  (:durative-action do_step_20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step20))
      (at start (completed step32))
    )
    :effect (and
      (at start (not (step_pending step20)))
      (at end (completed step20))
    )
  )
  
  (:durative-action do_step_21
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step21))
      (at start (completed step15))
      (at start (completed step19))
    )
    :effect (and
      (at start (not (step_pending step21)))
      (at end (completed step21))
    )
  )
  
  (:durative-action do_step_22
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step22))
      (at start (completed step32))
    )
    :effect (and
      (at start (not (step_pending step22)))
      (at end (completed step22))
    )
  )
  
  (:durative-action do_step_23
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step23))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (completed step23))
    )
  )
  
  (:durative-action do_step_24
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step24))
      (at start (completed step20))
    )
    :effect (and
      (at start (not (step_pending step24)))
      (at end (completed step24))
    )
  )
  
  (:durative-action do_step_25
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step25))
      (at start (completed step52))
    )
    :effect (and
      (at start (not (step_pending step25)))
      (at end (completed step25))
    )
  )
  
  (:durative-action do_step_26
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step26))
      (at start (completed step15))
      (at start (completed step45))
      (at start (completed step55))
      (at start (completed step65))
      (at start (completed step69))
    )
    :effect (and
      (at start (not (step_pending step26)))
      (at end (completed step26))
    )
  )
  
  (:durative-action do_step_27
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step27))
      (at start (completed step5))
      (at start (completed step28))
      (at start (completed step55))
      (at start (completed step56))
    )
    :effect (and
      (at start (not (step_pending step27)))
      (at end (completed step27))
    )
  )
  
  (:durative-action do_step_28
    :parameters ()
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending step28))
      (at start (completed step14))
      (at start (completed step29))
      (at start (completed step37))
      (at start (completed step62))
    )
    :effect (and
      (at start (not (step_pending step28)))
      (at end (completed step28))
    )
  )
  
  (:durative-action do_step_29
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step29))
      (at start (completed step21))
      (at start (completed step38))
      (at start (completed step44))
      (at start (completed step58))
    )
    :effect (and
      (at start (not (step_pending step29)))
      (at end (completed step29))
    )
  )
  
  (:durative-action do_step_30
    :parameters ()
    :duration (= ?duration 25)
    :condition (and
      (at start (step_pending step30))
      (at start (completed step46))
    )
    :effect (and
      (at start (not (step_pending step30)))
      (at end (completed step30))
    )
  )
  
  (:durative-action do_step_31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step31))
      (at start (completed step2))
      (at start (completed step39))
    )
    :effect (and
      (at start (not (step_pending step31)))
      (at end (completed step31))
    )
  )
  
  (:durative-action do_step_32
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step32))
    :effect (and
      (at start (not (step_pending step32)))
      (at end (completed step32))
    )
  )
  
  (:durative-action do_step_33
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step33))
      (at start (completed step26))
    )
    :effect (and
      (at start (not (step_pending step33)))
      (at end (completed step33))
    )
  )
  
  (:durative-action do_step_34
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step34))
      (at start (completed step26))
      (at start (completed step65))
    )
    :effect (and
      (at start (not (step_pending step34)))
      (at end (completed step34))
    )
  )
  
  (:durative-action do_step_35
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step35))
      (at start (completed step2))
      (at start (completed step18))
    )
    :effect (and
      (at start (not (step_pending step35)))
      (at end (completed step35))
    )
  )
  
  (:durative-action do_step_36
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step36))
      (at start (completed step64))
    )
    :effect (and
      (at start (not (step_pending step36)))
      (at end (completed step36))
    )
  )
  
  (:durative-action do_step_37
    :parameters ()
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending step37))
      (at start (completed step67))
    )
    :effect (and
      (at start (not (step_pending step37)))
      (at end (completed step37))
    )
  )
  
  (:durative-action do_step_38
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step38))
      (at start (completed step67))
    )
    :effect (and
      (at start (not (step_pending step38)))
      (at end (completed step38))
    )
  )
  
  (:durative-action do_step_39
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step39))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (completed step39))
    )
  )
  
  (:durative-action do_step_40
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step40))
      (at start (completed step9))
      (at start (completed step42))
      (at start (completed step43))
      (at start (completed step64))
    )
    :effect (and
      (at start (not (step_pending step40)))
      (at end (completed step40))
    )
  )
  
  (:durative-action do_step_41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step41))
      (at start (completed step10))
      (at start (completed step27))
      (at start (completed step31))
      (at start (completed step70))
    )
    :effect (and
      (at start (not (step_pending step41)))
      (at end (completed step41))
    )
  )
  
  (:durative-action do_step_42
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step42))
      (at start (completed step62))
    )
    :effect (and
      (at start (not (step_pending step42)))
      (at end (completed step42))
    )
  )
  
  (:durative-action do_step_43
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step43))
    :effect (and
      (at start (not (step_pending step43)))
      (at end (completed step43))
    )
  )
  
  (:durative-action do_step_44
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step44))
      (at start (completed step60))
    )
    :effect (and
      (at start (not (step_pending step44)))
      (at end (completed step44))
    )
  )
  
  (:durative-action do_step_45
    :parameters ()
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending step45))
      (at start (completed step19))
      (at start (completed step25))
    )
    :effect (and
      (at start (not (step_pending step45)))
      (at end (completed step45))
    )
  )
  
  (:durative-action do_step_46
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step46))
      (at start (completed step13))
      (at start (completed step24))
      (at start (completed step43))
      (at start (completed step47))
    )
    :effect (and
      (at start (not (step_pending step46)))
      (at end (completed step46))
    )
  )
  
  (:durative-action do_step_47
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step47))
      (at start (completed step55))
    )
    :effect (and
      (at start (not (step_pending step47)))
      (at end (completed step47))
    )
  )
  
  (:durative-action do_step_48
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step48))
      (at start (completed step10))
      (at start (completed step32))
      (at start (completed step34))
    )
    :effect (and
      (at start (not (step_pending step48)))
      (at end (completed step48))
    )
  )
  
  (:durative-action do_step_49
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step49))
      (at start (completed step19))
      (at start (completed step61))
    )
    :effect (and
      (at start (not (step_pending step49)))
      (at end (completed step49))
    )
  )
  
  (:durative-action do_step_50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step50))
      (at start (completed step5))
      (at start (completed step13))
      (at start (completed step49))
      (at start (completed step61))
    )
    :effect (and
      (at start (not (step_pending step50)))
      (at end (completed step50))
    )
  )
  
  (:durative-action do_step_51
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step51))
      (at start (completed step34))
      (at start (completed step45))
    )
    :effect (and
      (at start (not (step_pending step51)))
      (at end (completed step51))
    )
  )
  
  (:durative-action do_step_52
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step52))
    :effect (and
      (at start (not (step_pending step52)))
      (at end (completed step52))
    )
  )
  
  (:durative-action do_step_53
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending step53))
      (at start (completed step2))
      (at start (completed step4))
      (at start (completed step12))
      (at start (completed step17))
      (at start (completed step19))
      (at start (completed step54))
    )
    :effect (and
      (at start (not (step_pending step53)))
      (at end (completed step53))
    )
  )
  
  (:durative-action do_step_54
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step54))
      (at start (completed step27))
    )
    :effect (and
      (at start (not (step_pending step54)))
      (at end (completed step54))
    )
  )
  
  (:durative-action do_step_55
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step55))
    :effect (and
      (at start (not (step_pending step55)))
      (at end (completed step55))
    )
  )
  
  (:durative-action do_step_56
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step56))
      (at start (completed step42))
      (at start (completed step55))
    )
    :effect (and
      (at start (not (step_pending step56)))
      (at end (completed step56))
    )
  )
  
  (:durative-action do_step_57
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step57))
      (at start (completed step4))
      (at start (completed step12))
      (at start (completed step48))
      (at start (completed step66))
    )
    :effect (and
      (at start (not (step_pending step57)))
      (at end (completed step57))
    )
  )
  
  (:durative-action do_step_58
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step58))
    :effect (and
      (at start (not (step_pending step58)))
      (at end (completed step58))
    )
  )
  
  (:durative-action do_step_59
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending step59))
      (at start (completed step13))
      (at start (completed step38))
      (at start (completed step64))
    )
    :effect (and
      (at start (not (step_pending step59)))
      (at end (completed step59))
    )
  )
  
  (:durative-action do_step_60
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step60))
      (at start (completed step6))
      (at start (completed step33))
      (at start (completed step37))
      (at start (completed step66))
    )
    :effect (and
      (at start (not (step_pending step60)))
      (at end (completed step60))
    )
  )
  
  (:durative-action do_step_61
    :parameters ()
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending step61))
      (at start (completed step3))
      (at start (completed step37))
    )
    :effect (and
      (at start (not (step_pending step61)))
      (at end (completed step61))
    )
  )
  
  (:durative-action do_step_62
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step62))
      (at start (completed step6))
      (at start (completed step15))
      (at start (completed step39))
    )
    :effect (and
      (at start (not (step_pending step62)))
      (at end (completed step62))
    )
  )
  
  (:durative-action do_step_63
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step63))
      (at start (completed step39))
    )
    :effect (and
      (at start (not (step_pending step63)))
      (at end (completed step63))
    )
  )
  
  (:durative-action do_step_64
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step64))
      (at start (completed step52))
    )
    :effect (and
      (at start (not (step_pending step64)))
      (at end (completed step64))
    )
  )
  
  (:durative-action do_step_65
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step65))
    :effect (and
      (at start (not (step_pending step65)))
      (at end (completed step65))
    )
  )
  
  (:durative-action do_step_66
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step66))
      (at start (completed step25))
    )
    :effect (and
      (at start (not (step_pending step66)))
      (at end (completed step66))
    )
  )
  
  (:durative-action do_step_67
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step67))
      (at start (completed step3))
    )
    :effect (and
      (at start (not (step_pending step67)))
      (at end (completed step67))
    )
  )
  
  (:durative-action do_step_68
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step68))
      (at start (completed step4))
      (at start (completed step9))
      (at start (completed step52))
    )
    :effect (and
      (at start (not (step_pending step68)))
      (at end (completed step68))
    )
  )
  
  (:durative-action do_step_69
    :parameters ()
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending step69))
      (at start (completed step21))
      (at start (completed step62))
    )
    :effect (and
      (at start (not (step_pending step69)))
      (at end (completed step69))
    )
  )
  
  (:durative-action do_step_70
    :parameters ()
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending step70))
      (at start (completed step31))
      (at start (completed step58))
      (at start (completed step69))
    )
    :effect (and
      (at start (not (step_pending step70)))
      (at end (completed step70))
    )
  )
)
