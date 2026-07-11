(define (problem dress_for_audition_problem)
  (:domain dress_for_audition)
  
  (:init
    (wear_clothes_pending)
    (slip_shoes_pending)
    (wear_hair_up_pending)
  )

  (:goal (and
    (wear_clothes_done)
    (slip_shoes_done)
    (wear_hair_up_done)
  ))
)
