(define (domain host-party)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invitations_sent)
    (dj_booked)
    (catering_ordered)
    (guest_count_finalized)
    (song_poll_created)
    (menu_prepared)
    (venue_confirmed)
    (venue_availability_checked)
    (food_picked_up)
    (decorations_purchased)
  )

  (:durative-action design-and-send-invitations
    :parameters (?s - step1-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (invitations_sent))))

  (:durative-action research-and-book-dj
    :parameters (?s - step2-type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dj_booked))))

  (:durative-action order-custom-catering
    :parameters (?s - step3-type)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (catering_ordered))))

  (:durative-action finalize-guest-count
    :parameters (?s - step4-type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (invitations_sent))
      (at start (song_poll_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guest_count_finalized))))

  (:durative-action create-song-request-poll
    :parameters (?s - step5-type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (song_poll_created))))

  (:durative-action prepare-catering-menu
    :parameters (?s - step6-type)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (catering_ordered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (menu_prepared))))

  (:durative-action confirm-venue-reservation
    :parameters (?s - step7-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (dj_booked))
      (at start (venue_availability_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_confirmed))))

  (:durative-action check-venue-availability
    :parameters (?s - step8-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_availability_checked))))

  (:durative-action pick-up-catering
    :parameters (?s - step9-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (menu_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (food_picked_up))))

  (:durative-action purchase-decorations-and-favors
    :parameters (?s - step10-type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (invitations_sent)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decorations_purchased))))
)