(define (domain water-rocket)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step)
  (slot5 ?s - step) (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step)
  (slot9 ?s - step) (slot10 ?s - step) (slot11 ?s - step) (slot12 ?s - step)
  (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step) (slot16 ?s - step)
  (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
  (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step)
  (slot25 ?s - step) (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step)
  (slot29 ?s - step) (slot30 ?s - step) (slot31 ?s - step) (slot32 ?s - step)
  (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step) (slot36 ?s - step)
  (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
 )

 (:durative-action attach-nose-cone
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot1 ?s)) (at start (p14)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action research-fin-designs
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (slot2 ?s)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action cut-plastic-fins
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (slot3 ?s)) (at start (p7)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action glue-fins
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (slot4 ?s)) (at start (p7)) (at start (p12)) (at start (p13)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action gather-tools
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot5 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action final-inspection
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot6 ?s)) (at start (p37)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action buy-bottles
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (slot7 ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action set-up-launch-pad
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot8 ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action sand-fin-edges
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot9 ?s)) (at start (p3)) (at start (p23)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action drill-cap-hole
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot10 ?s)) (at start (p5)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action sketch-blueprint
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (slot11 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action measure-center-of-gravity
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot12 ?s)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action apply-sealant
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (slot13 ?s)) (at start (p9)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action insert-tire-valve
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot14 ?s)) (at start (p10)) (at start (p32)) (at start (p35)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action fill-with-water
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (slot15 ?s)) (at start (p9)) (at start (p12)) (at start (p22)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action decorate-fuselage
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot16 ?s)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action check-weather
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot17 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action reinforce-bottle
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot18 ?s)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action connect-pump-hose
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (slot19 ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action clear-launch-area
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot20 ?s)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action pressurize-rocket
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (slot21 ?s)) (at start (p24)) (at start (p35)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action cut-tennis-ball
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot22 ?s)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action mark-fin-lines
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot23 ?s)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action weigh-components
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot24 ?s)) (at start (p3)) (at start (p11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action mold-clay-tip
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot25 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action clean-bottles
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot26 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action secure-nose-weight
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot27 ?s)) (at start (p21)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action cut-second-bottle
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot28 ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action check-valve-seal
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot29 ?s)) (at start (p10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action place-on-launch-pipe
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (slot30 ?s)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action watch-safety-tutorial
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot31 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action wash-bottles
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (slot32 ?s)) (at start (p7)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action pull-release-cord
  :parameters (?s - step) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (slot33 ?s)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action calculate-launch-pressure
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (slot34 ?s)) (at start (p11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action purchase-tire-valve
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (slot35 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action lubricate-o-ring
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (slot36 ?s)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action dry-bottles
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot37 ?s)) (at start (p7)) (at start (p12)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action trim-nose-cone
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (slot38 ?s)) (at start (p11)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action test-trigger
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (slot39 ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action put-on-goggles
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (slot40 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)