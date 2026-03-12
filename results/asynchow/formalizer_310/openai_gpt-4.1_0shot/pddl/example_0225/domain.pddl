(define (domain avoid_ironing)
  (:requirements :durative-actions)
  (:predicates
    (buy_garment_steamer_pending)
    (buy_garment_steamer_done)
    (fill_and_turn_on_steamer_pending)
    (fill_and_turn_on_steamer_done)
    (put_item_on_hanger_pending)
    (put_item_on_hanger_done)
    (hold_steamer_to_wrinkles_pending)
    (hold_steamer_to_wrinkles_done)
    (hang_clothes_in_shower_pending)
    (hang_clothes_in_shower_done)
  )

  (:durative-action buy_garment_steamer
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_garment_steamer_pending))
    :effect (and (at start (not (buy_garment_steamer_pending)))
                 (at end (buy_garment_steamer_done)))
  )

  (:durative-action fill_and_turn_on_steamer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (fill_and_turn_on_steamer_pending))
                    (at start (buy_garment_steamer_done)))
    :effect (and (at start (not (fill_and_turn_on_steamer_pending)))
                 (at end (fill_and_turn_on_steamer_done)))
  )

  (:durative-action put_item_on_hanger
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (put_item_on_hanger_pending))
    :effect (and (at start (not (put_item_on_hanger_pending)))
                 (at end (put_item_on_hanger_done)))
  )

  (:durative-action hold_steamer_to_wrinkles
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (hold_steamer_to_wrinkles_pending))
                    (at start (fill_and_turn_on_steamer_done))
                    (at start (put_item_on_hanger_done)))
    :effect (and (at start (not (hold_steamer_to_wrinkles_pending)))
                 (at end (hold_steamer_to_wrinkles_done)))
  )

  (:durative-action hang_clothes_in_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (hang_clothes_in_shower_pending))
    :effect (and (at start (not (hang_clothes_in_shower_pending)))
                 (at end (hang_clothes_in_shower_done)))
  )
)
