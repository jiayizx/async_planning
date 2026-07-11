(define (problem make_money_problem)
  (:domain make_money)
  
  (:init
    (pick_up_application_pending)
    (go_to_restaurant_pending)
    (turn_in_application_pending)
    (work_summer_job_pending)
    (fill_out_application_pending)
  )

  (:goal (and
    (pick_up_application_done)
    (go_to_restaurant_done)
    (turn_in_application_done)
    (work_summer_job_done)
    (fill_out_application_done)
  ))
)
