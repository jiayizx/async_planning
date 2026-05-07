(define (domain owners_equity)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assets_summed)
    (contra_calculated)
    (net_asset_calculated)
    (liabilities_calculated)
    (equity_calculated)
    (individual_equity_calculated)
  )

  (:durative-action step1_add_assets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (individual_equity_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assets_summed)))
  )

  (:durative-action step2_calc_contra
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (individual_equity_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contra_calculated)))
  )

  (:durative-action step3_calc_net_asset
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (assets_summed)) (at start (contra_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (net_asset_calculated)))
  )

  (:durative-action step4_calc_liabilities
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (liabilities_calculated)))
  )

  (:durative-action step5_subtract_liabilities
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (net_asset_calculated)) (at start (liabilities_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equity_calculated)))
  )

  (:durative-action step6_calc_individual_equity
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (equity_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (individual_equity_calculated)))
  )
)