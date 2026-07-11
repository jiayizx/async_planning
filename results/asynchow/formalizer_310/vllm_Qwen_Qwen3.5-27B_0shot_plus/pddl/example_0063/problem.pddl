(define (problem breakfast_task)
  (:domain breakfast_planning)
  
  (:init
    (put_pan_pending)
    (take_ingredients_pending)
    (put_butter_pending)
    (turn_stove_pending)
    (add_egg_pending)
    (cook_egg_pending)
    (serve_enjoy_pending)
  )

  (:goal (and
    (put_pan_done)
    (take_ingredients_done)
    (put_butter_done)
    (turn_stove_done)
    (add_egg_done)
    (cook_egg_done)
    (serve_enjoy_done)
  ))
)