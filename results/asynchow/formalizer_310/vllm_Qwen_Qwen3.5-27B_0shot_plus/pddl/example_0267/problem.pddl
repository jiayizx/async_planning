(define (problem read_ear_reflexology_chart)
  (:domain ear_reflexology_chart)
  
  (:init
    (learn_emotional_points_pending)
    (identify_sympathy_guilt_selfpity_pending)
    (locate_depression_overwhelmed_pending)
    (look_anger_fear_expression_pending)
    (find_love_openness_pending)
  )

  (:goal (and
    (learn_emotional_points_done)
    (identify_sympathy_guilt_selfpity_done)
    (locate_depression_overwhelmed_done)
    (look_anger_fear_expression_done)
    (find_love_openness_done)
  ))
)