(define (domain roof-shingle-measurement)
 (:requirements :typing :durative-actions)
 (:types step - object t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40))
 (:durative-action sketch-roof
  :parameters (?s - t1) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action research-shingle-price
  :parameters (?s - t2) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action locate-ladder
  :parameters (?s - t3) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action calculate-bundles
  :parameters (?s - t4) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p7)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action inspect-eaves
  :parameters (?s - t5) :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action check-chimney-flashing
  :parameters (?s - t6) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action determine-roof-pitch
  :parameters (?s - t7) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action finalize-materials-order
  :parameters (?s - t8) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p31)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action measure-ridge-lines
  :parameters (?s - t9) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action secure-ladder
  :parameters (?s - t10) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action record-square-footage
  :parameters (?s - t11) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p7)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action count-vent-boots
  :parameters (?s - t12) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action verify-delivery-fee
  :parameters (?s - t13) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action measure-rake-edges
  :parameters (?s - t14) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action measure-chimney-base
  :parameters (?s - t15) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action clear-roof-valleys
  :parameters (?s - t16) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action climb-to-roof-peak
  :parameters (?s - t17) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action check-weather
  :parameters (?s - t18) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action measure-main-roof-planes
  :parameters (?s - t19) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action calculate-hip-ridge-footage
  :parameters (?s - t20) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p9)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action put-on-safety-harness
  :parameters (?s - t21) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action measure-drip-edge
  :parameters (?s - t22) :duration (= ?duration 2100)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action find-harness-kit
  :parameters (?s - t23) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action measure-roof-valleys
  :parameters (?s - t24) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action note-attic-fans
  :parameters (?s - t25) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action inspect-underlayment
  :parameters (?s - t26) :duration (= ?duration 1500)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action measure-skylight-curbs
  :parameters (?s - t27) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action set-up-ladder
  :parameters (?s - t28) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action calculate-starter-strips
  :parameters (?s - t29) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p16)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action look-up-deck-capacity
  :parameters (?s - t30) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action measure-shingle-overhang
  :parameters (?s - t31) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action photograph-transitions
  :parameters (?s - t32) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action compare-store-prices
  :parameters (?s - t33) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action calculate-valley-flashing
  :parameters (?s - t34) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action determine-shingle-exposure
  :parameters (?s - t35) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action sweep-gutters-area
  :parameters (?s - t36) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action measure-gable-width
  :parameters (?s - t37) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action check-gutter-granules
  :parameters (?s - t38) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action schedule-delivery
  :parameters (?s - t39) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action measure-garage-roof
  :parameters (?s - t40) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p5)) (at start (p12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40)))))