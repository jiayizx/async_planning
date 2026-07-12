(define (domain butterfly-pet)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step)
    (is5 ?s - step) (is6 ?s - step) (is7 ?s - step) (is8 ?s - step)
    (is9 ?s - step) (is10 ?s - step) (is11 ?s - step) (is12 ?s - step)
    (is13 ?s - step) (is14 ?s - step) (is15 ?s - step) (is16 ?s - step)
    (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
    (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step)
    (is25 ?s - step) (is26 ?s - step) (is27 ?s - step) (is28 ?s - step)
    (is29 ?s - step) (is30 ?s - step) (is31 ?s - step) (is32 ?s - step)
    (is33 ?s - step) (is34 ?s - step) (is35 ?s - step) (is36 ?s - step)
    (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  )

  (:durative-action do_step1
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (p26)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action do_step2
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (p9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action do_step3
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (p14)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action do_step4
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action do_step5
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (p1)) (at start (p16)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action do_step6
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (p21)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action do_step7
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action do_step8
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is8 ?s)) (at start (p32)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action do_step9
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (p36)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action do_step10
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (p22)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action do_step11
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (p30)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action do_step12
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action do_step13
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (p4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action do_step14
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (p17)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action do_step15
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (p18)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action do_step16
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action do_step17
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action do_step18
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action do_step19
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action do_step20
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (p5)) (at start (p8)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action do_step21
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action do_step22
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action do_step23
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action do_step24
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (p7)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action do_step25
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (p14)) (at start (p16)) (at start (p18)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action do_step26
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (p13)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action do_step27
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (p26)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action do_step28
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (p8)) (at start (p11)) (at start (p21)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action do_step29
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action do_step30
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action do_step31
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is31 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action do_step32
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is32 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action do_step33
    :parameters (?s - step) :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action do_step34
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (p32)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action do_step35
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action do_step36
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is36 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action do_step37
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action do_step38
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (p6)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action do_step39
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (p13)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action do_step40
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is40 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)