(define (problem diet_task)
  (:domain diet_planning)
  
  (:init
    (get_recommendations_pending)
    (look_up_diets_pending)
    (make_commitment_pending)
    (compare_diets_pending)
    (talk_to_doctor_pending)
  )

  (:goal (and
    (get_recommendations_done)
    (look_up_diets_done)
    (make_commitment_done)
    (compare_diets_done)
    (talk_to_doctor_done)
  ))
)
