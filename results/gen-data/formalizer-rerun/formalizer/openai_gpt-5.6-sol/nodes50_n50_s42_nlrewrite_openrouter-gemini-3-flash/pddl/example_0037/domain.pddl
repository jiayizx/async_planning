(define (domain milk-tea)
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
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action purchase-tea
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action clean-kettle
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action measure-sugar
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action fetch-pearls
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action rinse-leaves
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (d9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action sterilize-glasses
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (d31)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action dissolve-sugar
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)) (at start (d3)) (at start (d11)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action sort-leaves
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action weigh-leaves
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action garnish-cups
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (d16)) (at start (d47)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action prepare-pitcher
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action set-out-spoons
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (d23)) (at start (d33)) (at start (d44)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action place-coasters
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action select-straws
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action prepare-ice-trays
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action clear-counter
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action fill-kettle
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)) (at start (d2)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action steep-tea
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action wipe-prep-area
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action combine-tea-pearls
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (d26)) (at start (d32)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action whisk-milk
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (d2)) (at start (d3)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action label-cups
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (d31)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action find-recipe-book
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action put-flour-away
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action open-tea-package
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action review-guidelines
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action sift-flour
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action warm-cups
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (d9)) (at start (d26)) (at start (d33)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action boil-pearl-water
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action fill-ice-trays
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action organize-tea-station
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action boil-tea-water
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (d5)) (at start (d29)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action check-milk
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action strain-tea
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (d1)) (at start (d18)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action freeze-ice-trays
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (d15)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action cook-pearls
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action photograph-drink
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action add-ice
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (d4)) (at start (d30)) (at start (d44)) (at start (d47)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action taste-tea
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (d3)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action ready-honey
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action print-menu
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is41 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action pour-drinks
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is42 ?s)) (at start (d14)) (at start (d28)) (at start (d36)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action prepare-strainer
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is43 ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action measure-milk
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is44 ?s)) (at start (d1)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action insert-straws
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (is45 ?s)) (at start (d16)) (at start (d38)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action gather-ingredients
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is46 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action release-ice-cubes
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is47 ?s)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action set-tea-timer
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (is48 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action prepare-serving-tray
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is49 ?s)) (at start (d9)) (at start (d14)) (at start (d25)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action wash-mixing-bowl
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is50 ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)