(define (domain dha_production)
  (:requirements :durative-actions)
  (:predicates
    (centrifuge_pending)
    (centrifuge_done)
    (refine_pending)
    (refine_done)
    (harvest_pending)
    (harvest_done)
    (prepare_pending)
    (prepare_done)
    (extract_pending)
    (extract_done)
  )

  (:durative-action do_centrifuge
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (centrifuge_pending)) (at start (harvest_done)))
    :effect (and (at start (not (centrifuge_pending))) (at end (centrifuge_done)))
  )

  (:durative-action do_refine
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (refine_pending)) (at start (extract_done)))
    :effect (and (at start (not (refine_pending))) (at end (refine_done)))
  )

  (:durative-action do_harvest
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (harvest_pending)) (at start (prepare_done)))
    :effect (and (at start (not (harvest_pending))) (at end (harvest_done)))
  )

  (:durative-action do_prepare
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (prepare_pending))
    :effect (and (at start (not (prepare_pending))) (at end (prepare_done)))
  )

  (:durative-action do_extract
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (extract_pending)) (at start (harvest_done)))
    :effect (and (at start (not (extract_pending))) (at end (extract_done)))
  )
)
