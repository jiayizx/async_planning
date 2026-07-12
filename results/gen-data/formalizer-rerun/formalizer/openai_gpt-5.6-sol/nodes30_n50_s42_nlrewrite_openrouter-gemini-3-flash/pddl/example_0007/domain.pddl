(define (domain dress-making)
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
  (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
  (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
  (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
 )
 (:durative-action sketch-design-concepts
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (is1 ?s)) (at start (step_pending ?s)) (at start (s6_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
 (:durative-action purchase-silk-fabric
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (is2 ?s)) (at start (step_pending ?s)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
 (:durative-action create-bodice-pattern
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (is3 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
 (:durative-action cut-fabric-pieces
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is4 ?s)) (at start (step_pending ?s)) (at start (s25_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
 (:durative-action interface-collar-cuffs
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (is5 ?s)) (at start (step_pending ?s)) (at start (s13_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
 (:durative-action take-body-measurements
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (is6 ?s)) (at start (step_pending ?s)) (at start (s16_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
 (:durative-action stitch-skirt-side-seams
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is7 ?s)) (at start (step_pending ?s)) (at start (s14_done)) (at start (s15_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
 (:durative-action hand-stitch-labels
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (is8 ?s)) (at start (step_pending ?s)) (at start (s26_done)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
 (:durative-action press-seams-open
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (is9 ?s)) (at start (step_pending ?s)) (at start (s17_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
 (:durative-action serge-raw-edges
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (is10 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
 (:durative-action sew-buttonholes
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is11 ?s)) (at start (step_pending ?s)) (at start (s13_done)) (at start (s28_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
 (:durative-action attach-hem-trim
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (is12 ?s)) (at start (step_pending ?s)) (at start (s20_done)) (at start (s24_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
 (:durative-action purchase-thread-notions
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is13 ?s)) (at start (step_pending ?s)) (at start (s1_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
 (:durative-action baste-bodice-to-skirt
  :parameters (?s - step) :duration (= ?duration 3000)
  :condition (and (at start (is14 ?s)) (at start (step_pending ?s)) (at start (s17_done)) (at start (s23_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
 (:durative-action prepare-sewing-machine
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (is15 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
 (:durative-action research-vintage-styles
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (is16 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
 (:durative-action prewash-and-dry-fabric
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (is17 ?s)) (at start (step_pending ?s)) (at start (s2_done)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
 (:durative-action adjust-machine-tension
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (is18 ?s)) (at start (step_pending ?s)) (at start (s15_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
 (:durative-action perform-final-fitting
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (is19 ?s)) (at start (step_pending ?s)) (at start (s6_done)) (at start (s29_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
 (:durative-action assemble-concealed-zipper
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (is20 ?s)) (at start (step_pending ?s)) (at start (s7_done)) (at start (s10_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
 (:durative-action sew-decorative-buttons
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is21 ?s)) (at start (step_pending ?s)) (at start (s13_done)) (at start (s28_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
 (:durative-action finish-neckline-binding
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (is22 ?s)) (at start (step_pending ?s)) (at start (s13_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
 (:durative-action pin-skirt-pleats
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (is23 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
 (:durative-action hem-dress-bottom
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (is24 ?s)) (at start (step_pending ?s)) (at start (s30_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
 (:durative-action pin-pattern-to-fabric
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (is25 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s5_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
 (:durative-action test-stitch-quality
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (is26 ?s)) (at start (step_pending ?s)) (at start (s6_done)) (at start (s18_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
 (:durative-action calculate-yardage
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (is27 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
 (:durative-action choose-button-style
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (is28 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
 (:durative-action stitch-darts-and-tucks
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (is29 ?s)) (at start (step_pending ?s)) (at start (s4_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
 (:durative-action join-sleeves-to-armscye
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (is30 ?s)) (at start (step_pending ?s)) (at start (s7_done)) (at start (s13_done)) (at start (s20_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
)