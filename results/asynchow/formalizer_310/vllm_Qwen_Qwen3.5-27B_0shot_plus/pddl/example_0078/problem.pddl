(define (problem get_books_problem)
  (:domain get_books_domain)
  
  (:init
    (shower_pending)
    (clothes_pending)
    (shoes_pending)
    (drive_pending)
    (find_books_pending)
  )

  (:goal (and
    (shower_done)
    (clothes_done)
    (shoes_done)
    (drive_done)
    (find_books_done)
  ))
)
