(define (domain community_help)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (registration_done)
    (flyers_done)
    (collection_done)
    (delivery_done)
  )

  (:durative-action research_orgs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action register_child
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registration_done)))
  )

  (:durative-action design_flyers
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (registration_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flyers_done)))
  )

  (:durative-action collect_items
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (registration_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (collection_done)))
  )

  (:durative-action deliver_goods
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (collection_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (delivery_done)))
  )
)