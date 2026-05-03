(define (domain ironing-avoidance)
  (:requirements :durative-actions)
  
  (:predicates
    (buy_steamer_pending)
    (buy_steamer_done)
    (fill_steamer_pending)
    (fill_steamer_done)
    (hang_item_pending)
    (hang_item_done)
    (steam_wrinkles_pending)
    (steam_wrinkles_done)
    (shower_hang_pending)
    (shower_hang_done)
  )

  (:durative-action buy_steamer
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_steamer_pending))
    :effect (and (at start (not (buy_steamer_pending)))
                 (at end (buy_steamer_done)))
  )

  (:durative-action fill_steamer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (fill_steamer_pending))
                    (at start (buy_steamer_done)))
    :effect (and (at start (not (fill_steamer_pending)))
                 (at end (fill_steamer_done)))
  )

  (:durative-action hang_item
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (hang_item_pending))
    :effect (and (at start (not (hang_item_pending)))
                 (at end (hang_item_done)))
  )

  (:durative-action steam_wrinkles
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (steam_wrinkles_pending))
                    (at start (fill_steamer_done))
                    (at start (hang_item_done)))
    :effect (and (at start (not (steam_wrinkles_pending)))
                 (at end (steam_wrinkles_done)))
  )

  (:durative-action shower_hang
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (shower_hang_pending))
    :effect (and (at start (not (shower_hang_pending)))
                 (at end (shower_hang_done)))
  )
)
