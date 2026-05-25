(define (problem get_ready_problem)
  (:domain get_ready_domain)
  
  (:init
    (start_shower_pending)
    (get_into_shower_pending)
    (take_shower_pending)
    (dry_off_pending)
    (brush_teeth_pending)
    (comb_hair_pending)
    (pick_outfit_pending)
  )

  (:goal (and
    (start_shower_done)
    (get_into_shower_done)
    (take_shower_done)
    (dry_off_done)
    (brush_teeth_done)
    (comb_hair_done)
    (pick_outfit_done)
  ))
)
