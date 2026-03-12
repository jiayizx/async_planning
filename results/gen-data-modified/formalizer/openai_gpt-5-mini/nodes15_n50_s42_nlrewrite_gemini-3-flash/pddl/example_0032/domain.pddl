(define (domain grill_asparagus)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
  )

  (:durative-action step1_arrange_on_platter
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step1_pending)) (at start (step3_done)) (at start (step15_done)))
     :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_preheat_grill
     :parameters ()
     :duration (= ?duration 600)
     :condition (and (at start (step2_pending)) (at start (step8_done)))
     :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_grill_asparagus
     :parameters ()
     :duration (= ?duration 360)
     :condition (and (at start (step3_pending)) (at start (step4_done)))
     :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_toss_in_oil_salt
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step4_pending)) (at start (step10_done)))
     :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_buy_asparagus
     :parameters ()
     :duration (= ?duration 1200)
     :condition (at start (step5_pending))
     :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_garnish_lemon
     :parameters ()
     :duration (= ?duration 30)
     :condition (and (at start (step6_pending)) (at start (step9_done)))
     :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_store_in_crisper
     :parameters ()
     :duration (= ?duration 172800)
     :condition (and (at start (step7_pending)) (at start (step5_done)))
     :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_clean_grill_grates
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (step8_pending))
     :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_remove_from_heat
     :parameters ()
     :duration (= ?duration 60)
     :condition (and (at start (step9_pending)) (at start (step13_done)))
     :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_trim_woody_ends
     :parameters ()
     :duration (= ?duration 240)
     :condition (at start (step10_pending))
     :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action step11_wash_asparagus
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (step11_pending)) (at start (step5_done)))
     :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action step12_pat_dry
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (step12_pending)) (at start (step5_done)))
     :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action step13_place_on_grill
     :parameters ()
     :duration (= ?duration 60)
     :condition (and (at start (step13_pending)) (at start (step2_done)))
     :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action step14_whisk_balsamic_reduction
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (step14_pending)) (at start (step12_done)))
     :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action step15_turn_spears
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (step15_pending)) (at start (step3_done)))
     :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)
