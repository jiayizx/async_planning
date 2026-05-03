(define (domain get_books_domain)
  (:requirements :durative-actions)
  
  (:predicates
    (shower_pending)
    (shower_done)
    (clothes_pending)
    (clothes_done)
    (shoes_pending)
    (shoes_done)
    (drive_pending)
    (drive_done)
    (find_books_pending)
    (find_books_done)
  )

  (:durative-action do_shower
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (shower_pending))
    :effect (and (at start (not (shower_pending))) (at end (shower_done)))
  )

  (:durative-action do_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (clothes_pending)) (at start (shower_done)))
    :effect (and (at start (not (clothes_pending))) (at end (clothes_done)))
  )

  (:durative-action do_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (shoes_pending)) (at start (shower_done)))
    :effect (and (at start (not (shoes_pending))) (at end (shoes_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_pending)) (at start (clothes_done)) (at start (shoes_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_find_books
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (find_books_pending)) (at start (shoes_done)))
    :effect (and (at start (not (find_books_pending))) (at end (find_books_done)))
  )
)
