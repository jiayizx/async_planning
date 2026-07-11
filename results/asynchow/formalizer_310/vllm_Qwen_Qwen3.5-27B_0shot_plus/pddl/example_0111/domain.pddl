(define (domain haunted_house_setup)
  (:requirements :durative-actions)
  
  (:predicates
    (go_to_store_pending)
    (go_to_store_done)
    (buy_scary_supplies_pending)
    (buy_scary_supplies_done)
    (design_layout_pending)
    (design_layout_done)
    (get_nails_hammer_pending)
    (get_nails_hammer_done)
    (look_for_supplies_pending)
    (look_for_supplies_done)
  )

  (:durative-action go_to_store
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (go_to_store_pending)))
    :effect (and (at start (not (go_to_store_pending))) (at end (go_to_store_done)))
  )

  (:durative-action buy_scary_supplies
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (buy_scary_supplies_pending)) (at start (look_for_supplies_done)))
    :effect (and (at start (not (buy_scary_supplies_pending))) (at end (buy_scary_supplies_done)))
  )

  (:durative-action design_layout
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (design_layout_pending)))
    :effect (and (at start (not (design_layout_pending))) (at end (design_layout_done)))
  )

  (:durative-action get_nails_hammer
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_nails_hammer_pending)) (at start (design_layout_done)))
    :effect (and (at start (not (get_nails_hammer_pending))) (at end (get_nails_hammer_done)))
  )

  (:durative-action look_for_supplies
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_for_supplies_pending)) (at start (go_to_store_done)))
    :effect (and (at start (not (look_for_supplies_pending))) (at end (look_for_supplies_done)))
  )
)
