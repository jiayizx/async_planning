(define (domain buy_firearms_brazil)
  (:requirements :durative-actions)
  (:predicates
    (fill_sinarm_pending)
    (fill_sinarm_done)
    (prepare_docs_A_pending)
    (prepare_docs_A_done)
    (prepare_docs_B_pending)
    (prepare_docs_B_done)
  )

  (:durative-action fill_sinarm
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (fill_sinarm_pending)) (at start (prepare_docs_A_done)) (at start (prepare_docs_B_done)))
    :effect (and (at start (not (fill_sinarm_pending))) (at end (fill_sinarm_done)))
  )

  (:durative-action prepare_docs_A
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (prepare_docs_A_pending))
    :effect (and (at start (not (prepare_docs_A_pending))) (at end (prepare_docs_A_done)))
  )

  (:durative-action prepare_docs_B
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (prepare_docs_B_pending))
    :effect (and (at start (not (prepare_docs_B_pending))) (at end (prepare_docs_B_done)))
  )
)
