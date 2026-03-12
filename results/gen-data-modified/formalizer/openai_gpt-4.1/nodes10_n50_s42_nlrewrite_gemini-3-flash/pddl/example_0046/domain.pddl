(define (domain marathon-prep)
  (:requirements :durative-actions)
  (:predicates
    (register_pending)
    (register_done)
    (research_pending)
    (research_done)
    (train_pending)
    (train_done)
    (travel_pending)
    (travel_done)
    (taper_pending)
    (taper_done)
    (purchase_pending)
    (purchase_done)
    (book_pending)
    (book_done)
    (exam_pending)
    (exam_done)
    (pickup_pending)
    (pickup_done)
    (run_pending)
    (run_done)
  )

  (:durative-action do_register
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (register_pending))
    :effect (and (at start (not (register_pending))) (at end (register_done)))
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_pending)) (at start (purchase_done)))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_train
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (and (at start (train_pending)) (at start (research_done)))
    :effect (and (at start (not (train_pending))) (at end (train_done)))
  )

  (:durative-action do_travel
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (travel_pending)) (at start (taper_done)))
    :effect (and (at start (not (travel_pending))) (at end (travel_done)))
  )

  (:durative-action do_taper
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (taper_pending)) (at start (train_done)))
    :effect (and (at start (not (taper_pending))) (at end (taper_done)))
  )

  (:durative-action do_purchase
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_pending)) (at start (exam_done)))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action do_book
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (book_pending))
    :effect (and (at start (not (book_pending))) (at end (book_done)))
  )

  (:durative-action do_exam
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (exam_pending))
    :effect (and (at start (not (exam_pending))) (at end (exam_done)))
  )

  (:durative-action do_pickup
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pickup_pending)) (at start (register_done)) (at start (book_done)))
    :effect (and (at start (not (pickup_pending))) (at end (pickup_done)))
  )

  (:durative-action do_run
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (run_pending)) (at start (travel_done)))
    :effect (and (at start (not (run_pending))) (at end (run_done)))
  )
)
