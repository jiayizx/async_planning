(define (problem cheap_vacation_problem)
  (:domain cheap_vacation)
  
  (:init
    (drive_to_hiking_front_pending)
    (pack_hiking_backpacks_pending)
    (hike_out_trails_pending)
    (camp_out_overnight_pending)
    (hike_trails_back_pending)
  )

  (:goal (and
    (drive_to_hiking_front_done)
    (pack_hiking_backpacks_done)
    (hike_out_trails_done)
    (camp_out_overnight_done)
    (hike_trails_back_done)
  ))
)
