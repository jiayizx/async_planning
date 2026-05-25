(define (problem own_a_dog)
  (:domain dog_ownership)
  
  (:init
    (search_pending)
    (drive_pending)
    (look_pending)
    (pick_pending)
    (paperwork_pending)
    (supplies_pending)
    (food_pending)
  )

  (:goal (and
    (search_done)
    (drive_done)
    (look_done)
    (pick_done)
    (paperwork_done)
    (supplies_done)
    (food_done)
  ))
)
