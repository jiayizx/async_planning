(define (domain use-sumac)
  (:requirements :durative-actions)
  (:predicates
    (purchase_sumac_pending)
    (purchase_sumac_done)
    (use_sumac_in_place_of_lemon_pending)
    (use_sumac_in_place_of_lemon_done)
    (add_sumac_to_dips_pending)
    (add_sumac_to_dips_done)
    (use_sumac_in_marinade_pending)
    (use_sumac_in_marinade_done)
    (add_sumac_to_zaatar_pending)
    (add_sumac_to_zaatar_done)
    (add_to_frittata_pending)
    (add_to_frittata_done)
    (sprinkle_over_vegetables_pending)
    (sprinkle_over_vegetables_done)
  )

  (:durative-action purchase_sumac
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (purchase_sumac_pending))
    :effect (and (at start (not (purchase_sumac_pending))) (at end (purchase_sumac_done)))
  )

  (:durative-action use_sumac_in_place_of_lemon
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (use_sumac_in_place_of_lemon_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (use_sumac_in_place_of_lemon_pending))) (at end (use_sumac_in_place_of_lemon_done)))
  )

  (:durative-action add_sumac_to_dips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (add_sumac_to_dips_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (add_sumac_to_dips_pending))) (at end (add_sumac_to_dips_done)))
  )

  (:durative-action use_sumac_in_marinade
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (use_sumac_in_marinade_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (use_sumac_in_marinade_pending))) (at end (use_sumac_in_marinade_done)))
  )

  (:durative-action add_sumac_to_zaatar
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (add_sumac_to_zaatar_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (add_sumac_to_zaatar_pending))) (at end (add_sumac_to_zaatar_done)))
  )

  (:durative-action add_to_frittata
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (add_to_frittata_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (add_to_frittata_pending))) (at end (add_to_frittata_done)))
  )

  (:durative-action sprinkle_over_vegetables
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (sprinkle_over_vegetables_pending)) (at start (purchase_sumac_done)))
    :effect (and (at start (not (sprinkle_over_vegetables_pending))) (at end (sprinkle_over_vegetables_done)))
  )
)
