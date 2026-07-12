(define (domain nutella-pancakes)
  (:requirements :durative-actions :typing)
  (:types
    step - object
    s1t s2t s3t s4t s5t s6t s7t s8t s9t s10t
    s11t s12t s13t s14t s15t s16t s17t s18t s19t s20t
    s21t s22t s23t s24t s25t s26t s27t s28t s29t s30t
    s31t s32t s33t s34t s35t s36t s37t s38t s39t s40t - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40))

  (:durative-action purchase-spatula
    :parameters (?s - s1t)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

  (:durative-action sift-flour
    :parameters (?s - s2t)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

  (:durative-action melt-butter
    :parameters (?s - s3t)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

  (:durative-action whisk-wet-and-dry
    :parameters (?s - s4t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p17)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

  (:durative-action crack-eggs
    :parameters (?s - s5t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

  (:durative-action measure-milk
    :parameters (?s - s6t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

  (:durative-action find-mixing-bowls
    :parameters (?s - s7t)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

  (:durative-action grease-griddle
    :parameters (?s - s8t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

  (:durative-action take-nutella
    :parameters (?s - s9t)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

  (:durative-action set-table
    :parameters (?s - s10t)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

  (:durative-action rinse-bowls
    :parameters (?s - s11t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

  (:durative-action plug-in-griddle
    :parameters (?s - s12t)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

  (:durative-action combine-milk-eggs-flour
    :parameters (?s - s13t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p5)) (at start (p6)) (at start (p18)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

  (:durative-action check-baking-powder-date
    :parameters (?s - s14t)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

  (:durative-action stir-melted-butter
    :parameters (?s - s15t)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

  (:durative-action prepare-piping-bag
    :parameters (?s - s16t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p25)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

  (:durative-action gather-salt-sugar
    :parameters (?s - s17t)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

  (:durative-action measure-vanilla
    :parameters (?s - s18t)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

  (:durative-action add-vanilla
    :parameters (?s - s19t)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

  (:durative-action locate-vanilla
    :parameters (?s - s20t)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

  (:durative-action scoop-nutella
    :parameters (?s - s21t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

  (:durative-action flip-pancakes
    :parameters (?s - s22t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

  (:durative-action pour-batter
    :parameters (?s - s23t)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

  (:durative-action warm-nutella
    :parameters (?s - s24t)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

  (:durative-action mix-salt-sugar
    :parameters (?s - s25t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

  (:durative-action whisk-baking-powder
    :parameters (?s - s26t)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

  (:durative-action spread-nutella
    :parameters (?s - s27t)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

  (:durative-action find-flour
    :parameters (?s - s28t)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

  (:durative-action check-grocery-list
    :parameters (?s - s29t)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

  (:durative-action clean-whisk
    :parameters (?s - s30t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

  (:durative-action pipe-nutella-swirl
    :parameters (?s - s31t)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

  (:durative-action wash-hands
    :parameters (?s - s32t)
    :duration (= ?duration 40)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

  (:durative-action clear-counter
    :parameters (?s - s33t)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

  (:durative-action whisk-eggs
    :parameters (?s - s34t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

  (:durative-action prepare-warming-plate
    :parameters (?s - s35t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

  (:durative-action open-flour
    :parameters (?s - s36t)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

  (:durative-action set-serving-spoons
    :parameters (?s - s37t)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p17)) (at start (p25)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

  (:durative-action verify-baking-powder
    :parameters (?s - s38t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

  (:durative-action fill-piping-bag
    :parameters (?s - s39t)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

  (:durative-action preheat-griddle
    :parameters (?s - s40t)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p27)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)