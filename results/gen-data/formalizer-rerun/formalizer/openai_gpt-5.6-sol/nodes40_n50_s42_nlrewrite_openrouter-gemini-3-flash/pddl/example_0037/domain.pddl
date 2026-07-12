(define (domain buy-cast-iron-pans)
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
  (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
  (done11) (done12) (done13) (purchase_completed) (done15) (done16) (done17) (done18)
  (done19) (done20) (done21) (done22) (done23) (done24) (done25) (done26) (done27)
  (done28) (done29) (done30) (done31) (done32) (done33) (done34) (done35) (done36)
  (done37) (done38) (done39) (done40))

 (:durative-action research-iron-types
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (done39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))
 (:durative-action read-brand-reviews
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (done39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))
 (:durative-action measure-burners
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))
 (:durative-action decide-diameter
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (done22)) (at start (done25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4))))
 (:durative-action drive-to-store
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (done20)) (at start (done40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))
 (:durative-action check-pan-weight
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (done9)) (at start (done20)) (at start (done23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))
 (:durative-action compare-prices
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)) (at start (done12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))
 (:durative-action find-coupons
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))
 (:durative-action verify-warranty
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))
 (:durative-action check-stock
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (done7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))
 (:durative-action read-helper-handle-benefits
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (done26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))
 (:durative-action choose-seasoning-state
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (done3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12))))
 (:durative-action examine-racks
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (done3)) (at start (done23)) (at start (done34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))
 (:durative-action place-pan-in-cart
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (done38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchase_completed))))
 (:durative-action join-loyalty-program
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (done37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
 (:durative-action ask-return-policy
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (done10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16))))
 (:durative-action calculate-budget
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)) (at start (done3)) (at start (done24)) (at start (done28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17))))
 (:durative-action select-scrubber
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (done19)) (at start (done24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18))))
 (:durative-action choose-seasoning-oil
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (done29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19))))
 (:durative-action confirm-induction-compatibility
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20))))
 (:durative-action set-aside-funds
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (done3)) (at start (done32)) (at start (done37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21))))
 (:durative-action watch-flaw-video
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22))))
 (:durative-action research-heat-retention
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23))))
 (:durative-action find-handle-cover
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (done28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24))))
 (:durative-action evaluate-cabinet-space
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (done32)) (at start (done34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25))))
 (:durative-action consult-chef-blog
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26))))
 (:durative-action check-shelf-limits
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (done34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27))))
 (:durative-action compare-handle-ergonomics
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (done26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28))))
 (:durative-action buy-cleaning-brush
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (done12)) (at start (done17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29))))
 (:durative-action find-matching-lid
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (done12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30))))
 (:durative-action wait-for-sale
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (done7)) (at start (done8)) (at start (done21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31))))
 (:durative-action download-price-app
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32))))
 (:durative-action inspect-surface
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (done22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33))))
 (:durative-action measure-oven-clearance
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34))))
 (:durative-action finalize-model
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (done1)) (at start (done30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35))))
 (:durative-action select-spatula
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (done18)) (at start (done22)) (at start (done28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36))))
 (:durative-action read-care-instructions
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (done23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37))))
 (:durative-action enter-payment-information
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (done15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38))))
 (:durative-action identify-recipes
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39))))
 (:durative-action check-store-hours
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)) (at start (done8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40))))
)