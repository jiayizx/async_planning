(define (domain voter_registration)
  (:requirements :durative-actions)
  
  (:predicates
    (go_to_website_pending)
    (go_to_website_done)
    (log_in_pending)
    (log_in_done)
    (sign_up_pending)
    (sign_up_done)
    (confirm_info_pending)
    (confirm_info_done)
    (wait_for_card_pending)
    (wait_for_card_done)
  )

  (:durative-action go_to_website
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (go_to_website_pending))
    :effect (and (at start (not (go_to_website_pending)))
                 (at end (go_to_website_done)))
  )

  (:durative-action log_in
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (log_in_pending))
                    (at start (go_to_website_done)))
    :effect (and (at start (not (log_in_pending)))
                 (at end (log_in_done)))
  )

  (:durative-action sign_up
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (sign_up_pending))
                    (at start (log_in_done)))
    :effect (and (at start (not (sign_up_pending)))
                 (at end (sign_up_done)))
  )

  (:durative-action confirm_info
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (confirm_info_pending))
                    (at start (log_in_done)))
    :effect (and (at start (not (confirm_info_pending)))
                 (at end (confirm_info_done)))
  )

  (:durative-action wait_for_card
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (wait_for_card_pending))
                    (at start (sign_up_done))
                    (at start (confirm_info_done)))
    :effect (and (at start (not (wait_for_card_pending)))
                 (at end (wait_for_card_done)))
  )
)
