(define (domain buy-allergy-free-chocolate)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (purchase_complete)
  )

  (:durative-action research-brands
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete))))

  (:durative-action compare-online-prices
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete))))

  (:durative-action check-discount-codes
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete))))

  (:durative-action compile-safe-ingredients
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete))))

  (:durative-action read-taste-reviews
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete))))

  (:durative-action map-store-route
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete))))

  (:durative-action check-weekend-hours
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete))))

  (:durative-action call-to-check-stock
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete))))

  (:durative-action ask-contamination-policies
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete))))

  (:durative-action decide-chocolate-bars
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (s5_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete))))

  (:durative-action pack-shopping-bags
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step11)) (at start (s6_complete)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete))))

  (:durative-action drive-to-shopping-center
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step12)) (at start (s27_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete))))

  (:durative-action put-on-jacket-grab-wallet
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete))))

  (:durative-action write-final-shopping-list
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (s5_complete)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete))))

  (:durative-action verify-credit-card-balance
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete))))

  (:durative-action search-local-stores
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete))))

  (:durative-action save-digital-coupons
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete))))

  (:durative-action read-labels-online
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step18)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete))))

  (:durative-action identify-allergy-requirements
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete))))

  (:durative-action walk-into-store
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step20)) (at start (s12_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete))))

  (:durative-action find-boutique-address
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete))))

  (:durative-action locate-car-keys
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete))))

  (:durative-action select-potential-brands
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step23)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete))))

  (:durative-action calculate-total-cost
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (s2_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete))))

  (:durative-action ask-clerk-for-aisle
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step25)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete))))

  (:durative-action check-in-stock-indicators
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete))))

  (:durative-action turn-on-computer
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete))))

  (:durative-action choose-delivery-or-pickup
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete))))

  (:durative-action proceed-to-checkout
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step29)) (at start (s2_complete)) (at start (s16_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete))))

  (:durative-action pay-and-get-receipt
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (purchase_complete))))
)