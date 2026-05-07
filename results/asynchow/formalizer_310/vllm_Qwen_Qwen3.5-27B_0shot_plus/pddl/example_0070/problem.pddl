(define (problem marathon_signup_problem)
  (:domain marathon_signup)
  
  (:init
    (take_out_laptop_pending)
    (go_on_internet_pending)
    (look_up_website_pending)
    (check_payment_options_pending)
    (check_date_pending)
    (enter_personal_info_pending)
  )

  (:goal (and
    (take_out_laptop_done)
    (go_on_internet_done)
    (look_up_website_done)
    (check_payment_options_done)
    (check_date_done)
    (enter_personal_info_done)
  ))
)
