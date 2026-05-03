(define (problem go_to_movies)
  (:domain movies_planning)
  
  (:init
    (shower_dress_pending)
    (find_movie_pending)
    (buy_tickets_pending)
    (print_tickets_pending)
    (leave_lock_pending)
    (go_theatre_pending)
    (present_tickets_pending)
  )

  (:goal (and
    (shower_dress_done)
    (find_movie_done)
    (buy_tickets_done)
    (print_tickets_done)
    (leave_lock_done)
    (go_theatre_done)
    (present_tickets_done)
  ))
)
