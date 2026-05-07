(define (domain organize_house)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decluttered)
    (containers_bought)
    (bookshelves_organized)
    (closet_maximized)
    (kitchen_organized)
  )

  (:durative-action throw_out_things
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decluttered)))
  )

  (:durative-action purchase_storage_containers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (containers_bought)))
  )

  (:durative-action use_bookshelves
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bookshelves_organized)))
  )

  (:durative-action maximize_closet
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (closet_maximized)))
  )

  (:durative-action purchase_kitchen_containers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kitchen_organized)))
  )
)