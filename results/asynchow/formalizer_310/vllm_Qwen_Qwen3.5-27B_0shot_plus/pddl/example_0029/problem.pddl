(define (problem leave_house_problem)
  (:domain leave_house)
  
  (:init
    (decide_pending)
    (clothing_pending)
    (find_keys_pending)
    (mirror_pending)
    (shoes_pending)
    (step_out_pending)
  )

  (:goal (and
    (decide_done)
    (clothing_done)
    (find_keys_done)
    (mirror_done)
    (shoes_done)
    (step_out_done)
  ))
)
