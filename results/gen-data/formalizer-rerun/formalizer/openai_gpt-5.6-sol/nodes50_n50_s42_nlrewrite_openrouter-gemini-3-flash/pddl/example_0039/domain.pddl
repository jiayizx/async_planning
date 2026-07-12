(define (domain shower-before-work)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
    t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
    t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
    t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

  (:durative-action check-water-heater
    :parameters (?s - t1) :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action step-into-bathtub
    :parameters (?s - t2) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p25)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action locate-shampoo
    :parameters (?s - t3) :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action begin-rinsing-hair
    :parameters (?s - t4) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action pick-up-loofah
    :parameters (?s - t5) :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action adjust-shower-head
    :parameters (?s - t6) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action scrub-back-of-neck
    :parameters (?s - t7) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action check-water-temperature
    :parameters (?s - t8) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action apply-face-wash
    :parameters (?s - t9) :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action turn-on-exhaust-fan
    :parameters (?s - t10) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action grab-washcloth
    :parameters (?s - t11) :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action wash-underarms
    :parameters (?s - t12) :duration (= ?duration 40)
    :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p19)) (at start (p21)) (at start (p44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action find-body-scrub
    :parameters (?s - t13) :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action rinse-all-soap-suds
    :parameters (?s - t14) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action wet-loofah
    :parameters (?s - t15) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p20)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action remove-pajamas
    :parameters (?s - t16) :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action squeeze-conditioner
    :parameters (?s - t17) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action reach-for-soap
    :parameters (?s - t18) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action set-water-mixer
    :parameters (?s - t19) :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p23)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action walk-into-bathroom
    :parameters (?s - t20) :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action close-shower-curtain
    :parameters (?s - t21) :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action scrub-left-leg
    :parameters (?s - t22) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action test-spray-pressure
    :parameters (?s - t23) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action open-body-wash
    :parameters (?s - t24) :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action lay-down-bath-mat
    :parameters (?s - t25) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action apply-conditioner
    :parameters (?s - t26) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p21)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action squeeze-shampoo
    :parameters (?s - t27) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action wash-chest-and-torso
    :parameters (?s - t28) :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action rinse-face
    :parameters (?s - t29) :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p25)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action set-out-towel
    :parameters (?s - t30) :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action unlock-shower-door
    :parameters (?s - t31) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action put-clothes-in-hamper
    :parameters (?s - t32) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action clear-steam-from-mirror
    :parameters (?s - t33) :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action final-body-rinse
    :parameters (?s - t34) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p36)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action apply-body-wash-to-cloth
    :parameters (?s - t35) :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action scrub-elbows
    :parameters (?s - t36) :duration (= ?duration 40)
    :condition (and (at start (step_pending ?s)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action wash-feet
    :parameters (?s - t37) :duration (= ?duration 50)
    :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p33)) (at start (p42)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action enter-master-bedroom
    :parameters (?s - t38) :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action turn-shower-on
    :parameters (?s - t39) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action wait-for-clear-water
    :parameters (?s - t40) :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action lather-loofah
    :parameters (?s - t41) :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p8)) (at start (p15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action pour-shampoo-on-head
    :parameters (?s - t42) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action adjust-drain-stopper
    :parameters (?s - t43) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action scrub-right-arm
    :parameters (?s - t44) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action put-on-shower-cap
    :parameters (?s - t45) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action rinse-torso
    :parameters (?s - t46) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action remove-jewelry
    :parameters (?s - t47) :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p20)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action hang-bathrobe
    :parameters (?s - t48) :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action check-bathroom-clock
    :parameters (?s - t49) :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action dry-face
    :parameters (?s - t50) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)