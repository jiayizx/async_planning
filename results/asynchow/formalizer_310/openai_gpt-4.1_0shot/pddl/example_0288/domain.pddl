(define (domain police_clearance)
  (:requirements :durative-actions)
  (:predicates
    (visit_website_pending)
    (visit_website_done)
    (register_pending)
    (register_done)
    (fill_application_pending)
    (fill_application_done)
    (pay_fee_pending)
    (pay_fee_done)
    (schedule_appointment_pending)
    (schedule_appointment_done)
    (print_confirmation_pending)
    (print_confirmation_done)
  )

  (:durative-action do_visit_website
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (visit_website_pending))
    :effect (and (at start (not (visit_website_pending))) (at end (visit_website_done)))
  )

  (:durative-action do_register
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (register_pending)) (at start (visit_website_done)))
    :effect (and (at start (not (register_pending))) (at end (register_done)))
  )

  (:durative-action do_fill_application
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (fill_application_pending)) (at start (register_done)))
    :effect (and (at start (not (fill_application_pending))) (at end (fill_application_done)))
  )

  (:durative-action do_pay_fee
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pay_fee_pending)) (at start (fill_application_done)))
    :effect (and (at start (not (pay_fee_pending))) (at end (pay_fee_done)))
  )

  (:durative-action do_schedule_appointment
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (schedule_appointment_pending)) (at start (fill_application_done)))
    :effect (and (at start (not (schedule_appointment_pending))) (at end (schedule_appointment_done)))
  )

  (:durative-action do_print_confirmation
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (print_confirmation_pending)) (at start (schedule_appointment_done)))
    :effect (and (at start (not (print_confirmation_pending))) (at end (print_confirmation_done)))
  )
)
