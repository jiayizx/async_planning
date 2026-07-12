(define (domain piano-purchase)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (is-step1 ?s - step)
    (is-step2 ?s - step)
    (is-step3 ?s - step)
    (is-step4 ?s - step)
    (is-step5 ?s - step)
    (is-step6 ?s - step)
    (is-step7 ?s - step)
    (is-step8 ?s - step)
    (is-step9 ?s - step)
    (is-step10 ?s - step)
    (floor-space-measured)
    (movers-researched)
    (models-tested)
    (budget-decided)
    (contract-signed)
    (bench-purchased)
    (prices-compared)
    (delivery-scheduled)
    (tuning-arranged)
    (instrument-selected)
  )

  (:durative-action measure-floor-space
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step1 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (floor-space-measured))))

  (:durative-action research-movers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step2 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (movers-researched))))

  (:durative-action test-models
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step3 ?s))
      (at start (instrument-selected)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (models-tested))))

  (:durative-action decide-budget
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step4 ?s))
      (at start (floor-space-measured)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (budget-decided))))

  (:durative-action sign-contract
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step5 ?s))
      (at start (prices-compared)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (contract-signed))))

  (:durative-action purchase-bench
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step6 ?s))
      (at start (models-tested)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (bench-purchased))))

  (:durative-action compare-prices
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step7 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (prices-compared))))

  (:durative-action schedule-delivery
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step8 ?s))
      (at start (movers-researched)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (delivery-scheduled))))

  (:durative-action arrange-tuning
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step9 ?s))
      (at start (contract-signed)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (tuning-arranged))))

  (:durative-action select-instrument
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step-pending ?s))
      (at start (is-step10 ?s))
      (at start (budget-decided)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (instrument-selected))))
)