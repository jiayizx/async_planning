(define (domain wimbledon-tickets)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (hotel_booked)
    (mobile_app_downloaded)
    (mywimbledon_account_created)
    (public_ballot_entered)
    (lta_membership_joined)
    (tickets_printed)
    (ballot_results_announced)
    (allocated_tickets_paid)
    (identity_address_verified)
    (communications_opted_in)
  )

  (:durative-action book_hotel_room
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (allocated_tickets_paid))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hotel_booked))
    )
  )

  (:durative-action download_mobile_app
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (communications_opted_in))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mobile_app_downloaded))
    )
  )

  (:durative-action create_mywimbledon_account
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mywimbledon_account_created))
    )
  )

  (:durative-action enter_public_ballot
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (identity_address_verified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (public_ballot_entered))
    )
  )

  (:durative-action join_lta_membership
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (identity_address_verified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lta_membership_joined))
    )
  )

  (:durative-action print_tickets_and_confirmation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (allocated_tickets_paid))
      (at start (communications_opted_in))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tickets_printed))
    )
  )

  (:durative-action wait_for_ballot_results
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (communications_opted_in))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ballot_results_announced))
    )
  )

  (:durative-action pay_for_allocated_tickets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (public_ballot_entered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (allocated_tickets_paid))
    )
  )

  (:durative-action verify_identity_and_address
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (ballot_results_announced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (identity_address_verified))
    )
  )

  (:durative-action opt_in_to_communications
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (mywimbledon_account_created))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (communications_opted_in))
    )
  )
)