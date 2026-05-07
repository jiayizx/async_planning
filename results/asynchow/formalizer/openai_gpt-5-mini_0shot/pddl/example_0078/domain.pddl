(define (domain get_books)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shower_done)
    (clothes_done)
    (shoes_done)
    (drive_done)
    (findbooks_done)
  )

  ;; Step 1: take a shower
  (:durative-action do_shower
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shower_done))
    )
  )

  ;; Step 2: put on clothes (requires shower_done)
  (:durative-action do_clothes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clothes_done))
    )
  )

  ;; Step 3: put on shoes (requires shower_done)
  (:durative-action do_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_done))
    )
  )

  ;; Step 4: drive to the bookstore (requires clothes_done AND shoes_done)
  (:durative-action do_drive
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (clothes_done)) (at start (shoes_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drive_done))
    )
  )

  ;; Step 5: find the books (requires shoes_done)
  (:durative-action do_find_books
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shoes_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (findbooks_done))
    )
  )
)
