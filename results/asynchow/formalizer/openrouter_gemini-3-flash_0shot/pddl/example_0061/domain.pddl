(define (domain voter_registration)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (website_visited)
    (logged_in)
    (signed_up)
    (info_confirmed)
    (card_received)
  )

  (:durative-action visit_website
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_visited)))
  )

  (:durative-action login
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (website_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logged_in)))
  )

  (:durative-action signup
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (and (at start (step_pending ?s)) (at start (logged_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signed_up)))
  )

  (:durative-action confirm_info
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (and (at start (step_pending ?s)) (at start (logged_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (info_confirmed)))
  )

  (:durative-action wait_for_card
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)) (at start (info_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (card_received)))
  )
)