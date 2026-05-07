(define (domain graduation_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invitation_received)
    (gift_prepared)
    (directions_obtained)
    (dressed_up)
    (arrived_at_venue)
  )

  (:durative-action receive_invitation
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invitation_received)))
  )

  (:durative-action prepare_gift
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (invitation_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gift_prepared)))
  )

  (:durative-action get_directions
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (invitation_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (directions_obtained)))
  )

  (:durative-action dress_up
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (directions_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed_up)))
  )

  (:durative-action drive_to_venue
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (dressed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_venue)))
  )
)