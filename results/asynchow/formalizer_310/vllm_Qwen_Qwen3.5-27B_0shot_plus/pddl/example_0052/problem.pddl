(define (problem baja_racing_problem)
  (:domain baja_racing)
  
  (:init
    (get_good_at_baja_pending)
    (apply_to_contest_pending)
    (pay_fees_pending)
    (bring_gear_pending)
    (bring_friends_pending)
  )

  (:goal (and
    (get_good_at_baja_done)
    (apply_to_contest_done)
    (pay_fees_done)
    (bring_gear_done)
    (bring_friends_done)
  ))
)