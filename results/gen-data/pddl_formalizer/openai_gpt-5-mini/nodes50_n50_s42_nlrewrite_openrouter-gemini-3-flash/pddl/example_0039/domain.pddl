(define (domain shower)
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
  )

  (:durative-action do_1
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done1)) ) )

  (:durative-action do_2
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step2)) (at start (done16)) (at start (done25)) (at start (done39)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2))))

  (:durative-action do_3
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3))))

  (:durative-action do_4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (done2)) (at start (done27)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4))))

  (:durative-action do_5
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5))))

  (:durative-action do_6
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (done49)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6))))

  (:durative-action do_7
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step7)) (at start (done18)) (at start (done36)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7))))

  (:durative-action do_8
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step8)) (at start (done20)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8))))

  (:durative-action do_9
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step9)) (at start (done10)) (at start (done38)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9))))

  (:durative-action do_10
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step10)) (at start (done38)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10))))

  (:durative-action do_11
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11))))

  (:durative-action do_12
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step12)) (at start (done6)) (at start (done19)) (at start (done21)) (at start (done44)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12))))

  (:durative-action do_13
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13))))

  (:durative-action do_14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (done29)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14))))

  (:durative-action do_15
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step15)) (at start (done10)) (at start (done20)) (at start (done42)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15))))

  (:durative-action do_16
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step16)) (at start (done38)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16))))

  (:durative-action do_17
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step17)) (at start (done31)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17))))

  (:durative-action do_18
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step18)) (at start (done38)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18))))

  (:durative-action do_19
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step19)) (at start (done8)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19))))

  (:durative-action do_20
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20))))

  (:durative-action do_21
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21))))

  (:durative-action do_22
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (done5)) (at start (done48)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22))))

  (:durative-action do_23
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (done43)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23))))

  (:durative-action do_24
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24))))

  (:durative-action do_25
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (done1)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25))))

  (:durative-action do_26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (done17)) (at start (done21)) (at start (done31)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26))))

  (:durative-action do_27
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step27)) (at start (done5)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27))))

  (:durative-action do_28
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step28)) (at start (done8)) (at start (done40)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28))))

  (:durative-action do_29
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step29)) (at start (done10)) (at start (done25)) (at start (done30)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29))))

  (:durative-action do_30
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30))))

  (:durative-action do_31
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step31)) (at start (done10)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31))))

  (:durative-action do_32
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (done1)) (at start (done40)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32))))

  (:durative-action do_33
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step33)) (at start (done6)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33))))

  (:durative-action do_34
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step34)) (at start (done24)) (at start (done36)) (at start (done37)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34))))

  (:durative-action do_35
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step35)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35))))

  (:durative-action do_36
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step36)) (at start (done13)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36))))

  (:durative-action do_37
    :parameters ()
    :duration (= ?duration 50)
    :condition (and (at start (step_pending step37)) (at start (done18)) (at start (done33)) (at start (done42)) (at start (done47)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37))))

  (:durative-action do_38
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38))))

  (:durative-action do_39
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step39)) (at start (done15)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39))))

  (:durative-action do_40
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step40)) (at start (done20)) (at start (done39)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40))))

  (:durative-action do_41
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step41)) (at start (done5)) (at start (done8)) (at start (done15)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41))))

  (:durative-action do_42
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step42)) (at start (done3)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42))))

  (:durative-action do_43
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step43)) (at start (done25)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43))))

  (:durative-action do_44
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step44)) (at start (done24)) (at start (done39)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44))))

  (:durative-action do_45
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step45)) (at start (done38)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45))))

  (:durative-action do_46
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (done28)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46))))

  (:durative-action do_47
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step47)) (at start (done1)) (at start (done20)) (at start (done45)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47))))

  (:durative-action do_48
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step48)) (at start (done20)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48))))

  (:durative-action do_49
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49))))

  (:durative-action do_50
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step50)) (at start (done9)) (at start (done35)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50))))
)
