(define (domain bookstore_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shower_done)
    (clothes_on)
    (shoes_on)
    (at_bookstore)
    (books_found)
  )

  (:durative-action take_shower
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_done)))
  )

  (:durative-action put_on_clothes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_on)))
  )

  (:durative-action put_on_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on)))
  )

  (:durative-action drive_to_bookstore
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (clothes_on)) (at start (shoes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_bookstore)))
  )

  (:durative-action find_books
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_bookstore)) (at start (shoes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (books_found)))
  )
)