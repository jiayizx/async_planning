(define (domain fry-dandelions)
 (:requirements :typing :durative-actions)
 (:types step st1 st2 st3 st4 st5 st6 st7 st8 st9 st10 st11 st12 st13 st14 st15 st16 st17 st18 st19 st20 st21 st22 st23 st24 st25 st26 st27 st28 st29 st30 st31 st32 st33 st34 st35 st36 st37 st38 st39 st40 st41 st42 st43 st44 st45 st46 st47 st48 st49 st50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (served_dandelions) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action gather-basket
  :parameters (?s - st1) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action set-table
  :parameters (?s - st2) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action serve-dandelions
  :parameters (?s - st3) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p18)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served_dandelions))))
 (:durative-action heat-oil
  :parameters (?s - st4) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p16)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action pat-flowers-dry
  :parameters (?s - st5) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action locate-patch
  :parameters (?s - st6) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action dip-in-batter
  :parameters (?s - st7) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p13)) (at start (p21)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action harvest-blossoms
  :parameters (?s - st8) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action measure-flour
  :parameters (?s - st9) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action pluck-sepals
  :parameters (?s - st10) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action add-salt
  :parameters (?s - st11) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p42)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action whisk-dry-mix
  :parameters (?s - st12) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action crack-eggs
  :parameters (?s - st13) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action check-oil-temperature
  :parameters (?s - st14) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action sift-cornmeal
  :parameters (?s - st15) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action pour-oil
  :parameters (?s - st16) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action retrieve-oil
  :parameters (?s - st17) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action dust-with-flour
  :parameters (?s - st18) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action clean-batter-station
  :parameters (?s - st19) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p27)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action drain-on-rack
  :parameters (?s - st20) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action rinse-heads
  :parameters (?s - st21) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action spin-flowers
  :parameters (?s - st22) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action find-bowls
  :parameters (?s - st23) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action sort-harvest
  :parameters (?s - st24) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action prepare-sauce
  :parameters (?s - st25) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (p37)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action ready-plates
  :parameters (?s - st26) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action combine-wet-dry
  :parameters (?s - st27) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p15)) (at start (p38)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action walk-to-garden
  :parameters (?s - st28) :duration (= ?duration 240)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action shake-dirt
  :parameters (?s - st29) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action soak-blossoms
  :parameters (?s - st30) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action dredge-breadcrumbs
  :parameters (?s - st31) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action fold-napkins
  :parameters (?s - st32) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action set-forks
  :parameters (?s - st33) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p26)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action beat-eggs
  :parameters (?s - st34) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action compost-stems
  :parameters (?s - st35) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action wipe-counter
  :parameters (?s - st36) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action peel-garlic
  :parameters (?s - st37) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action pour-water
  :parameters (?s - st38) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action lay-cooling-tray
  :parameters (?s - st39) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action clear-stove
  :parameters (?s - st40) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action final-cornmeal-layer
  :parameters (?s - st41) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p7)) (at start (p14)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action measure-paprika
  :parameters (?s - st42) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action whisk-eggs-milk
  :parameters (?s - st43) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action organize-breading
  :parameters (?s - st44) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p34)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action fry-batches
  :parameters (?s - st45) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action place-in-oil
  :parameters (?s - st46) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action trim-stems
  :parameters (?s - st47) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action air-out-flowers
  :parameters (?s - st48) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action season-flowers
  :parameters (?s - st49) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action add-black-pepper
  :parameters (?s - st50) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)