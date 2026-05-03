(define (problem race_5k)
  (:domain race_preparation)
  
  (:init
    (sign_up_pending)
    (practice_running_pending)
    (eat_well_pending)
    (rest_before_race_pending)
    (arrive_at_race_pending)
  )

  (:goal (and
    (sign_up_done)
    (practice_running_done)
    (eat_well_done)
    (rest_before_race_done)
    (arrive_at_race_done)
  ))
)