(define (domain towel-purchase)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
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
  )

  (:durative-action filter-search-results
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p1)) (at start (is_step1 ?s)) (at start (d5)) (at start (d27)))
    :effect (and (at start (not (p1))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action compare-gsm-weight
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (p2)) (at start (is_step2 ?s)) (at start (d3)) (at start (d13)) (at start (d15)) (at start (d24)))
    :effect (and (at start (not (p2))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action read-lint-reviews
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (p3)) (at start (is_step3 ?s)) (at start (d17)))
    :effect (and (at start (not (p3))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action check-color-match
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (p4)) (at start (is_step4 ?s)) (at start (d13)))
    :effect (and (at start (not (p4))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action select-retailer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (p5)) (at start (is_step5 ?s)) (at start (d25)))
    :effect (and (at start (not (p5))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action receive-confirmation-email
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (p6)) (at start (is_step6 ?s)) (at start (d19)))
    :effect (and (at start (not (p6))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action warehouse-process-order
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (p7)) (at start (is_step7 ?s)) (at start (d15)))
    :effect (and (at start (not (p7))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action receive-tracking-number
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (p8)) (at start (is_step8 ?s)) (at start (d19)))
    :effect (and (at start (not (p8))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action bookmark-care-instructions
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (p9)) (at start (is_step9 ?s)) (at start (d22)))
    :effect (and (at start (not (p9))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action add-towel-to-cart
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (p10)) (at start (is_step10 ?s)) (at start (d2)) (at start (d4)) (at start (d14)) (at start (d24)))
    :effect (and (at start (not (p10))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action log-into-account
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (p11)) (at start (is_step11 ?s)) (at start (d17)))
    :effect (and (at start (not (p11))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action enter-shipping-address
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (p12)) (at start (is_step12 ?s)) (at start (d10)))
    :effect (and (at start (not (p12))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action determine-towel-dimensions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p13)) (at start (is_step13 ?s)))
    :effect (and (at start (not (p13))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action verify-discount-codes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p14)) (at start (is_step14 ?s)))
    :effect (and (at start (not (p14))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action decide-primary-color
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (p15)) (at start (is_step15 ?s)) (at start (d26)) (at start (d29)))
    :effect (and (at start (not (p15))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action enter-payment-information
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (p16)) (at start (is_step16 ?s)) (at start (d12)) (at start (d23)))
    :effect (and (at start (not (p16))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action research-cotton-types
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (p17)) (at start (is_step17 ?s)))
    :effect (and (at start (not (p17))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action monitor-package-transit
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (p18)) (at start (is_step18 ?s)) (at start (d21)))
    :effect (and (at start (not (p18))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action review-order-summary
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (p19)) (at start (is_step19 ?s)) (at start (d1)) (at start (d5)) (at start (d11)) (at start (d21)) (at start (d27)))
    :effect (and (at start (not (p19))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action clear-linen-closet-space
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (p20)) (at start (is_step20 ?s)) (at start (d8)))
    :effect (and (at start (not (p20))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action check-bank-balance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (p21)) (at start (is_step21 ?s)))
    :effect (and (at start (not (p21))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action note-washing-temperature
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p22)) (at start (is_step22 ?s)) (at start (d3)))
    :effect (and (at start (not (p22))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action confirm-return-policy
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p23)) (at start (is_step23 ?s)) (at start (d19)) (at start (d26)))
    :effect (and (at start (not (p23))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action inspect-fabric-photos
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (p24)) (at start (is_step24 ?s)))
    :effect (and (at start (not (p24))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action check-delivery-dates
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (p25)) (at start (is_step25 ?s)) (at start (d13)) (at start (d14)))
    :effect (and (at start (not (p25))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action identify-frayed-towels
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p26)) (at start (is_step26 ?s)))
    :effect (and (at start (not (p26))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action set-maximum-budget
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (p27)) (at start (is_step27 ?s)))
    :effect (and (at start (not (p27))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action place-order
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (p28)) (at start (is_step28 ?s)) (at start (d2)) (at start (d3)) (at start (d16)))
    :effect (and (at start (not (p28))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action evaluate-linen-inventory
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (p29)) (at start (is_step29 ?s)))
    :effect (and (at start (not (p29))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action unbox-and-inspect-towel
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (p30)) (at start (is_step30 ?s)) (at start (d7)) (at start (d18)) (at start (d29)))
    :effect (and (at start (not (p30))) (at end (step_done ?s)) (at end (d30))))
)