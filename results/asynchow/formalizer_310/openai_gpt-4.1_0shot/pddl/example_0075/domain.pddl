(define (domain vacation-location-choice)
  (:requirements :durative-actions)
  (:predicates
    (mull_pending)
    (mull_done)
    (ask_pending)
    (ask_done)
    (select_pending)
    (select_done)
    (write_pending)
    (write_done)
    (put_pending)
    (put_done)
    (draw_pending)
    (draw_done)
  )

  (:durative-action mull_over_pros_cons
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (mull_pending))
    :effect (and (at start (not (mull_pending))) (at end (mull_done)))
  )

  (:durative-action ask_husband_preference
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (ask_pending)) (at start (mull_done)))
    :effect (and (at start (not (ask_pending))) (at end (ask_done)))
  )

  (:durative-action select_first_preference
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (select_pending)) (at start (mull_done)))
    :effect (and (at start (not (select_pending))) (at end (select_done)))
  )

  (:durative-action write_top_two_locations
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (write_pending)) (at start (ask_done)) (at start (select_done)))
    :effect (and (at start (not (write_pending))) (at end (write_done)))
  )

  (:durative-action put_papers_in_hat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (put_pending)) (at start (write_done)))
    :effect (and (at start (not (put_pending))) (at end (put_done)))
  )

  (:durative-action draw_paper_from_hat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (draw_pending)) (at start (put_done)))
    :effect (and (at start (not (draw_pending))) (at end (draw_done)))
  )
)
