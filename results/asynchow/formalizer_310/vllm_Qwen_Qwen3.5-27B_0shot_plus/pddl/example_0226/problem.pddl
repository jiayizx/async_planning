(define (problem organize_house_instance)
  (:domain organize_house)
  
  (:init
    (throw_out_pending)
    (purchase_containers_pending)
    (use_bookshelves_pending)
    (use_drawers_pending)
    (purchase_kitchen_pending)
  )

  (:goal (and
    (throw_out_done)
    (purchase_containers_done)
    (use_bookshelves_done)
    (use_drawers_done)
    (purchase_kitchen_done)
  ))
)
