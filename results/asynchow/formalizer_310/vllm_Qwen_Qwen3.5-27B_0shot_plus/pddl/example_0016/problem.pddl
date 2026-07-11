(define (problem sandcastle_task)
  (:domain sandcastle)
  
  (:init
    (pack_shovel_pending)
    (get_dressed_pending)
    (drive_to_beach_pending)
    (park_by_beach_pending)
    (walk_near_ocean_pending)
  )

  (:goal (and
    (pack_shovel_done)
    (get_dressed_done)
    (drive_to_beach_done)
    (park_by_beach_done)
    (walk_near_ocean_done)
  ))
)
