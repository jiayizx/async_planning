(define (domain school-preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
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
    (slot41 ?s - step) (slot42 ?s - step) (slot43 ?s - step) (slot44 ?s - step)
    (slot45 ?s - step) (slot46 ?s - step) (slot47 ?s - step) (slot48 ?s - step)
    (slot49 ?s - step) (slot50 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  )

  (:durative-action check-weather
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action select-clean-socks
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot2 ?s)) (at start (p11)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action iron-shirt
    :parameters (?s - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (slot3 ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action pack-lunch-box
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot4 ?s)) (at start (p5)) (at start (p9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action prepare-sandwich
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot5 ?s)) (at start (p9)) (at start (p21)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action put-on-uniform
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (slot6 ?s)) (at start (p3)) (at start (p7)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action take-shower
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot7 ?s)) (at start (p19)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action dry-hair
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (slot8 ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action gather-lunch-ingredients
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot9 ?s)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action find-school-shoes
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (slot10 ?s)) (at start (p11)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action wake-up
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action decide-umbrella
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot12 ?s)) (at start (p1)) (at start (p14)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action locate-house-keys
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot13 ?s)) (at start (p24)) (at start (p30)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action check-timetable
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action find-gym-clothes
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (slot15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action check-homework
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot16 ?s)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action use-bathroom
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (slot17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action walk-out-front-door
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot18 ?s)) (at start (p29)) (at start (p30)) (at start (p39)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action pick-weather-outfit
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (slot19 ?s)) (at start (p1)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action attach-keys-lanyard
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot20 ?s)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action put-on-undershirt
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot21 ?s)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action tie-shoelaces
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot22 ?s)) (at start (p10)) (at start (p28)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action grab-bus-pass
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot23 ?s)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action find-wallet
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (slot24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action apply-deodorant
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot25 ?s)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action find-wristwatch
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action tuck-in-shirt
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot27 ?s)) (at start (p3)) (at start (p25)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action put-on-trousers
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot28 ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action pack-school-bag
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot29 ?s)) (at start (p9)) (at start (p10)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action check-phone-charger
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action brush-teeth
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot31 ?s)) (at start (p7)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action pocket-bus-pass
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot32 ?s)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action refill-water-bottle
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot33 ?s)) (at start (p29)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action check-gym-bag
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot34 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action grab-jacket
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot35 ?s)) (at start (p1)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action stretch-muscles
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot36 ?s)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action put-on-blazer
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot37 ?s)) (at start (p2)) (at start (p8)) (at start (p21)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action check-mirror
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot38 ?s)) (at start (p8)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action find-face-mask
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot39 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action find-glasses
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot40 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action turn-off-alarm
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (slot41 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action morning-exercises
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot42 ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action lock-bedroom-door
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot43 ?s)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action pocket-water-bottle
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot44 ?s)) (at start (p33)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action ensure-textbooks-packed
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (slot45 ?s)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action final-reflection-check
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (slot46 ?s)) (at start (p7)) (at start (p25)) (at start (p38)) (at start (p47)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action pack-gym-bag
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (slot47 ?s)) (at start (p15)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action hallway-mirror-check
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot48 ?s)) (at start (p2)) (at start (p11)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action put-on-backpack
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (slot49 ?s)) (at start (p39)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action apply-hair-gel
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot50 ?s)) (at start (p8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)