(define (domain learn_whistle)
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
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done1))
    )
  )

  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  (:durative-action do-step3
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  (:durative-action do-step4
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  (:durative-action do-step5
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done6)) (at start (done15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  (:durative-action do-step6
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  (:durative-action do-step7
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  (:durative-action do-step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  (:durative-action do-step9
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  (:durative-action do-step10
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  (:durative-action do-step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done14)) (at start (done44)) (at start (done40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  (:durative-action do-step12
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  (:durative-action do-step13
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done10)) (at start (done27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  (:durative-action do-step14
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  (:durative-action do-step15
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )

  (:durative-action do-step16
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16)))
  )

  (:durative-action do-step17
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17)))
  )

  (:durative-action do-step18
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18)))
  )

  (:durative-action do-step19
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done3)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19)))
  )

  (:durative-action do-step20
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done7)) (at start (done23)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20)))
  )

  (:durative-action do-step21
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21)))
  )

  (:durative-action do-step22
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done7)) (at start (done19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22)))
  )

  (:durative-action do-step23
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (done42)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23)))
  )

  (:durative-action do-step24
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24)))
  )

  (:durative-action do-step25
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25)))
  )

  (:durative-action do-step26
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done11)) (at start (done33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26)))
  )

  (:durative-action do-step27
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27)))
  )

  (:durative-action do-step28
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28)))
  )

  (:durative-action do-step29
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29)))
  )

  (:durative-action do-step30
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30)))
  )

  (:durative-action do-step31
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done12)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31)))
  )

  (:durative-action do-step32
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (done43)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32)))
  )

  (:durative-action do-step33
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33)))
  )

  (:durative-action do-step34
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done12)) (at start (done43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34)))
  )

  (:durative-action do-step35
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35)))
  )

  (:durative-action do-step36
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36)))
  )

  (:durative-action do-step37
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37)))
  )

  (:durative-action do-step38
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38)))
  )

  (:durative-action do-step39
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39)))
  )

  (:durative-action do-step40
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40)))
  )

  (:durative-action do-step41
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (done1)) (at start (done20)) (at start (done38)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done41)))
  )

  (:durative-action do-step42
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done42)))
  )

  (:durative-action do-step43
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (done26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done43)))
  )

  (:durative-action do-step44
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done44)))
  )

  (:durative-action do-step45
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done45)))
  )

  (:durative-action do-step46
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done46)))
  )

  (:durative-action do-step47
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done6)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done47)))
  )

  (:durative-action do-step48
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done48)))
  )

  (:durative-action do-step49
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done15)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done49)))
  )

  (:durative-action do-step50
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done50)))
  )

)
