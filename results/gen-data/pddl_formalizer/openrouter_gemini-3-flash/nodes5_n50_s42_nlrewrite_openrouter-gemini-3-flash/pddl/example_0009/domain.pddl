(define (domain play_at_neighbor)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_jacket_on)
    (parents_contacted)
    (bag_packed)
    (at_front_door)
    (permission_granted)
  )

  (:durative-action put_on_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (permission_granted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_jacket_on)))
  )

  (:durative-action text_neighbor
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parents_contacted)))
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (parents_contacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_packed)))
  )

  (:durative-action walk_across
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (shoes_jacket_on)) (at start (permission_granted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_front_door)))
  )

  (:durative-action ask_permission
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permission_granted)))
  )
)