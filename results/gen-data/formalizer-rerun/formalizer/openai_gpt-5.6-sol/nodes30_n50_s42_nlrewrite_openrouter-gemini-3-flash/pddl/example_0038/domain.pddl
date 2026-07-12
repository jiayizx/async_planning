(define (domain american-shorthair-care)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type
    step21-type step22-type step23-type step24-type step25-type
    step26-type step27-type step28-type step29-type step30-type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete) (step2_complete) (step3_complete)
    (step4_complete) (step5_complete) (step6_complete)
    (step7_complete) (step8_complete) (step9_complete)
    (step10_complete) (step11_complete) (step12_complete)
    (step13_complete) (step14_complete) (step15_complete)
    (step16_complete) (step17_complete) (step18_complete)
    (step19_complete) (step20_complete) (step21_complete)
    (step22_complete) (step23_complete) (step24_complete)
    (step25_complete) (step26_complete) (step27_complete)
    (step28_complete) (step29_complete) (step30_complete))

  (:durative-action purchase-dry-kibble
    :parameters (?s - step1-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (step21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete))))

  (:durative-action schedule-follow-up-dental-cleaning
    :parameters (?s - step2-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step11_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete))))

  (:durative-action apply-flea-and-tick-preventative
    :parameters (?s - step3-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete))))

  (:durative-action research-feline-only-clinics
    :parameters (?s - step4-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete))))

  (:durative-action install-scratching-post
    :parameters (?s - step5-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete))))

  (:durative-action brush-cat-coat
    :parameters (?s - step6-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step17_complete)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete))))

  (:durative-action fill-box-with-litter
    :parameters (?s - step7-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete))))

  (:durative-action set-up-water-fountain
    :parameters (?s - step8-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete))))

  (:durative-action purchase-interactive-toys
    :parameters (?s - step9-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step5_complete)) (at start (step21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete))))

  (:durative-action buy-cat-carrier
    :parameters (?s - step10-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete))))

  (:durative-action schedule-initial-wellness-exam
    :parameters (?s - step11-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete))))

  (:durative-action set-up-play-area
    :parameters (?s - step12-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete))))

  (:durative-action purchase-ceramic-bowls
    :parameters (?s - step13-type)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete))))

  (:durative-action teach-feather-wand-use
    :parameters (?s - step14-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete))))

  (:durative-action observe-activity-levels
    :parameters (?s - step15-type)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete))))

  (:durative-action bring-cat-to-vet
    :parameters (?s - step16-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)) (at start (step17_complete)) (at start (step23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_complete))))

  (:durative-action purchase-grooming-brush
    :parameters (?s - step17-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_complete))))

  (:durative-action read-feline-behavior-book
    :parameters (?s - step18-type)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_complete))))

  (:durative-action identify-hiding-spots
    :parameters (?s - step19-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_complete))))

  (:durative-action wash-new-bowls
    :parameters (?s - step20-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_complete))))

  (:durative-action create-pet-care-budget
    :parameters (?s - step21-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_complete))))

  (:durative-action receive-parasite-control-advice
    :parameters (?s - step22-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step16_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_complete))))

  (:durative-action research-health-traits
    :parameters (?s - step23-type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_complete))))

  (:durative-action find-professional-pet-sitter
    :parameters (?s - step24-type)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_complete))))

  (:durative-action rotate-cat-toys
    :parameters (?s - step25-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)) (at start (step19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_complete))))

  (:durative-action administer-vaccination
    :parameters (?s - step26-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step2_complete)) (at start (step16_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_complete))))

  (:durative-action clip-cat-claws
    :parameters (?s - step27-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_complete))))

  (:durative-action microchip-cat
    :parameters (?s - step28-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_complete))))

  (:durative-action organize-feeding-schedule
    :parameters (?s - step29-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_complete))))

  (:durative-action buy-clumping-litter
    :parameters (?s - step30-type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_complete))))
)