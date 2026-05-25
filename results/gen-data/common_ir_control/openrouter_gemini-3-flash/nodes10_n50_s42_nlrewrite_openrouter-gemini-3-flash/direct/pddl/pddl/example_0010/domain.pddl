(define (domain wimbledon_tickets)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (account_created)
    (opted_in)
    (app_downloaded)
    (results_announced)
    (identity_verified)
    (ballot_entered)
    (membership_joined)
    (tickets_paid)
    (hotel_booked)
    (tickets_printed)
  )

  (:durative-action create_account
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (account_created)))
  )

  (:durative-action opt_in
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (account_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (opted_in)))
  )

  (:durative-action download_app
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (opted_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (app_downloaded)))
  )

  (:durative-action wait_results
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (opted_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (results_announced)))
  )

  (:durative-action verify_identity
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (results_announced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (identity_verified)))
  )

  (:durative-action enter_ballot
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (identity_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ballot_entered)))
  )

  (:durative-action join_membership
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (identity_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (membership_joined)))
  )

  (:durative-action pay_tickets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (ballot_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_paid)))
  )

  (:durative-action book_hotel
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (tickets_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_booked)))
  )

  (:durative-action print_tickets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (tickets_paid)) (at start (opted_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_printed)))
  )
)