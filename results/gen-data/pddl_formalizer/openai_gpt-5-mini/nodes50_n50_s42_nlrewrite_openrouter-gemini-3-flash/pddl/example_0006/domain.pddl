(define (domain university_admission)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (done1)) (at start (done34)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (done39)) (at start (done34)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step4)) (at start (done8)) (at start (done15)) (at start (done28)) (at start (done39)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step5)) (at start (done27)) (at start (done33)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (done9)) (at start (done20)) (at start (done36)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step7)) (at start (done11)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step10)) (at start (done18)) (at start (done20)) (at start (done34)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step11)) (at start (done8)) (at start (done30)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done28)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step13)) (at start (done7)) (at start (done18)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (done1)) (at start (done4)) (at start (done26)) (at start (done31)) (at start (done42)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step16)) (at start (done21)) (at start (done25)) (at start (done35)) (at start (done49)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step17)) (at start (done19)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step19)) (at start (done25)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done9)) (at start (done15)) (at start (done28)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step21)) (at start (done2)) (at start (done46)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step22)) (at start (done7)) (at start (done9)) (at start (done34)) (at start (done35)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step23)) (at start (done48)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step26)) (at start (done12)) (at start (done15)) (at start (done17)) (at start (done24)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step27)) (at start (done38)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (done1)) (at start (done23)) (at start (done28)) (at start (done33)) (at start (done37)) (at start (done42)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (done32)) (at start (done25)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30))))

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step31)) (at start (done5)) (at start (done23)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31))))

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32))))

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step33)) (at start (done7)) (at start (done28)) (at start (done44)) (at start (done46)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33))))

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step34)) (at start (done19)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34))))

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step35)) (at start (done1)) (at start (done24)) (at start (done34)) (at start (done41)) (at start (done46)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35))))

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step36)) (at start (done49)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36))))

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (done38)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37))))

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step38)) (at start (done2)) (at start (done15)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38))))

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (done24)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39))))

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step40)) (at start (done13)) (at start (done15)) (at start (done28)) (at start (done37)) (at start (done42)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40))))

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step41)) (at start (done24)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41))))

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step42)) (at start (done1)) (at start (done19)) (at start (done2)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42))))

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step43)) (at start (done50)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43))))

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step44)) (at start (done6)) (at start (done17)) (at start (done32)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44))))

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step45)) (at start (done35)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45))))

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step46)) (at start (done1)) (at start (done12)) (at start (done28)) (at start (done48)) (at start (done49)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46))))

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step47)) (at start (done36)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47))))

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48))))

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step49)) (at start (done17)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49))))

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step50)) (at start (done22)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50))))
)
