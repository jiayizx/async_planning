(define (domain marathon_signup)
  (:requirements :durative-actions)
  
  (:predicates
    (take_out_laptop_pending)
    (take_out_laptop_done)
    (go_on_internet_pending)
    (go_on_internet_done)
    (look_up_website_pending)
    (look_up_website_done)
    (check_payment_options_pending)
    (check_payment_options_done)
    (check_date_pending)
    (check_date_done)
    (enter_personal_info_pending)
    (enter_personal_info_done)
  )

  (:durative-action take_out_laptop
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (take_out_laptop_pending))
    :effect (and (at start (not (take_out_laptop_pending))) (at end (take_out_laptop_done)))
  )

  (:durative-action go_on_internet
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (go_on_internet_pending)) (at start (take_out_laptop_done)))
    :effect (and (at start (not (go_on_internet_pending))) (at end (go_on_internet_done)))
  )

  (:durative-action look_up_website
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (look_up_website_pending)) (at start (go_on_internet_done)))
    :effect (and (at start (not (look_up_website_pending))) (at end (look_up_website_done)))
  )

  (:durative-action check_payment_options
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (check_payment_options_pending)) (at start (look_up_website_done)))
    :effect (and (at start (not (check_payment_options_pending))) (at end (check_payment_options_done)))
  )

  (:durative-action check_date
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (check_date_pending)) (at start (look_up_website_done)))
    :effect (and (at start (not (check_date_pending))) (at end (check_date_done)))
  )

  (:durative-action enter_personal_info
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (enter_personal_info_pending)) (at start (check_payment_options_done)) (at start (check_date_done)))
    :effect (and (at start (not (enter_personal_info_pending))) (at end (enter_personal_info_done)))
  )
)
