(define (domain house_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_p1)
    (done_p2)
    (done_p3)
    (done_p4)
    (done_p5)
    (done_p6)
    (done_p7)
    (done_p8)
    (done_p9)
    (done_p10)
    (done_p11)
    (done_p12)
    (done_p13)
    (done_p14)
    (done_p15)
    (done_p16)
    (done_p17)
    (done_p18)
    (done_p19)
    (done_p20)
    (done_p21)
    (done_p22)
    (done_p23)
    (done_p24)
    (done_p25)
    (done_p26)
    (done_p27)
    (done_p28)
    (done_p29)
    (done_p30)
    (done_p31)
    (done_p32)
    (done_p33)
    (done_p34)
    (done_p35)
    (done_p36)
    (done_p37)
    (done_p38)
    (done_p39)
    (done_p40)
    (done_p41)
    (done_p42)
    (done_p43)
    (done_p44)
    (done_p45)
    (done_p46)
    (done_p47)
    (done_p48)
    (done_p49)
    (done_p50)
  )

  ; 50 durative actions, one per step

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (done_p12) (done_p13) (done_p17) (done_p21) (done_p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (done_p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (done_p17) (done_p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (done_p14) (done_p18) (done_p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (done_p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending ?s) (done_p31) (done_p33) (done_p34) (done_p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (done_p15) (done_p22) (done_p38) (done_p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (done_p4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (done_p17) (done_p38) (done_p46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (done_p11) (done_p14) (done_p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (done_p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (done_p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p20)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (and (step_pending ?s) (done_p24) (done_p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p21)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p22)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (done_p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p23)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (at start (and (step_pending ?s) (done_p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p24)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (done_p2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p25)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p26)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p27)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p28)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (done_p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p29)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p30)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p31)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p32)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (done_p8) (done_p26) (done_p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p33)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p34)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p35)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p36)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (done_p25) (done_p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p37)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (done_p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p38)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p39)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (and (step_pending ?s) (done_p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p40)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p41)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (done_p2) (done_p16) (done_p33) (done_p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p42)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p43)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (done_p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p44)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (done_p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p45)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (done_p2) (done_p5) (done_p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p46)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p47)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (done_p5) (done_p6) (done_p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p48)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p7) (done_p24) (done_p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p49)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (done_p8) (done_p15) (done_p16) (done_p21) (done_p33) (done_p38) (done_p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_p50)))
  )
)
