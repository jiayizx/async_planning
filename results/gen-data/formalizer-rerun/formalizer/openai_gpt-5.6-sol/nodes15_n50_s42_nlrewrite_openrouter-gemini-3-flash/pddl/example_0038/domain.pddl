(define (domain renovate-or-shift)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (architect_consultation_scheduled)
    (market_trends_researched)
    (resale_value_calculated)
    (mortgage_preapproval_obtained)
    (structural_report_reviewed)
    (frustrations_and_needs_listed)
    (open_houses_visited)
    (home_appraisal_obtained)
    (roi_and_moving_costs_compared)
    (contractor_quotes_requested)
    (options_budget_finalized)
    (home_equity_evaluated)
    (real_estate_agent_interviewed)
    (insurance_adjustment_quotes_gathered)
    (credit_and_financial_health_checked)
  )

  (:durative-action schedule_architect_consultation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (architect_consultation_scheduled)))
  )

  (:durative-action research_property_market_trends
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (frustrations_and_needs_listed)) (at start (real_estate_agent_interviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (market_trends_researched)))
  )

  (:durative-action calculate_resale_value
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (market_trends_researched)) (at start (insurance_adjustment_quotes_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resale_value_calculated)))
  )

  (:durative-action apply_for_mortgage_preapproval
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (home_equity_evaluated)) (at start (credit_and_financial_health_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mortgage_preapproval_obtained)))
  )

  (:durative-action review_structural_feasibility_report
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (architect_consultation_scheduled)) (at start (home_appraisal_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (structural_report_reviewed)))
  )

  (:durative-action list_home_frustrations_and_needs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frustrations_and_needs_listed)))
  )

  (:durative-action visit_open_houses
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (credit_and_financial_health_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (open_houses_visited)))
  )

  (:durative-action obtain_home_appraisal
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (home_appraisal_obtained)))
  )

  (:durative-action compare_renovation_roi_and_moving_costs
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (resale_value_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roi_and_moving_costs_compared)))
  )

  (:durative-action request_contractor_quotes
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (home_appraisal_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contractor_quotes_requested)))
  )

  (:durative-action finalize_options_budget
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (mortgage_preapproval_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (options_budget_finalized)))
  )

  (:durative-action evaluate_home_equity
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (home_appraisal_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (home_equity_evaluated)))
  )

  (:durative-action interview_real_estate_agent
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (real_estate_agent_interviewed)))
  )

  (:durative-action gather_insurance_adjustment_quotes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_adjustment_quotes_gathered)))
  )

  (:durative-action check_credit_and_financial_health
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (credit_and_financial_health_checked)))
  )
)