(define (domain apple-sponge)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (apple_sponge_made) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
  )

  (:durative-action sift-flour
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p1)) (at start (step_pending ?x)) (at start (s21)) (at start (s23)))
    :effect (and (at start (not (p1))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
  (:durative-action cream-butter-sugar
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (p2)) (at start (step_pending ?x)) (at start (s12)) (at start (s57)))
    :effect (and (at start (not (p2))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
  (:durative-action peel-apples
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p3)) (at start (step_pending ?x)) (at start (s8)))
    :effect (and (at start (not (p3))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
  (:durative-action fold-dry-into-wet
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (p4)) (at start (step_pending ?x)) (at start (s1)) (at start (s31)) (at start (s39)))
    :effect (and (at start (not (p4))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
  (:durative-action beat-eggs
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p5)) (at start (step_pending ?x)) (at start (s11)) (at start (s16)))
    :effect (and (at start (not (p5))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
  (:durative-action preheat-oven
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (p6)) (at start (step_pending ?x)))
    :effect (and (at start (not (p6))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
  (:durative-action grease-pan
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p7)) (at start (step_pending ?x)))
    :effect (and (at start (not (p7))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
  (:durative-action wash-apples
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p8)) (at start (step_pending ?x)) (at start (s30)))
    :effect (and (at start (not (p8))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
  (:durative-action measure-vanilla
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (p9)) (at start (step_pending ?x)))
    :effect (and (at start (not (p9))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
  (:durative-action check-baking-powder
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p10)) (at start (step_pending ?x)))
    :effect (and (at start (not (p10))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
  (:durative-action crack-eggs
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p11)) (at start (step_pending ?x)) (at start (s54)))
    :effect (and (at start (not (p11))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
  (:durative-action soften-butter
    :parameters (?x - step) :duration (= ?duration 2700)
    :condition (and (at start (p12)) (at start (step_pending ?x)))
    :effect (and (at start (not (p12))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
  (:durative-action zest-lemon
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p13)) (at start (step_pending ?x)) (at start (s51)))
    :effect (and (at start (not (p13))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
  (:durative-action set-aside-shells
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p14)) (at start (step_pending ?x)) (at start (s16)))
    :effect (and (at start (not (p14))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
  (:durative-action measure-sugar
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p15)) (at start (step_pending ?x)) (at start (s53)))
    :effect (and (at start (not (p15))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
  (:durative-action organize-utensils
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p16)) (at start (step_pending ?x)) (at start (s49)))
    :effect (and (at start (not (p16))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
  (:durative-action sift-cornstarch
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p17)) (at start (step_pending ?x)))
    :effect (and (at start (not (p17))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
  (:durative-action whisk-eggs-vanilla
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p18)) (at start (step_pending ?x)) (at start (s5)) (at start (s9)) (at start (s35)))
    :effect (and (at start (not (p18))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
  (:durative-action core-apples
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (p19)) (at start (step_pending ?x)) (at start (s8)) (at start (s12)))
    :effect (and (at start (not (p19))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
  (:durative-action slice-apples
    :parameters (?x - step) :duration (= ?duration 360)
    :condition (and (at start (p20)) (at start (step_pending ?x)) (at start (s5)) (at start (s8)))
    :effect (and (at start (not (p20))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
  (:durative-action measure-flour
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p21)) (at start (step_pending ?x)) (at start (s26)) (at start (s54)))
    :effect (and (at start (not (p21))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
  (:durative-action adjust-oven-rack
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (p22)) (at start (step_pending ?x)) (at start (s52)))
    :effect (and (at start (not (p22))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
  (:durative-action measure-baking-powder
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p23)) (at start (step_pending ?x)))
    :effect (and (at start (not (p23))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
  (:durative-action prepare-damp-cloth
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p24)) (at start (step_pending ?x)) (at start (s16)) (at start (s44)))
    :effect (and (at start (not (p24))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
  (:durative-action clean-mixing-area
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (p25)) (at start (step_pending ?x)) (at start (s26)) (at start (s46)) (at start (s52)) (at start (s53)) (at start (s54)) (at start (s59)))
    :effect (and (at start (not (p25))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
  (:durative-action clear-island
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p26)) (at start (step_pending ?x)) (at start (s37)))
    :effect (and (at start (not (p26))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
  (:durative-action combine-leavening
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p27)) (at start (step_pending ?x)) (at start (s18)) (at start (s23)))
    :effect (and (at start (not (p27))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
  (:durative-action arrange-apple-slices
    :parameters (?x - step) :duration (= ?duration 480)
    :condition (and (at start (p28)) (at start (step_pending ?x)) (at start (s32)) (at start (s44)) (at start (s56)))
    :effect (and (at start (not (p28))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
  (:durative-action add-lemon-zest
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p29)) (at start (step_pending ?x)) (at start (s13)) (at start (s35)) (at start (s44)) (at start (s54)) (at start (s58)))
    :effect (and (at start (not (p29))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
  (:durative-action retrieve-apples
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p30)) (at start (step_pending ?x)))
    :effect (and (at start (not (p30))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
  (:durative-action combine-flour-cornstarch
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p31)) (at start (step_pending ?x)) (at start (s1)) (at start (s10)) (at start (s16)) (at start (s17)) (at start (s35)))
    :effect (and (at start (not (p31))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
  (:durative-action pat-slices-dry
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p32)) (at start (step_pending ?x)) (at start (s8)))
    :effect (and (at start (not (p32))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
  (:durative-action flour-pan-sides
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p33)) (at start (step_pending ?x)) (at start (s17)) (at start (s56)))
    :effect (and (at start (not (p33))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
  (:durative-action toss-apples-lemon
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p34)) (at start (step_pending ?x)) (at start (s3)))
    :effect (and (at start (not (p34))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
  (:durative-action gather-wet-ingredients
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p35)) (at start (step_pending ?x)) (at start (s38)) (at start (s49)) (at start (s53)))
    :effect (and (at start (not (p35))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
  (:durative-action calibrate-scale
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p36)) (at start (step_pending ?x)))
    :effect (and (at start (not (p36))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
  (:durative-action empty-dishwasher
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (p37)) (at start (step_pending ?x)))
    :effect (and (at start (not (p37))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
  (:durative-action check-cinnamon
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p38)) (at start (step_pending ?x)))
    :effect (and (at start (not (p38))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
  (:durative-action combine-butter-sugar
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p39)) (at start (step_pending ?x)) (at start (s2)) (at start (s15)) (at start (s47)))
    :effect (and (at start (not (p39))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
  (:durative-action incorporate-eggs
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (p40)) (at start (step_pending ?x)) (at start (s11)) (at start (s18)) (at start (s54)))
    :effect (and (at start (not (p40))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
  (:durative-action spread-batter
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p41)) (at start (step_pending ?x)) (at start (s2)) (at start (s32)) (at start (s55)))
    :effect (and (at start (not (p41))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (apple_sponge_made))))
  (:durative-action place-scale-flat
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (p42)) (at start (step_pending ?x)) (at start (s36)))
    :effect (and (at start (not (p42))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
  (:durative-action measure-milk
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p43)) (at start (step_pending ?x)) (at start (s58)))
    :effect (and (at start (not (p43))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
  (:durative-action chop-apples
    :parameters (?x - step) :duration (= ?duration 420)
    :condition (and (at start (p44)) (at start (step_pending ?x)) (at start (s19)) (at start (s32)))
    :effect (and (at start (not (p44))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
  (:durative-action put-away-sugar
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p45)) (at start (step_pending ?x)) (at start (s26)) (at start (s53)))
    :effect (and (at start (not (p45))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
  (:durative-action warm-milk
    :parameters (?x - step) :duration (= ?duration 45)
    :condition (and (at start (p46)) (at start (step_pending ?x)) (at start (s11)) (at start (s12)) (at start (s43)))
    :effect (and (at start (not (p46))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
  (:durative-action mix-cinnamon
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p47)) (at start (step_pending ?x)) (at start (s18)) (at start (s56)))
    :effect (and (at start (not (p47))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
  (:durative-action fold-cubed-apples
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p48)) (at start (step_pending ?x)) (at start (s3)) (at start (s43)) (at start (s49)) (at start (s60)))
    :effect (and (at start (not (p48))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
  (:durative-action set-out-bowls
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p49)) (at start (step_pending ?x)) (at start (s30)))
    :effect (and (at start (not (p49))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
  (:durative-action wipe-milk-carton
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (p50)) (at start (step_pending ?x)) (at start (s53)) (at start (s54)))
    :effect (and (at start (not (p50))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s50))))
  (:durative-action pour-milk
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p51)) (at start (step_pending ?x)) (at start (s23)) (at start (s43)) (at start (s44)))
    :effect (and (at start (not (p51))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s51))))
  (:durative-action check-oven-thermometer
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p52)) (at start (step_pending ?x)) (at start (s6)) (at start (s26)))
    :effect (and (at start (not (p52))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s52))))
  (:durative-action weigh-sugar
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p53)) (at start (step_pending ?x)) (at start (s30)))
    :effect (and (at start (not (p53))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s53))))
  (:durative-action sanitize-workspace
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (p54)) (at start (step_pending ?x)) (at start (s16)) (at start (s36)))
    :effect (and (at start (not (p54))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s54))))
  (:durative-action smooth-batter
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (p55)) (at start (step_pending ?x)) (at start (s58)))
    :effect (and (at start (not (p55))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s55))))
  (:durative-action line-pan
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (p56)) (at start (step_pending ?x)) (at start (s42)))
    :effect (and (at start (not (p56))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s56))))
  (:durative-action whisk-dry-ingredients
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p57)) (at start (step_pending ?x)) (at start (s27)))
    :effect (and (at start (not (p57))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s57))))
  (:durative-action find-lemon
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p58)) (at start (step_pending ?x)))
    :effect (and (at start (not (p58))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s58))))
  (:durative-action dust-pan-sugar
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p59)) (at start (step_pending ?x)) (at start (s7)))
    :effect (and (at start (not (p59))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s59))))
  (:durative-action check-egg-consistency
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (p60)) (at start (step_pending ?x)) (at start (s5)))
    :effect (and (at start (not (p60))) (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s60))))
)