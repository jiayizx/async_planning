(define (problem dress_audition_p)
  (:domain dress_audition)
  (:init
    (wear_comfortable_clothes_pending)
    (slip_on_dance_shoes_pending)
    (wear_hair_up_pending)
  )
  (:goal (and
    (wear_comfortable_clothes_done)
    (slip_on_dance_shoes_done)
    (wear_hair_up_done)
  ))
)
