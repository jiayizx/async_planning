(define (domain start-investing)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type step6_type
    step7_type step8_type step9_type step10_type step11_type step12_type
    step13_type step14_type step15_type step16_type step17_type step18_type
    step19_type step20_type step21_type step22_type step23_type step24_type
    step25_type step26_type step27_type step28_type step29_type step30_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
  )

  (:durative-action step1_research_brokerages
    :parameters (?s - step1_type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete)))
  )

  (:durative-action step2_calculate_investable_income
    :parameters (?s - step2_type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete)))
  )

  (:durative-action step3_open_brokerage_account
    :parameters (?s - step3_type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s9_complete)) (at start (s10_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete)))
  )

  (:durative-action step4_read_stock_market_book
    :parameters (?s - step4_type)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete)))
  )

  (:durative-action step5_research_capital_gains_tax
    :parameters (?s - step5_type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete)))
  )

  (:durative-action step6_list_short_term_goals
    :parameters (?s - step6_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete)))
  )

  (:durative-action step7_list_retirement_goals
    :parameters (?s - step7_type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete)))
  )

  (:durative-action step8_define_risk_tolerance
    :parameters (?s - step8_type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s6_complete)) (at start (s11_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete)))
  )

  (:durative-action step9_attend_finance_seminar
    :parameters (?s - step9_type)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete)))
  )

  (:durative-action step10_compare_expense_ratios
    :parameters (?s - step10_type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s22_complete)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete)))
  )

  (:durative-action step11_create_financial_spreadsheet
    :parameters (?s - step11_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete)))
  )

  (:durative-action step12_consult_financial_planner
    :parameters (?s - step12_type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete)))
  )

  (:durative-action step13_setup_initial_deposit_savings
    :parameters (?s - step13_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s5_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete)))
  )

  (:durative-action step14_download_tracking_app
    :parameters (?s - step14_type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete)))
  )

  (:durative-action step15_subscribe_financial_news
    :parameters (?s - step15_type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s21_complete)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete)))
  )

  (:durative-action step16_gather_advisor_recommendations
    :parameters (?s - step16_type)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete)))
  )

  (:durative-action step17_transfer_initial_funds
    :parameters (?s - step17_type)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s5_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete)))
  )

  (:durative-action step18_determine_asset_allocation
    :parameters (?s - step18_type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete)))
  )

  (:durative-action step19_obtain_identification
    :parameters (?s - step19_type)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete)))
  )

  (:durative-action step20_complete_identity_verification
    :parameters (?s - step20_type)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s19_complete)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete)))
  )

  (:durative-action step21_verify_bank_microdeposits
    :parameters (?s - step21_type)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete)))
  )

  (:durative-action step22_analyze_sp500_returns
    :parameters (?s - step22_type)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete)))
  )

  (:durative-action step23_review_outstanding_debts
    :parameters (?s - step23_type)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete)))
  )

  (:durative-action step24_request_credit_report
    :parameters (?s - step24_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete)))
  )

  (:durative-action step25_establish_emergency_fund
    :parameters (?s - step25_type)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete)))
  )

  (:durative-action step26_draft_monthly_budget
    :parameters (?s - step26_type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete)))
  )

  (:durative-action step27_setup_password_manager
    :parameters (?s - step27_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete)))
  )

  (:durative-action step28_select_ticker_symbols
    :parameters (?s - step28_type)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s10_complete)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete)))
  )

  (:durative-action step29_enable_two_factor_authentication
    :parameters (?s - step29_type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete)))
  )

  (:durative-action step30_setup_recurring_transfer
    :parameters (?s - step30_type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete)))
  )
)