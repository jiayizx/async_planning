(define (problem drink_fresh_milk)
  (:domain fresh_milk)
  
  (:init
    (walk_to_cabinet_pending)
    (open_cabinet_pending)
    (place_items_pending)
    (pour_milk_pending)
    (walk_to_fridge_pending)
    (grab_new_milk_pending)
    (drink_milk_pending)
  )

  (:goal (and
    (walk_to_cabinet_done)
    (open_cabinet_done)
    (place_items_done)
    (pour_milk_done)
    (walk_to_fridge_done)
    (grab_new_milk_done)
    (drink_milk_done)
  ))
)