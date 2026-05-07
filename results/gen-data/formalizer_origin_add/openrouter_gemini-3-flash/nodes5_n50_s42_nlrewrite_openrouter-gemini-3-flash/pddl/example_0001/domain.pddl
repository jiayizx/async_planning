(define (domain introduce_friends)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invite_sent)
    (restaurant_researched)
    (chat_created)
    (reservation_made)
    (party_hosted)
  )

  (:durative-action send_invite
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (chat_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invite_sent)))
  )

  (:durative-action research_restaurant
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (restaurant_researched)))
  )

  (:durative-action create_chat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chat_created)))
  )

  (:durative-action make_reservation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (restaurant_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reservation_made)))
  )

  (:durative-action host_party
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (invite_sent)) (at start (restaurant_researched)) (at start (chat_created)) (at start (reservation_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (party_hosted)))
  )
)