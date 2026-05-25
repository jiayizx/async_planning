(define (domain party_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invitations_sent)
    (dj_booked)
    (catering_ordered)
    (guest_count_finalized)
    (poll_created)
    (menu_prepared)
    (venue_confirmed)
    (calendar_checked)
    (food_picked_up)
    (decorations_purchased)
  )

  (:durative-action design_invitations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invitations_sent)))
  )

  (:durative-action book_dj
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dj_booked)))
  )

  (:durative-action order_catering
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (catering_ordered)))
  )

  (:durative-action finalize_guest_count
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (invitations_sent)) (at start (poll_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guest_count_finalized)))
  )

  (:durative-action create_poll
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poll_created)))
  )

  (:durative-action prepare_menu
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (catering_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (menu_prepared)))
  )

  (:durative-action confirm_venue
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (dj_booked)) (at start (calendar_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (venue_confirmed)))
  )

  (:durative-action check_calendar
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calendar_checked)))
  )

  (:durative-action pick_up_food
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (menu_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_picked_up)))
  )

  (:durative-action purchase_decorations
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (invitations_sent)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decorations_purchased)))
  )
)