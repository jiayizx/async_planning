(define (domain wedding-cake-colors)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
  )

  (:durative-action finalize-floral-accents
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))

  (:durative-action send-color-swatches
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (s10_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))

  (:durative-action create-mood-board
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete))))

  (:durative-action research-color-palettes
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))

  (:durative-action purchase-matching-ribbon
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))

  (:durative-action select-base-color
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))

  (:durative-action browse-pinterest
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))

  (:durative-action consult-wedding-planner
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (s3_complete)) (at start (s7_complete)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))

  (:durative-action test-metallic-leaf
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (s7_complete)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))

  (:durative-action collect-color-chips
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))

  (:durative-action match-icing-to-fabric
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (s10_complete)) (at start (s22_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))

  (:durative-action review-ombre-designs
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))

  (:durative-action order-sugar-flowers
    :parameters (?s - step) :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))

  (:durative-action approve-digital-mockup
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (s12_complete)) (at start (s16_complete)) (at start (s18_complete)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))

  (:durative-action schedule-chef-meeting
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (s22_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))

  (:durative-action decide-piping-accent
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (s6_complete)) (at start (s23_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))

  (:durative-action compare-venue-lighting
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (s4_complete)) (at start (s20_complete)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))

  (:durative-action choose-cake-board-color
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (s4_complete)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))

  (:durative-action apply-test-cake-colors
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (s9_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))

  (:durative-action photograph-reception-hall
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))

  (:durative-action ask-florist-bloom-colors
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))

  (:durative-action obtain-fabric-scraps
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))

  (:durative-action narrow-to-three-palettes
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))

  (:durative-action inspect-previous-venue-cakes
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))

  (:durative-action sketch-cake-layers
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))

  (:durative-action mix-food-coloring-gels
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))

  (:durative-action survey-family
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (s9_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))

  (:durative-action check-colored-pearls
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))

  (:durative-action print-reference-images
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (s11_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))

  (:durative-action discuss-color-durability
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (s3_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))
)