(define (domain movies_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (shower_dress_pending)
    (shower_dress_done)
    (find_movie_pending)
    (find_movie_done)
    (buy_tickets_pending)
    (buy_tickets_done)
    (print_tickets_pending)
    (print_tickets_done)
    (leave_lock_pending)
    (leave_lock_done)
    (go_theatre_pending)
    (go_theatre_done)
    (present_tickets_pending)
    (present_tickets_done)
  )

  (:durative-action do_shower_dress
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (shower_dress_pending))
    :effect (and (at start (not (shower_dress_pending))) (at end (shower_dress_done)))
  )

  (:durative-action do_find_movie
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_movie_pending))
    :effect (and (at start (not (find_movie_pending))) (at end (find_movie_done)))
  )

  (:durative-action do_buy_tickets
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (buy_tickets_pending)) (at start (find_movie_done)))
    :effect (and (at start (not (buy_tickets_pending))) (at end (buy_tickets_done)))
  )

  (:durative-action do_print_tickets
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (print_tickets_pending)) (at start (buy_tickets_done)))
    :effect (and (at start (not (print_tickets_pending))) (at end (print_tickets_done)))
  )

  (:durative-action do_leave_lock
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (leave_lock_pending)) (at start (shower_dress_done)) (at start (print_tickets_done)))
    :effect (and (at start (not (leave_lock_pending))) (at end (leave_lock_done)))
  )

  (:durative-action do_go_theatre
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (go_theatre_pending)) (at start (leave_lock_done)))
    :effect (and (at start (not (go_theatre_pending))) (at end (go_theatre_done)))
  )

  (:durative-action do_present_tickets
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (present_tickets_pending)) (at start (go_theatre_done)))
    :effect (and (at start (not (present_tickets_pending))) (at end (present_tickets_done)))
  )
)
