(define (domain async_books)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (shower_done)
    (clothes_done)
    (shoes_done)
    (driven_done)
    (books_found))
  (:durative-action step1_take_shower
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shower_done))))
  (:durative-action step2_put_on_clothes
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clothes_done))))
  (:durative-action step3_put_on_shoes
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shoes_done))))
  (:durative-action step4_drive_to_bookstore
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (clothes_done)) (at start (shoes_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (driven_done))))
  (:durative-action step5_find_books
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (shoes_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (books_found))))
)