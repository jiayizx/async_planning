(define (domain soft-cookies)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step)
  (is5 ?s - step) (is6 ?s - step) (is7 ?s - step) (is8 ?s - step)
  (is9 ?s - step) (is10 ?s - step) (is11 ?s - step) (is12 ?s - step)
  (is13 ?s - step) (is14 ?s - step) (is15 ?s - step) (is16 ?s - step)
  (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
  (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step)
  (is25 ?s - step) (is26 ?s - step) (is27 ?s - step) (is28 ?s - step)
  (is29 ?s - step) (is30 ?s - step) (is31 ?s - step) (is32 ?s - step)
  (is33 ?s - step) (is34 ?s - step) (is35 ?s - step) (is36 ?s - step)
  (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
  (s1_done) (s2_done) (s3_done) (cookies_set) (s5_done)
  (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
  (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
  (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
  (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
  (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
  (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
  (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
 )

 (:durative-action soften-butter
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (s20_done)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
 (:durative-action cream-butter-sugar
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (s1_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
 (:durative-action whisk-dry-ingredients
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (s19_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
 (:durative-action set-cookies-on-pan
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (s39_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cookies_set))))
 (:durative-action portion-dough
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (s9_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
 (:durative-action remove-eggs
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
 (:durative-action add-vanilla
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)) (at start (s10_done)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
 (:durative-action crack-eggs
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
 (:durative-action beat-eggs
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (s1_done)) (at start (s6_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
 (:durative-action mix-molasses
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (s1_done)) (at start (s8_done)) (at start (s25_done)) (at start (s29_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
 (:durative-action preheat-oven
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
 (:durative-action sift-flour
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (s19_done)) (at start (s26_done)) (at start (s28_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
 (:durative-action measure-baking-soda
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (s11_done)) (at start (s25_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
 (:durative-action transfer-to-rack
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (s21_done)) (at start (s35_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
 (:durative-action fold-chocolate-chips
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (s9_done)) (at start (s10_done)) (at start (s11_done)) (at start (s30_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
 (:durative-action calibrate-scale
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (s32_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
 (:durative-action locate-brown-sugar
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
 (:durative-action find-cookie-scoop
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
 (:durative-action organize-workstation
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
 (:durative-action read-recipe
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
 (:durative-action measure-flour
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (s12_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
 (:durative-action check-pantry
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
 (:durative-action prepare-baking-sheets
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (s24_done)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
 (:durative-action clean-baking-sheets
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (s33_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
 (:durative-action soften-cream-cheese
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (s11_done)) (at start (s19_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
 (:durative-action wash-bowls
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (s11_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
 (:durative-action set-measuring-spoons
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (s11_done)) (at start (s16_done)) (at start (s19_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
 (:durative-action combine-salt-cinnamon
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (s3_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
 (:durative-action measure-granulated-sugar
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
 (:durative-action scrape-bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (s9_done)) (at start (s17_done)) (at start (s34_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
 (:durative-action set-oven-rack
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (s11_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
 (:durative-action buy-flour
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
 (:durative-action clear-counter
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (s18_done)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
 (:durative-action prepare-cooling-rack-area
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
 (:durative-action mix-dry-into-wet
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (s7_done)) (at start (s13_done)) (at start (s32_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
 (:durative-action grease-pan-edges
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (s23_done)) (at start (s26_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
 (:durative-action add-white-sugar
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (s2_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
 (:durative-action dry-bowls
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (s26_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
 (:durative-action bake-cookies
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (s34_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
 (:durative-action quality-check-dough
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)) (at start (s15_done)) (at start (s19_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
)