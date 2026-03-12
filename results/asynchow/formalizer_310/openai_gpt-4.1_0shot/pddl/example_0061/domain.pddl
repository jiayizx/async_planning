(define (domain voter_registration)
  (:requirements :durative-actions)
  (:predicates
    (go_to_website_pending)
    (go_to_website_done)
    (login_pending)
    (login_done)
    (signup_pending)
    (signup_done)
    (confirm_info_pending)
    (confirm_info_done)
    (wait_card_pending)
    (wait_card_done)
  )

  (:durative-action do_go_to_website
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (go_to_website_pending))
    :effect (and (at start (not (go_to_website_pending))) (at end (go_to_website_done)))
  )

  (:durative-action do_login
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (login_pending)) (at start (go_to_website_done)))
    :effect (and (at start (not (login_pending))) (at end (login_done)))
  )

  (:durative-action do_signup
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (signup_pending)) (at start (login_done)))
    :effect (and (at start (not (signup_pending))) (at end (signup_done)))
  )

  (:durative-action do_confirm_info
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (confirm_info_pending)) (at start (login_done)))
    :effect (and (at start (not (confirm_info_pending))) (at end (confirm_info_done)))
  )

  (:durative-action do_wait_card
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (wait_card_pending)) (at start (signup_done)) (at start (confirm_info_done)))
    :effect (and (at start (not (wait_card_pending))) (at end (wait_card_done)))
  )
)
