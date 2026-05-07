(define (domain fly_as_kid)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (attend_done)
    (findplane_done)
    (talkbank_done)
    (buyplane_done)
    (runway_done)
  )

  (:durative-action attend_flight_school
    :parameters (?s - step)
    :duration (= ?duration 63072000)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (attend_done))
            )
  )

  (:durative-action find_plane
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (attend_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (findplane_done))
            )
  )

  (:durative-action talk_to_bank
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (attend_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (talkbank_done))
            )
  )

  (:durative-action buy_plane
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (findplane_done)) (at start (talkbank_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (buyplane_done))
            )
  )

  (:durative-action goto_runway_with_plane
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (buyplane_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (runway_done))
            )
  )
)
