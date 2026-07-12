(define (domain personal-budget)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (q1) (q2) (q3) (q4) (q5) (q6) (q7) (q8) (q9) (q10)
    (q11) (q12) (q13) (q14) (q15) (q16) (q17) (q18) (q19) (q20)
    (q21) (q22) (q23) (q24) (q25) (q26) (q27) (q28) (q29) (q30)
    (q31) (q32) (q33) (q34) (q35) (q36) (q37) (q38) (q39) (q40)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  )

  (:durative-action categorize-cash-expenses
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q1)) (at start (d7)) (at start (d31)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q1))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action download-bank-statements
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (q2)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q2))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action research-savings-rates
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q3)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q3))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action identify-subscriptions
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q4)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q4))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action transfer-surplus-funds
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (q5)) (at start (d13)) (at start (d25)) (at start (d31)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q5))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action calculate-grocery-spending
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (q6)) (at start (d10)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q6))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action reconcile-credit-cards
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q7)) (at start (d4)) (at start (d9)) (at start (d36)) (at start (d38)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q7))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action compare-food-limit
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (q8)) (at start (d2)) (at start (d6)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q8))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action audit-automatic-payments
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q9)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q9))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action gather-physical-receipts
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (q10)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q10))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action draft-preliminary-budget
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (q11)) (at start (d19)) (at start (d26)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q11))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action check-investment-performance
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q12)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q12))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action set-vacation-savings-goal
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q13)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q13))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action review-utility-trends
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q14)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q14))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action update-net-worth
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (q15)) (at start (d2)) (at start (d27)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q15))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action request-credit-report
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (q16)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q16))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action allocate-insurance-funds
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q17)) (at start (d12)) (at start (d14)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q17))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action scan-receipts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q18)) (at start (d10)) (at start (d29)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q18))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action cancel-streaming-services
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (q19)) (at start (d9)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q19))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action meet-financial-advisor
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (q20)) (at start (d38)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q20))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action adjust-discretionary-allowance
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (q21)) (at start (d6)) (at start (d12)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q21))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action calculate-commuting-cost
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (q22)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q22))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action log-dining-costs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q23)) (at start (d6)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q23))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action finalize-debt-plan
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q24)) (at start (d14)) (at start (d21)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q24))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action determine-emergency-target
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q25)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q25))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action review-tax-withholdings
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q26)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q26))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action estimate-holiday-expenses
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q27)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q27))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action setup-car-repair-fund
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (q28)) (at start (d13)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q28))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action write-long-term-objectives
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q29)) (at start (d20)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q29))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action sort-tax-receipts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q30)) (at start (d10)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q30))) (at end (step_done ?s)) (at end (d30))))

  (:durative-action total-fun-money
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q31)) (at start (d10)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q31))) (at end (step_done ?s)) (at end (d31))))

  (:durative-action install-budgeting-app
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (q32)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q32))) (at end (step_done ?s)) (at end (d32))))

  (:durative-action review-final-budget
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q33)) (at start (d25)) (at start (d37)) (at start (d39)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q33))) (at end (step_done ?s)) (at end (d33))))

  (:durative-action purchase-transit-pass
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (q34)) (at start (d22)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q34))) (at end (step_done ?s)) (at end (d34))))

  (:durative-action open-sub-savings-account
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (q35)) (at start (d3)) (at start (d27)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q35))) (at end (step_done ?s)) (at end (d35))))

  (:durative-action evaluate-overspending
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (q36)) (at start (d11)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q36))) (at end (step_done ?s)) (at end (d36))))

  (:durative-action export-payroll-data
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (q37)) (at start (d26)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q37))) (at end (step_done ?s)) (at end (d37))))

  (:durative-action collect-freelance-invoices
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q38)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q38))) (at end (step_done ?s)) (at end (d38))))

  (:durative-action analyze-credit-report
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (q39)) (at start (d16)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q39))) (at end (step_done ?s)) (at end (d39))))

  (:durative-action set-aside-cash
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (q40)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at start (not (q40))) (at end (step_done ?s)) (at end (d40))))
)