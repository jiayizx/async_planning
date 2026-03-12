(define (domain get_books_school)
  (:requirements :durative-actions)
  (:predicates
    (take_shower_pending) (take_shower_done)
    (put_on_clothes_pending) (put_on_clothes_done)
    (put_on_shoes_pending) (put_on_shoes_done)
    (drive_to_bookstore_pending) (drive_to_bookstore_done)
    (find_books_pending) (find_books_done)
  )

  (:durative-action do_take_shower
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (take_shower_pending))
    :effect (and
      (at start (not (take_shower_pending)))
      (at end (take_shower_done))
    )
  )

  (:durative-action do_put_on_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_on_clothes_pending)) (at start (take_shower_done)))
    :effect (and
      (at start (not (put_on_clothes_pending)))
      (at end (put_on_clothes_done))
    )
  )

  (:durative-action do_put_on_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_on_shoes_pending)) (at start (take_shower_done)))
    :effect (and
      (at start (not (put_on_shoes_pending)))
      (at end (put_on_shoes_done))
    )
  )

  (:durative-action do_drive_to_bookstore
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_to_bookstore_pending)) (at start (put_on_clothes_done)) (at start (put_on_shoes_done)))
    :effect (and
      (at start (not (drive_to_bookstore_pending)))
      (at end (drive_to_bookstore_done))
    )
  )

  (:durative-action do_find_books
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (find_books_pending)) (at start (put_on_shoes_done)))
    :effect (and
      (at start (not (find_books_pending)))
      (at end (find_books_done))
    )
  )
)
