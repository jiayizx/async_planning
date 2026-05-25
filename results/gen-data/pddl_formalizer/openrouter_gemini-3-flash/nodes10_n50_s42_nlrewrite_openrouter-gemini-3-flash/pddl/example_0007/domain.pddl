(define (domain piano_acquisition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (space_measured)
    (movers_researched)
    (models_tested)
    (budget_decided)
    (contract_signed)
    (bench_purchased)
    (prices_compared)
    (delivery_scheduled)
    (tuning_arranged)
    (model_selected)
  )

  (:durative-action measure_space
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (space_measured)))
  )

  (:durative-action research_movers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (movers_researched)))
  )

  (:durative-action decide_budget
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (space_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_decided)))
  )

  (:durative-action select_model
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (budget_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (model_selected)))
  )

  (:durative-action test_models
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (model_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (models_tested)))
  )

  (:durative-action purchase_bench
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (models_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bench_purchased)))
  )

  (:durative-action compare_prices
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prices_compared)))
  )

  (:durative-action sign_contract
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (prices_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_signed)))
  )

  (:durative-action arrange_tuning
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (contract_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuning_arranged)))
  )

  (:durative-action schedule_delivery
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (movers_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (delivery_scheduled)))
  )
)