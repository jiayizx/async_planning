(define (problem sing_in_musical)
  (:domain school_musical)
  
  (:init
    (sign_up_pending)
    (audition_pending)
    (get_picked_pending)
    (rehearse_part_pending)
    (rehearse_play_pending)
    (show_up_pending)
  )

  (:goal (and
    (sign_up_done)
    (audition_done)
    (get_picked_done)
    (rehearse_part_done)
    (rehearse_play_done)
    (show_up_done)
  ))
)
