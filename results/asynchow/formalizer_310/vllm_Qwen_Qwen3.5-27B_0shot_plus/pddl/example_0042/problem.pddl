(define (problem breakfast_task)
  (:domain breakfast_planning)
  
  (:init
    (heat_pan_pending)
    (crack_eggs_pending)
    (whisk_eggs_pending)
    (pour_eggs_pending)
    (scramble_cooking_pending)
    (add_butter_pending)
    (plate_eggs_pending)
  )

  (:goal (and
    (heat_pan_done)
    (crack_eggs_done)
    (whisk_eggs_done)
    (pour_eggs_done)
    (scramble_cooking_done)
    (add_butter_done)
    (plate_eggs_done)
  ))
)
