(define (domain party_planning)
  (:requirements :durative-actions)
  (:predicates
    (choose_theme_pending)
    (choose_theme_done)
    (send_invitations_pending)
    (send_invitations_done)
    (purchase_groceries_pending)
    (purchase_groceries_done)
    (finalize_guest_list_pending)
    (finalize_guest_list_done)
    (research_venues_pending)
    (research_venues_done)
    (book_hall_pending)
    (book_hall_done)
    (create_budget_pending)
    (create_budget_done)
    (draft_schedule_pending)
    (draft_schedule_done)
    (brainstorm_games_pending)
    (brainstorm_games_done)
    (select_date_pending)
    (select_date_done)
    (survey_friends_pending)
    (survey_friends_done)
    (calculate_cost_pending)
    (calculate_cost_done)
    (setup_decor_pending)
    (setup_decor_done)
    (confirm_rsvps_pending)
    (confirm_rsvps_done)
    (wait_responses_pending)
    (wait_responses_done)
  )

  (:durative-action choose_theme
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (choose_theme_pending)) (at start (survey_friends_done)))
    :effect (and (at start (not (choose_theme_pending))) (at end (choose_theme_done)))
  )

  (:durative-action send_invitations
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (send_invitations_pending)) (at start (finalize_guest_list_done)))
    :effect (and (at start (not (send_invitations_pending))) (at end (send_invitations_done)))
  )

  (:durative-action purchase_groceries
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_groceries_pending)) (at start (confirm_rsvps_done)))
    :effect (and (at start (not (purchase_groceries_pending))) (at end (purchase_groceries_done)))
  )

  (:durative-action finalize_guest_list
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (finalize_guest_list_pending)) (at start (book_hall_done)) (at start (calculate_cost_done)))
    :effect (and (at start (not (finalize_guest_list_pending))) (at end (finalize_guest_list_done)))
  )

  (:durative-action research_venues
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (research_venues_pending))
    :effect (and (at start (not (research_venues_pending))) (at end (research_venues_done)))
  )

  (:durative-action book_hall
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (book_hall_pending)) (at start (research_venues_done)))
    :effect (and (at start (not (book_hall_pending))) (at end (book_hall_done)))
  )

  (:durative-action create_budget
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (create_budget_pending)) (at start (draft_schedule_done)))
    :effect (and (at start (not (create_budget_pending))) (at end (create_budget_done)))
  )

  (:durative-action draft_schedule
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (draft_schedule_pending)) (at start (brainstorm_games_done)))
    :effect (and (at start (not (draft_schedule_pending))) (at end (draft_schedule_done)))
  )

  (:durative-action brainstorm_games
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (brainstorm_games_pending)) (at start (select_date_done)))
    :effect (and (at start (not (brainstorm_games_pending))) (at end (brainstorm_games_done)))
  )

  (:durative-action select_date
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (select_date_pending)) (at start (choose_theme_done)))
    :effect (and (at start (not (select_date_pending))) (at end (select_date_done)))
  )

  (:durative-action survey_friends
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (survey_friends_pending))
    :effect (and (at start (not (survey_friends_pending))) (at end (survey_friends_done)))
  )

  (:durative-action calculate_cost
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (calculate_cost_pending)) (at start (create_budget_done)))
    :effect (and (at start (not (calculate_cost_pending))) (at end (calculate_cost_done)))
  )

  (:durative-action setup_decor
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (setup_decor_pending)) (at start (purchase_groceries_done)))
    :effect (and (at start (not (setup_decor_pending))) (at end (setup_decor_done)))
  )

  (:durative-action confirm_rsvps
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (confirm_rsvps_pending)) (at start (wait_responses_done)))
    :effect (and (at start (not (confirm_rsvps_pending))) (at end (confirm_rsvps_done)))
  )

  (:durative-action wait_responses
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (wait_responses_pending)) (at start (send_invitations_done)))
    :effect (and (at start (not (wait_responses_pending))) (at end (wait_responses_done)))
  )
)
