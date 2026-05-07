(define (domain leave_house)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (destination_decided)
    (clothing_on)
    (items_found)
    (mirror_checked)
    (shoes_on)
    (stepped_outside)
  )

  (:durative-action decide_destination
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (destination_decided)))
  )

  (:durative-action put_clothing_on
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (destination_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_on)))
  )

  (:durative-action find_items
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (destination_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (items_found)))
  )

  (:durative-action check_mirror
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (clothing_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_checked)))
  )

  (:durative-action put_shoes_on
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (clothing_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on)))
  )

  (:durative-action step_outside
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (items_found)) (at start (mirror_checked)) (at start (shoes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stepped_outside)))
  )
)