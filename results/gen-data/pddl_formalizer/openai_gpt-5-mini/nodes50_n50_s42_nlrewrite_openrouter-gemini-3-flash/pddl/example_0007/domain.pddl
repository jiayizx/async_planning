(define (domain cite-annual-report)
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

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (done17)) (at start (done24)) (at start (done46)) (at start (done42)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (done5)) (at start (done42)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (done32)) (at start (done34)) (at start (done40)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (done42)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (done5)) (at start (done42)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (done22)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done43)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step11)) (at start (done2)) (at start (done5)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (done35)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (done18)) (at start (done42)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (done22)) (at start (done36)) (at start (done39)) (at start (done47)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (done2)) (at start (done10)) (at start (done25)) (at start (done37)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (done21)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (done42)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (done42)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step19)) (at start (done22)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step21)) (at start (done37)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (done18)) (at start (done6)) (at start (done30)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step23)) (at start (done32)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (done46)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (done21)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (done35)) (at start (done7)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (done3)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step29)) (at start (done30)) (at start (done37)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step30)) (at start (done7)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step31)) (at start (done7)) (at start (done30)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step32)) (at start (done37)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (done18)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step34)) (at start (done1)) (at start (done5)) (at start (done11)) (at start (done13)) (at start (done20)) (at start (done33)) (at start (done41)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 420)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (done31)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (done28)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (done6)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step39)) (at start (done31)) (at start (done34)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (done7)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step41)) (at start (done17)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step43)) (at start (done2)) (at start (done31)) (at start (done34)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step44)) (at start (done8)) (at start (done10)) (at start (done41)) (at start (done48)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (done25)) (at start (done49)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step47)) (at start (done5)) (at start (done48)) (at start (done45)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (done42)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step49)) (at start (done46)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (done26)) (at start (done33)) (at start (done43)) (at start (done46)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )
)
