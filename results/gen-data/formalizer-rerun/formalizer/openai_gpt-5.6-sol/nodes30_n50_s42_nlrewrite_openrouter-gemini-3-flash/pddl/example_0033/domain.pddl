(define (domain return-on-assets)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1type step2type step3type step4type step5type step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type step16type step17type step18type step19type step20type
    step21type step22type step23type step24type step25type step26type step27type step28type step29type step30type - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete) (step2_complete) (step3_complete) (step4_complete) (step5_complete)
    (step6_complete) (step7_complete) (step8_complete) (step9_complete) (step10_complete)
    (step11_complete) (step12_complete) (step13_complete) (step14_complete) (step15_complete)
    (step16_complete) (step17_complete) (step18_complete) (step19_complete) (step20_complete)
    (step21_complete) (step22_complete) (step23_complete) (step24_complete) (step25_complete)
    (step26_complete) (step27_complete) (step28_complete) (step29_complete) (step30_complete))

  (:durative-action calculate-total-net-income
    :parameters (?s - step1type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete))))

  (:durative-action gather-final-income-statement
    :parameters (?s - step2type)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete))))

  (:durative-action compile-final-roa-report
    :parameters (?s - step3type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)) (at start (step15_complete)) (at start (step22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete))))

  (:durative-action download-raw-transaction-ledger
    :parameters (?s - step4type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete))))

  (:durative-action present-asset-utilization-metrics
    :parameters (?s - step5type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step25_complete)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete))))

  (:durative-action reconcile-depreciation-schedules
    :parameters (?s - step6type)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (step23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete))))

  (:durative-action aggregate-asset-values
    :parameters (?s - step7type)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)) (at start (step12_complete)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete))))

  (:durative-action archive-valuation-worksheets
    :parameters (?s - step8type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete))))

  (:durative-action request-database-permissions
    :parameters (?s - step9type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete))))

  (:durative-action verify-real-estate-market-value
    :parameters (?s - step10type)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (step7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete))))

  (:durative-action calculate-average-total-assets
    :parameters (?s - step11type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step12_complete)) (at start (step20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete))))

  (:durative-action review-previous-balance-sheet
    :parameters (?s - step12type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete))))

  (:durative-action cross-check-liabilities-and-equity
    :parameters (?s - step13type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step7_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete))))

  (:durative-action adjust-net-income-for-interest
    :parameters (?s - step14type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete))))

  (:durative-action verify-tax-provision-entries
    :parameters (?s - step15type)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete))))

  (:durative-action audit-inventory-valuation
    :parameters (?s - step16type)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step13_complete)) (at start (step22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_complete))))

  (:durative-action collect-new-equipment-list
    :parameters (?s - step17type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_complete))))

  (:durative-action adjust-impairments-and-disposals
    :parameters (?s - step18type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (step12_complete)) (at start (step15_complete)) (at start (step19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_complete))))

  (:durative-action update-fixed-asset-register
    :parameters (?s - step19type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_complete))))

  (:durative-action extract-beginning-asset-totals
    :parameters (?s - step20type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_complete))))

  (:durative-action categorize-assets
    :parameters (?s - step21type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step12_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_complete))))

  (:durative-action spot-check-physical-inventory
    :parameters (?s - step22type)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_complete))))

  (:durative-action calculate-machinery-depreciation
    :parameters (?s - step23type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_complete))))

  (:durative-action sort-receivables-aging-report
    :parameters (?s - step24type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_complete))))

  (:durative-action calculate-return-on-assets
    :parameters (?s - step25type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step11_complete)) (at start (step17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_complete))))

  (:durative-action validate-doubtful-accounts-allowance
    :parameters (?s - step26type)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_complete))))

  (:durative-action reconcile-general-and-sub-ledgers
    :parameters (?s - step27type)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step28_complete)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_complete))))

  (:durative-action review-cash-flow-statement
    :parameters (?s - step28type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_complete))))

  (:durative-action obtain-bank-reconciliations
    :parameters (?s - step29type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_complete))))

  (:durative-action review-balance-sheet-integrity
    :parameters (?s - step30type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_complete))))
)