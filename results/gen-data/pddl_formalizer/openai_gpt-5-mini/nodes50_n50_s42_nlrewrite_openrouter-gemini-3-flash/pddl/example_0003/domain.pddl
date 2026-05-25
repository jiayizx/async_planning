(define (domain learn-whistle)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-1)
    (done-2)
    (done-3)
    (done-4)
    (done-5)
    (done-6)
    (done-7)
    (done-8)
    (done-9)
    (done-10)
    (done-11)
    (done-12)
    (done-13)
    (done-14)
    (done-15)
    (done-16)
    (done-17)
    (done-18)
    (done-19)
    (done-20)
    (done-21)
    (done-22)
    (done-23)
    (done-24)
    (done-25)
    (done-26)
    (done-27)
    (done-28)
    (done-29)
    (done-30)
    (done-31)
    (done-32)
    (done-33)
    (done-34)
    (done-35)
    (done-36)
    (done-37)
    (done-38)
    (done-39)
    (done-40)
    (done-41)
    (done-42)
    (done-43)
    (done-44)
    (done-45)
    (done-46)
    (done-47)
    (done-48)
    (done-49)
    (done-50)
    (learned_whistle)
  )

  (:durative-action do-step1
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-2)) (at start (done-35)) (at start (done-39)) (at start (done-43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-1)))
  )

  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done-21)) (at start (done-48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-2)))
  )

  (:durative-action do-step3
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-3)))
  )

  (:durative-action do-step4
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-4)))
  )

  (:durative-action do-step5
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-4)) (at start (done-6)) (at start (done-15)) (at start (done-32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-5)))
  )

  (:durative-action do-step6
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done-48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-6)))
  )

  (:durative-action do-step7
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-7)))
  )

  (:durative-action do-step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done-40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-8)))
  )

  (:durative-action do-step9
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done-4)) (at start (done-5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-9)))
  )

  (:durative-action do-step10
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (done-43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-10)))
  )

  (:durative-action do-step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done-14)) (at start (done-40)) (at start (done-44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-11)))
  )

  (:durative-action do-step12
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done-27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-12)))
  )

  (:durative-action do-step13
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-4)) (at start (done-10)) (at start (done-27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-13)))
  )

  (:durative-action do-step14
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-14)))
  )

  (:durative-action do-step15
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-15)))
  )

  (:durative-action do-step16
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (done-47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-16)))
  )

  (:durative-action do-step17
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-17)))
  )

  (:durative-action do-step18
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-18)))
  )

  (:durative-action do-step19
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-3)) (at start (done-13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-19)))
  )

  (:durative-action do-step20
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-7)) (at start (done-23)) (at start (done-37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-20)))
  )

  (:durative-action do-step21
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-21)))
  )

  (:durative-action do-step22
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done-7)) (at start (done-19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-22)))
  )

  (:durative-action do-step23
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (done-42)) (at start (done-48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-23)))
  )

  (:durative-action do-step24
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done-18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-24)))
  )

  (:durative-action do-step25
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done-50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-25)))
  )

  (:durative-action do-step26
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-11)) (at start (done-33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-26)))
  )

  (:durative-action do-step27
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done-38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-27)))
  )

  (:durative-action do-step28
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done-38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-28)))
  )

  (:durative-action do-step29
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done-42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-29)))
  )

  (:durative-action do-step30
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done-7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-30)))
  )

  (:durative-action do-step31
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done-12)) (at start (done-28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-31)))
  )

  (:durative-action do-step32
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (done-43)) (at start (done-48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-32)))
  )

  (:durative-action do-step33
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done-4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-33)))
  )

  (:durative-action do-step34
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-12)) (at start (done-43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-34)))
  )

  (:durative-action do-step35
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-35)))
  )

  (:durative-action do-step36
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-4)) (at start (done-38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-36)))
  )

  (:durative-action do-step37
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-37)))
  )

  (:durative-action do-step38
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-38)))
  )

  (:durative-action do-step39
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-39)))
  )

  (:durative-action do-step40
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done-38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-40)))
  )

  (:durative-action do-step41
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (done-1)) (at start (done-20)) (at start (done-38)) (at start (done-48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-41)))
  )

  (:durative-action do-step42
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done-44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-42)))
  )

  (:durative-action do-step43
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (done-26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-43)))
  )

  (:durative-action do-step44
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-44)))
  )

  (:durative-action do-step45
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done-25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-45)) (at end (learned_whistle)))
  )

  (:durative-action do-step46
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done-8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-46)))
  )

  (:durative-action do-step47
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (done-6)) (at start (done-14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-47)))
  )

  (:durative-action do-step48
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (done-13)) (at start (done-26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-48)))
  )

  (:durative-action do-step49
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done-15)) (at start (done-18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-49)))
  )

  (:durative-action do-step50
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done-17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-50)))
  )
)
