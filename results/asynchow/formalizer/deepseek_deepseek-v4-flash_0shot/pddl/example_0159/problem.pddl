(define (problem dress_for_audition_prob)
  (:domain dress_for_audition)
  (:init
    (clothes_pending)
    (shoes_pending)
    (hair_pending))
  (:goal (and (comfortable_clothes_worn) (dance_shoes_on) (hair_up)))
)