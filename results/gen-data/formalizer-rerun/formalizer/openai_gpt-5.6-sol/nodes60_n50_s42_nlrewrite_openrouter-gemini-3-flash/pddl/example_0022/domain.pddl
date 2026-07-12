(define (domain family-dinner)
  (:requirements :typing :durative-actions)
  (:types step - object s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 - step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
    (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
    (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59)
    (dinner_enjoyed)
  )

  (:durative-action design-menu
    :parameters (?s - s1) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
  (:durative-action clean-floor
    :parameters (?s - s2) :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
  (:durative-action invite-family
    :parameters (?s - s3) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
  (:durative-action buy-spices
    :parameters (?s - s4) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
  (:durative-action set-table
    :parameters (?s - s5) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d54)) (at start (d55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
  (:durative-action sharpen-knives
    :parameters (?s - s6) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
  (:durative-action serve-main-course
    :parameters (?s - s7) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d16)) (at start (d19)) (at start (d22)) (at start (d34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
  (:durative-action pick-herbs
    :parameters (?s - s8) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
  (:durative-action chop-vegetables
    :parameters (?s - s9) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
  (:durative-action prepare-marinade
    :parameters (?s - s10) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d32)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
  (:durative-action check-pantry
    :parameters (?s - s11) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
  (:durative-action preheat-oven
    :parameters (?s - s12) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d34)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
  (:durative-action light-candles
    :parameters (?s - s13) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d24)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
  (:durative-action dust-furniture
    :parameters (?s - s14) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
  (:durative-action reduce-glaze
    :parameters (?s - s15) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
  (:durative-action select-wine
    :parameters (?s - s16) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
  (:durative-action arrange-centerpiece
    :parameters (?s - s17) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
  (:durative-action confirm-bakery
    :parameters (?s - s18) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
  (:durative-action wash-greens
    :parameters (?s - s19) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
  (:durative-action toss-salad
    :parameters (?s - s20) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d9)) (at start (d11)) (at start (d24)) (at start (d37)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
  (:durative-action put-out-bread
    :parameters (?s - s21) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d26)) (at start (d30)) (at start (d51)) (at start (d53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
  (:durative-action carve-roast
    :parameters (?s - s22) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d23)) (at start (d24)) (at start (d41)) (at start (d44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
  (:durative-action place-meat-in-pan
    :parameters (?s - s23) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d29)) (at start (d32)) (at start (d38)) (at start (d39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
  (:durative-action prepare-appetizers
    :parameters (?s - s24) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d28)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
  (:durative-action polish-silver
    :parameters (?s - s25) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d35)) (at start (d47)) (at start (d52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
  (:durative-action pour-drinks
    :parameters (?s - s26) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d24)) (at start (d29)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
  (:durative-action announce-dinner
    :parameters (?s - s27) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d31)) (at start (d50)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
  (:durative-action grocery-shopping
    :parameters (?s - s28) :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
  (:durative-action clear-counters
    :parameters (?s - s29) :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
  (:durative-action pick-up-bread
    :parameters (?s - s30) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
  (:durative-action coordinate-guests
    :parameters (?s - s31) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d14)) (at start (d38)) (at start (d40)) (at start (d46)) (at start (d49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
  (:durative-action defrost-protein
    :parameters (?s - s32) :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (d43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
  (:durative-action set-up-outdoor-seating
    :parameters (?s - s33) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
  (:durative-action season-meat
    :parameters (?s - s34) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
  (:durative-action vacuum-rug
    :parameters (?s - s35) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
  (:durative-action warm-platters
    :parameters (?s - s36) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d32)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
  (:durative-action remind-guests
    :parameters (?s - s37) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
  (:durative-action organize-workspace
    :parameters (?s - s38) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d11)) (at start (d12)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
  (:durative-action peel-potatoes
    :parameters (?s - s39) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d37)) (at start (d47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
  (:durative-action open-wine
    :parameters (?s - s40) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
  (:durative-action sear-meat
    :parameters (?s - s41) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d51)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
  (:durative-action prepare-dessert-plates
    :parameters (?s - s42) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d44)) (at start (d50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
  (:durative-action create-shopping-list
    :parameters (?s - s43) :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
  (:durative-action scrub-roasting-rack
    :parameters (?s - s44) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
  (:durative-action buy-flowers
    :parameters (?s - s45) :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
  (:durative-action wash-bowls
    :parameters (?s - s46) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
  (:durative-action iron-napkins
    :parameters (?s - s47) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
  (:durative-action slice-lemons
    :parameters (?s - s48) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
  (:durative-action start-music
    :parameters (?s - s49) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d3)) (at start (d4)) (at start (d35)) (at start (d43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
  (:durative-action prepare-coffee-machine
    :parameters (?s - s50) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
  (:durative-action clean-oven
    :parameters (?s - s51) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
  (:durative-action make-vinaigrette
    :parameters (?s - s52) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
  (:durative-action blanch-beans
    :parameters (?s - s53) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
  (:durative-action put-out-trash
    :parameters (?s - s54) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d14)) (at start (d44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
  (:durative-action fold-napkins
    :parameters (?s - s55) :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
  (:durative-action arrange-appetizer-table
    :parameters (?s - s56) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
  (:durative-action set-out-coasters
    :parameters (?s - s57) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d43)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
  (:durative-action clean-sink
    :parameters (?s - s58) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
  (:durative-action take-coats
    :parameters (?s - s59) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
  (:durative-action enjoy-conversation
    :parameters (?s - s60) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d29)) (at start (d31)) (at start (d34)) (at start (d54)) (at start (d57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dinner_enjoyed))))
)