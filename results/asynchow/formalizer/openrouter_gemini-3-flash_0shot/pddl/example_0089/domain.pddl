(define (domain friends_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gatherings_found)
    (gatherings_visited)
    (introduced)
    (conversations_had)
    (common_ground_found)
    (coffee_invited)
    (friends_made)
  )

  (:durative-action find_gatherings
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gatherings_found)))
  )

  (:durative-action visit_gatherings
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (gatherings_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gatherings_visited)))
  )

  (:durative-action introduce_self
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (gatherings_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (introduced)))
  )

  (:durative-action have_conversations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (gatherings_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conversations_had)))
  )

  (:durative-action find_common_ground
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (introduced)) (at start (conversations_had)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (common_ground_found)))
  )

  (:durative-action invite_coffee
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (common_ground_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_invited)))
  )

  (:durative-action meet_for_coffee
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (coffee_invited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_made)))
  )
)