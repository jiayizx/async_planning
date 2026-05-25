(define (problem writer_dream_problem)
  (:domain writer_dream)
  
  (:init
    (search_genres_pending)
    (search_skills_pending)
    (take_class_pending)
    (practice_writing_pending)
    (write_book_pending)
    (shop_book_pending)
    (get_famous_pending)
  )

  (:goal (and
    (search_genres_done)
    (search_skills_done)
    (take_class_done)
    (practice_writing_done)
    (write_book_done)
    (shop_book_done)
    (get_famous_done)
  ))
)