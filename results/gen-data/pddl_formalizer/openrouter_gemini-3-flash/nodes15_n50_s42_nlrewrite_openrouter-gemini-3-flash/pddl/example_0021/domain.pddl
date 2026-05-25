(define (domain renovation_decision)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
  )

  (:durative-action finalize_decision_doc
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s10_done)) (at start (s12_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action research_market_values
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action get_contractor_quote
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action draft_floor_plan
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action walk_through_house
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action consult_financial_advisor
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action calculate_renovation_cost
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s4_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action visit_houses
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action compare_costs
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action review_zoning_laws
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action evaluate_equity
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action list_requirements
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action secure_preapproval
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action contact_agent
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action hire_architect
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )
)