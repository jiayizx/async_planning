(define (domain marathon_signup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (laptop_out)
    (on_internet)
    (website_found)
    (payment_checked)
    (date_checked)
    (info_entered)
  )

  (:durative-action take_out_laptop
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laptop_out)))
  )

  (:durative-action go_on_internet
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (laptop_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (on_internet)))
  )

  (:durative-action look_up_website
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (on_internet)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_found)))
  )

  (:durative-action check_payment
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (website_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (payment_checked)))
  )

  (:durative-action check_date
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (website_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (date_checked)))
  )

  (:durative-action enter_personal_info
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (payment_checked)) (at start (date_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (info_entered)))
  )
)