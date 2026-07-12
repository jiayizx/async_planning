(define (domain panic-treatment)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step) (is5 ?s - step)
    (is6 ?s - step) (is7 ?s - step) (is8 ?s - step) (is9 ?s - step) (is10 ?s - step)
    (is11 ?s - step) (is12 ?s - step) (is13 ?s - step) (is14 ?s - step) (is15 ?s - step)
    (is16 ?s - step) (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
    (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step) (is25 ?s - step)
    (is26 ?s - step) (is27 ?s - step) (is28 ?s - step) (is29 ?s - step) (is30 ?s - step)
    (is31 ?s - step) (is32 ?s - step) (is33 ?s - step) (is34 ?s - step) (is35 ?s - step)
    (is36 ?s - step) (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
    (is41 ?s - step) (is42 ?s - step) (is43 ?s - step) (is44 ?s - step) (is45 ?s - step)
    (is46 ?s - step) (is47 ?s - step) (is48 ?s - step) (is49 ?s - step) (is50 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  )

  (:durative-action do-step1
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is1 ?s)) (at start (step_pending ?s)) (at start (p26)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action do-step2
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is2 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action do-step3
    :parameters (?s - step) :duration (= ?duration 4838400)
    :condition (and (at start (is3 ?s)) (at start (step_pending ?s)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action do-step4
    :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (is4 ?s)) (at start (step_pending ?s)) (at start (p2)) (at start (p6)) (at start (p30)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action do-step5
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is5 ?s)) (at start (step_pending ?s)) (at start (p13)) (at start (p16)) (at start (p17)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action do-step6
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is6 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action do-step7
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is7 ?s)) (at start (step_pending ?s)) (at start (p13)) (at start (p23)) (at start (p34)) (at start (p41)) (at start (p42)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action do-step8
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (is8 ?s)) (at start (step_pending ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action do-step9
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is9 ?s)) (at start (step_pending ?s)) (at start (p2)) (at start (p6)) (at start (p16)) (at start (p32)) (at start (p35)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action do-step10
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (is10 ?s)) (at start (step_pending ?s)) (at start (p6)) (at start (p26)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action do-step11
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (is11 ?s)) (at start (step_pending ?s)) (at start (p27)) (at start (p33)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action do-step12
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is12 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p8)) (at start (p14)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action do-step13
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is13 ?s)) (at start (step_pending ?s)) (at start (p35)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action do-step14
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (is14 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action do-step15
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is15 ?s)) (at start (step_pending ?s)) (at start (p14)) (at start (p16)) (at start (p28)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action do-step16
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is16 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action do-step17
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (is17 ?s)) (at start (step_pending ?s)) (at start (p27)) (at start (p31)) (at start (p46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action do-step18
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (is18 ?s)) (at start (step_pending ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action do-step19
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is19 ?s)) (at start (step_pending ?s)) (at start (p12)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action do-step20
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (is20 ?s)) (at start (step_pending ?s)) (at start (p17)) (at start (p27)) (at start (p33)) (at start (p35)) (at start (p37)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action do-step21
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is21 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action do-step22
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is22 ?s)) (at start (step_pending ?s)) (at start (p6)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action do-step23
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is23 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action do-step24
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is24 ?s)) (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action do-step25
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (is25 ?s)) (at start (step_pending ?s)) (at start (p3)) (at start (p24)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action do-step26
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is26 ?s)) (at start (step_pending ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action do-step27
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is27 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action do-step28
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is28 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action do-step29
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is29 ?s)) (at start (step_pending ?s)) (at start (p3)) (at start (p35)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action do-step30
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (is30 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action do-step31
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is31 ?s)) (at start (step_pending ?s)) (at start (p25)) (at start (p30)) (at start (p44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action do-step32
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (is32 ?s)) (at start (step_pending ?s)) (at start (p21)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action do-step33
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is33 ?s)) (at start (step_pending ?s)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action do-step34
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is34 ?s)) (at start (step_pending ?s)) (at start (p31)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action do-step35
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (is35 ?s)) (at start (step_pending ?s)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action do-step36
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is36 ?s)) (at start (step_pending ?s)) (at start (p8)) (at start (p11)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action do-step37
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (is37 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action do-step38
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (is38 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action do-step39
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (is39 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action do-step40
    :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (is40 ?s)) (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action do-step41
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is41 ?s)) (at start (step_pending ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action do-step42
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (is42 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action do-step43
    :parameters (?s - step) :duration (= ?duration 2592000)
    :condition (and (at start (is43 ?s)) (at start (step_pending ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action do-step44
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is44 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action do-step45
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (is45 ?s)) (at start (step_pending ?s)) (at start (p3)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action do-step46
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (is46 ?s)) (at start (step_pending ?s)) (at start (p21)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action do-step47
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is47 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action do-step48
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (is48 ?s)) (at start (step_pending ?s)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action do-step49
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (is49 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p27)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action do-step50
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (is50 ?s)) (at start (step_pending ?s)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)