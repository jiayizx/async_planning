(define (domain grill-asparagus)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type
    step21_type step22_type step23_type step24_type step25_type
    step26_type step27_type step28_type step29_type step30_type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done))

  (:durative-action snap-woody-ends
    :parameters (?s - step1_type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

  (:durative-action arrange-on-grill
    :parameters (?s - step2_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

  (:durative-action rinse-asparagus
    :parameters (?s - step3_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

  (:durative-action open-propane-valve
    :parameters (?s - step4_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

  (:durative-action pat-asparagus-dry
    :parameters (?s - step5_type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

  (:durative-action remove-from-refrigerator
    :parameters (?s - step6_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

  (:durative-action whisk-vinaigrette
    :parameters (?s - step7_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

  (:durative-action sear-asparagus
    :parameters (?s - step8_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

  (:durative-action gather-oil-and-seasonings
    :parameters (?s - step9_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s23_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

  (:durative-action scrub-grill-grates
    :parameters (?s - step10_type)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

  (:durative-action preheat-grill
    :parameters (?s - step11_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

  (:durative-action plate-asparagus
    :parameters (?s - step12_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s13_done)) (at start (s16_done)) (at start (s19_done)) (at start (s22_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

  (:durative-action check-temperature
    :parameters (?s - step13_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s22_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

  (:durative-action turn-stalks
    :parameters (?s - step14_type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s19_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

  (:durative-action sprinkle-sea-salt
    :parameters (?s - step15_type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))

  (:durative-action drizzle-vinaigrette
    :parameters (?s - step16_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))

  (:durative-action set-table
    :parameters (?s - step17_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s22_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))

  (:durative-action toss-with-oil
    :parameters (?s - step18_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))

  (:durative-action pour-olive-oil
    :parameters (?s - step19_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))

  (:durative-action ignite-burners
    :parameters (?s - step20_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s22_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))

  (:durative-action locate-serving-platter
    :parameters (?s - step21_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))

  (:durative-action prepare-garlic-aioli
    :parameters (?s - step22_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))

  (:durative-action measure-salt-and-pepper
    :parameters (?s - step23_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))

  (:durative-action place-in-colander
    :parameters (?s - step24_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))

  (:durative-action clean-cooking-area
    :parameters (?s - step25_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))

  (:durative-action season-asparagus
    :parameters (?s - step26_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))

  (:durative-action zest-and-juice-lemon
    :parameters (?s - step27_type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))

  (:durative-action remove-from-heat
    :parameters (?s - step28_type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))

  (:durative-action transfer-to-tray
    :parameters (?s - step29_type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s21_done)) (at start (s24_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))

  (:durative-action check-propane-fuel
    :parameters (?s - step30_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
)