(define (domain sumac_usage)
    (:requirements :durative-actions)
    
    (:predicates
        (purchase_pending)
        (purchase_done)
        (use_in_dish_pending)
        (use_in_dish_done)
        (add_to_dips_pending)
        (add_to_dips_done)
        (use_as_marinade_pending)
        (use_as_marinade_done)
        (add_to_zaatar_pending)
        (add_to_zaatar_done)
        (add_to_frittata_pending)
        (add_to_frittata_done)
        (sprinkle_vegetables_pending)
        (sprinkle_vegetables_done)
    )

    (:durative-action purchase_sumac
        :parameters ()
        :duration (= ?duration 1800)
        :condition (at start (purchase_pending))
        :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
    )

    (:durative-action use_in_dish
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (use_in_dish_pending)) (at start (purchase_done)))
        :effect (and (at start (not (use_in_dish_pending))) (at end (use_in_dish_done)))
    )

    (:durative-action add_to_dips
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (add_to_dips_pending)) (at start (purchase_done)))
        :effect (and (at start (not (add_to_dips_pending))) (at end (add_to_dips_done)))
    )

    (:durative-action use_as_marinade
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (use_as_marinade_pending)) (at start (purchase_done)))
        :effect (and (at start (not (use_as_marinade_pending))) (at end (use_as_marinade_done)))
    )

    (:durative-action add_to_zaatar
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (add_to_zaatar_pending)) (at start (purchase_done)))
        :effect (and (at start (not (add_to_zaatar_pending))) (at end (add_to_zaatar_done)))
    )

    (:durative-action add_to_frittata
        :parameters ()
        :duration (= ?duration 480)
        :condition (and (at start (add_to_frittata_pending)) (at start (purchase_done)))
        :effect (and (at start (not (add_to_frittata_pending))) (at end (add_to_frittata_done)))
    )

    (:durative-action sprinkle_vegetables
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (sprinkle_vegetables_pending)) (at start (purchase_done)))
        :effect (and (at start (not (sprinkle_vegetables_pending))) (at end (sprinkle_vegetables_done)))
    )
)
