(define (problem haunted_house_setup_problem)
  (:domain haunted_house_setup)
  
  (:init
    (go_to_store_pending)
    (buy_scary_supplies_pending)
    (design_layout_pending)
    (get_nails_hammer_pending)
    (look_for_supplies_pending)
  )

  (:goal (and
    (go_to_store_done)
    (buy_scary_supplies_done)
    (design_layout_done)
    (get_nails_hammer_done)
    (look_for_supplies_done)
  ))
)
