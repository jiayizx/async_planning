(define (domain breadfruit-chips)
  (:requirements :durative-actions :typing)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
    t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
    t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40))

  (:durative-action season-chips
    :parameters (?s - t1)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

  (:durative-action serve-chips
    :parameters (?s - t2)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p27)) (at start (p35)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

  (:durative-action peel-breadfruit
    :parameters (?s - t3)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p19)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

  (:durative-action sharpen-mandoline
    :parameters (?s - t4)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

  (:durative-action core-breadfruit
    :parameters (?s - t5)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p25)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

  (:durative-action check-ripeness
    :parameters (?s - t6)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

  (:durative-action harvest-breadfruit
    :parameters (?s - t7)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

  (:durative-action quarter-breadfruit
    :parameters (?s - t8)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p29)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

  (:durative-action soak-slices
    :parameters (?s - t9)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

  (:durative-action drain-oil
    :parameters (?s - t10)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p23)) (at start (p30)) (at start (p36)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

  (:durative-action plug-in-fryer
    :parameters (?s - t11)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

  (:durative-action monitor-oil-temperature
    :parameters (?s - t12)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

  (:durative-action maintain-temperature
    :parameters (?s - t13)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

  (:durative-action wash-breadfruit
    :parameters (?s - t14)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p19)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

  (:durative-action scrub-breadfruit
    :parameters (?s - t15)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

  (:durative-action slice-breadfruit
    :parameters (?s - t16)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p19)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

  (:durative-action deep-fry-batches
    :parameters (?s - t17)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

  (:durative-action remove-brown-spots
    :parameters (?s - t18)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p26)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

  (:durative-action wipe-latex
    :parameters (?s - t19)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

  (:durative-action pour-oil
    :parameters (?s - t20)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

  (:durative-action set-up-frying-station
    :parameters (?s - t21)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

  (:durative-action pat-slices-dry
    :parameters (?s - t22)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

  (:durative-action arrange-slices
    :parameters (?s - t23)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p28)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

  (:durative-action clear-workspace
    :parameters (?s - t24)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

  (:durative-action gather-cutting-tools
    :parameters (?s - t25)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

  (:durative-action rinse-peeled-fruit
    :parameters (?s - t26)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

  (:durative-action sanitize-cutting-board
    :parameters (?s - t27)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

  (:durative-action remove-seeds
    :parameters (?s - t28)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

  (:durative-action prepare-peel-bowl
    :parameters (?s - t29)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

  (:durative-action preheat-oil
    :parameters (?s - t30)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

  (:durative-action inspect-thickness
    :parameters (?s - t31)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p5)) (at start (p6)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

  (:durative-action coat-with-cornstarch
    :parameters (?s - t32)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

  (:durative-action sift-excess-starch
    :parameters (?s - t33)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

  (:durative-action prepare-cooling-rack
    :parameters (?s - t34)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p16)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

  (:durative-action sort-slices
    :parameters (?s - t35)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p15)) (at start (p16)) (at start (p23)) (at start (p26)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

  (:durative-action fry-until-crisp
    :parameters (?s - t36)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p9)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

  (:durative-action shake-off-oil
    :parameters (?s - t37)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

  (:durative-action taste-sample
    :parameters (?s - t38)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

  (:durative-action buy-high-smoke-point-oil
    :parameters (?s - t39)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

  (:durative-action put-on-apron
    :parameters (?s - t40)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)