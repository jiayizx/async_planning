(define (problem get_voter_card)
  (:domain voter_registration)
  
  (:init
    (go_to_website_pending)
    (log_in_pending)
    (sign_up_pending)
    (confirm_info_pending)
    (wait_for_card_pending)
  )

  (:goal (and
    (go_to_website_done)
    (log_in_done)
    (sign_up_done)
    (confirm_info_done)
    (wait_for_card_done)
  ))
)
