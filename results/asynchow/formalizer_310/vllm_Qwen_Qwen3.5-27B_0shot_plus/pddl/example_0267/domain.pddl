(define (domain ear_reflexology_chart)
  (:requirements :durative-actions)
  
  (:predicates
    (learn_emotional_points_pending)
    (learn_emotional_points_done)
    (identify_sympathy_guilt_selfpity_pending)
    (identify_sympathy_guilt_selfpity_done)
    (locate_depression_overwhelmed_pending)
    (locate_depression_overwhelmed_done)
    (look_anger_fear_expression_pending)
    (look_anger_fear_expression_done)
    (find_love_openness_pending)
    (find_love_openness_done)
  )

  (:durative-action learn_emotional_points
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (learn_emotional_points_pending)))
    :effect (and (at start (not (learn_emotional_points_pending)))
                 (at end (learn_emotional_points_done)))
  )

  (:durative-action identify_sympathy_guilt_selfpity
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (identify_sympathy_guilt_selfpity_pending))
                    (at start (learn_emotional_points_done)))
    :effect (and (at start (not (identify_sympathy_guilt_selfpity_pending)))
                 (at end (identify_sympathy_guilt_selfpity_done)))
  )

  (:durative-action locate_depression_overwhelmed
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (locate_depression_overwhelmed_pending))
                    (at start (learn_emotional_points_done)))
    :effect (and (at start (not (locate_depression_overwhelmed_pending)))
                 (at end (locate_depression_overwhelmed_done)))
  )

  (:durative-action look_anger_fear_expression
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (look_anger_fear_expression_pending))
                    (at start (learn_emotional_points_done)))
    :effect (and (at start (not (look_anger_fear_expression_pending)))
                 (at end (look_anger_fear_expression_done)))
  )

  (:durative-action find_love_openness
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (find_love_openness_pending))
                    (at start (learn_emotional_points_done)))
    :effect (and (at start (not (find_love_openness_pending)))
                 (at end (find_love_openness_done)))
  )
)