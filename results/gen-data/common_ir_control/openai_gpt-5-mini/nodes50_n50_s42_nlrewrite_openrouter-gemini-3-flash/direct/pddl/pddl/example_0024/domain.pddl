(define (domain find-range)
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
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step1) (done48)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step3) (done12) (done34)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step4) (done6) (done8) (done31) (done47)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 1200)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 1800)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step8) (done7) (done9) (done23) (done29)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step9) (done2)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 720)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step11) (done14)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 7200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step13) (done5) (done33) (done45)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 1500)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step15) (done33)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step16) (done9) (done10) (done13) (done27) (done31) (done40) (done48)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step17) (done44)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 1800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step19) (done2)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 300)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 120)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 600)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step23) (done21)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step24) (done2)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step25) (done22)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step26) (done8)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step27) (done28)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step28) (done6) (done20)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step29) (done18) (done28) (done35)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 3000)
    :condition (at start (and (step_pending step30) (done5)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step31) (done41)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 30)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step33) (done34)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 180)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step35) (done3) (done9) (done19) (done20)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step36) (done29) (done32)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step37) (done41) (done46)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step38) (done23)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step39) (done10) (done44)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 120)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step41) (done6)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step42) (done3) (done13) (done46)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step43) (done20) (done35)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step44) (done12) (done27)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step45) (done34)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step46) (done30)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step47) (done35) (done38)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step48) (done46)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step49) (done8) (done18) (done20) (done26) (done34) (done46) (done34)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step50) (done10) (done14) (done33) (done34)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done50)))
  )
)
