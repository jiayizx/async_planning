(define (domain renovate-or-shift)
  (:requirements :durative-actions :typing)
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
    (decision_document_finalized)
    (market_values_researched)
    (contractor_quote_obtained)
    (floor_plan_drafted)
    (structural_issues_identified)
    (budget_limits_consulted)
    (renovation_cost_calculated)
    (potential_houses_visited)
    (costs_compared)
    (zoning_laws_reviewed)
    (property_equity_evaluated)
    (requirements_listed)
    (loan_preapproval_secured)
    (real_estate_agent_contacted)
    (architect_feasibility_study_completed)
  )

  (:durative-action finalize_decision_document
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (budget_limits_consulted))
      (at start (zoning_laws_reviewed))
      (at start (requirements_listed))
      (at start (loan_preapproval_secured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decision_document_finalized))))

  (:durative-action research_market_values
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (market_values_researched))))

  (:durative-action get_contractor_quote
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (floor_plan_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (contractor_quote_obtained))))

  (:durative-action draft_floor_plan
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (structural_issues_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (floor_plan_drafted))))

  (:durative-action identify_structural_issues
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (requirements_listed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (structural_issues_identified))))

  (:durative-action consult_financial_advisor
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (budget_limits_consulted))))

  (:durative-action calculate_renovation_cost
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (market_values_researched))
      (at start (floor_plan_drafted))
      (at start (budget_limits_consulted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (renovation_cost_calculated))))

  (:durative-action visit_potential_houses
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (real_estate_agent_contacted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (potential_houses_visited))))

  (:durative-action compare_renovation_and_moving_costs
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (contractor_quote_obtained))
      (at start (renovation_cost_calculated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (costs_compared))))

  (:durative-action review_zoning_laws
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (architect_feasibility_study_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (zoning_laws_reviewed))))

  (:durative-action evaluate_property_equity
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (renovation_cost_calculated))
      (at start (loan_preapproval_secured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (property_equity_evaluated))))

  (:durative-action list_home_requirements
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (requirements_listed))))

  (:durative-action secure_loan_preapproval
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (budget_limits_consulted))
      (at start (zoning_laws_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (loan_preapproval_secured))))

  (:durative-action contact_real_estate_agent
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (real_estate_agent_contacted))))

  (:durative-action hire_architect_for_feasibility_study
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (floor_plan_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (architect_feasibility_study_completed))))
)