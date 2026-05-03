(define (problem nursery_graduation_problem)
  (:domain nursery_graduation)
  
  (:init
    (receive_invitation_pending)
    (prepare_gift_pending)
    (get_directions_pending)
    (dress_up_pending)
    (drive_to_venue_pending)
  )

  (:goal (and
    (receive_invitation_done)
    (prepare_gift_done)
    (get_directions_done)
    (dress_up_done)
    (drive_to_venue_done)
  ))
)
