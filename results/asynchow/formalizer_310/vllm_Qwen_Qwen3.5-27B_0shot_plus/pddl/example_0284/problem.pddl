(define (problem sumac_task)
    (:domain sumac_usage)
    
    (:init
        (purchase_pending)
        (use_in_dish_pending)
        (add_to_dips_pending)
        (use_as_marinade_pending)
        (add_to_zaatar_pending)
        (add_to_frittata_pending)
        (sprinkle_vegetables_pending)
    )

    (:goal (and
        (purchase_done)
        (use_in_dish_done)
        (add_to_dips_done)
        (use_as_marinade_done)
        (add_to_zaatar_done)
        (add_to_frittata_done)
        (sprinkle_vegetables_done)
    ))
)
