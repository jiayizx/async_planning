(define (problem learn_backflip)
  (:domain backflip_learning)
  
  (:init
    (search_pending)
    (watch_pending)
    (contact_pending)
    (ask_pending)
    (book_pending)
    (follow_pending)
    (continue_pending)
  )

  (:goal (and
    (search_done)
    (watch_done)
    (contact_done)
    (ask_done)
    (book_done)
    (follow_done)
    (continue_done)
  ))
)
