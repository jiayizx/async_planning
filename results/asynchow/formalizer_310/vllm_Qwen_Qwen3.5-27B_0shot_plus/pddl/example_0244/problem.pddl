(define (problem dress_metal_girls_instance)
  (:domain dress_metal_girls)
  
  (:init
    (cover_jacket_pending)
    (accessorize_wrists_pending)
    (pick_necklaces_pending)
    (wear_belt_pending)
    (carry_bag_pending)
  )

  (:goal (and
    (cover_jacket_done)
    (accessorize_wrists_done)
    (pick_necklaces_done)
    (wear_belt_done)
    (carry_bag_done)
  ))
)