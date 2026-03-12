(define (domain manx_care)
  (:requirements :durative-actions)
  (:predicates
    (research_pending)
    (research_done)
    (purchase_pending)
    (purchase_done)
    (setup_pending)
    (setup_done)
    (feed_pending)
    (feed_done)
    (vet_pending)
    (vet_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_purchase
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_pending)) (at start (research_done)))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action do_setup
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (setup_pending))
    :effect (and (at start (not (setup_pending))) (at end (setup_done)))
  )

  (:durative-action do_feed
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (feed_pending)) (at start (purchase_done)) (at start (vet_done)))
    :effect (and (at start (not (feed_pending))) (at end (feed_done)))
  )

  (:durative-action do_vet
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (vet_pending)) (at start (setup_done)))
    :effect (and (at start (not (vet_pending))) (at end (vet_done)))
  )
)
