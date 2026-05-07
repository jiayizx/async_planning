(define (domain house_decision)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decision_finalized)
    (market_values_researched)
    (contractor_quote_obtained)
    (floor_plan_drafted)
    (structural_issues_identified)
    (budget_limits_consulted)
    (renovation_cost_calculated)
    (houses_visited)
    (costs_compared)
    (zoning_laws_reviewed)
    (equity_impact_evaluated)
    (requirements_listed)
    (pre_approval_obtained)
    (agent_contacted)
    (architect_hired))
  (:durative-action do_step1 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (budget_limits_consulted)) (at start (zoning_laws_reviewed)) (at start (requirements_listed)) (at start (pre_approval_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decision_finalized))))
  (:durative-action do_step2 :parameters (?s - step) :duration 259200
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (market_values_researched))))
  (:durative-action do_step3 :parameters (?s - step) :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (floor_plan_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contractor_quote_obtained))))
  (:durative-action do_step4 :parameters (?s - step) :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (structural_issues_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (floor_plan_drafted))))
  (:durative-action do_step5 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (requirements_listed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (structural_issues_identified))))
  (:durative-action do_step6 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_limits_consulted))))
  (:durative-action do_step7 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (market_values_researched)) (at start (floor_plan_drafted)) (at start (budget_limits_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (renovation_cost_calculated))))
  (:durative-action do_step8 :parameters (?s - step) :duration 21600
    :condition (and (at start (step_pending ?s)) (at start (agent_contacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (houses_visited))))
  (:durative-action do_step9 :parameters (?s - step) :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (contractor_quote_obtained)) (at start (renovation_cost_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (costs_compared))))
  (:durative-action do_step10 :parameters (?s - step) :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (architect_hired)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zoning_laws_reviewed))))
  (:durative-action do_step11 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (renovation_cost_calculated)) (at start (pre_approval_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equity_impact_evaluated))))
  (:durative-action do_step12 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (requirements_listed))))
  (:durative-action do_step13 :parameters (?s - step) :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (budget_limits_consulted)) (at start (zoning_laws_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pre_approval_obtained))))
  (:durative-action do_step14 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (agent_contacted))))
  (:durative-action do_step15 :parameters (?s - step) :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (floor_plan_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (architect_hired)))))