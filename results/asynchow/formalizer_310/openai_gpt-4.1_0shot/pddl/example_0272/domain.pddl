(define (domain calculate_owners_equity)
  (:requirements :durative-actions)
  (:predicates
    (add_assets_pending)
    (add_assets_done)
    (calc_contra_pending)
    (calc_contra_done)
    (calc_net_asset_pending)
    (calc_net_asset_done)
    (calc_liabilities_pending)
    (calc_liabilities_done)
    (subtract_liabilities_pending)
    (subtract_liabilities_done)
    (calc_indiv_equity_pending)
    (calc_indiv_equity_done)
  )

  (:durative-action add_assets
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (add_assets_pending))
    :effect (and (at start (not (add_assets_pending))) (at end (add_assets_done)))
  )

  (:durative-action calc_contra
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (calc_contra_pending))
    :effect (and (at start (not (calc_contra_pending))) (at end (calc_contra_done)))
  )

  (:durative-action calc_net_asset
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (calc_net_asset_pending)) (at start (add_assets_done)) (at start (calc_contra_done)))
    :effect (and (at start (not (calc_net_asset_pending))) (at end (calc_net_asset_done)))
  )

  (:durative-action calc_liabilities
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (calc_liabilities_pending))
    :effect (and (at start (not (calc_liabilities_pending))) (at end (calc_liabilities_done)))
  )

  (:durative-action subtract_liabilities
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (subtract_liabilities_pending)) (at start (calc_net_asset_done)) (at start (calc_liabilities_done)))
    :effect (and (at start (not (subtract_liabilities_pending))) (at end (subtract_liabilities_done)))
  )

  (:durative-action calc_indiv_equity
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (calc_indiv_equity_pending)) (at start (subtract_liabilities_done)))
    :effect (and (at start (not (calc_indiv_equity_pending))) (at end (calc_indiv_equity_done)))
  )
)
