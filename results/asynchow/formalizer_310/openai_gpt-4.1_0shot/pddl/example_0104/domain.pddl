(define (domain buy_piano)
  (:requirements :durative-actions)
  (:predicates
    (visit_stores_pending)
    (visit_stores_done)
    (decide_kind_pending)
    (decide_kind_done)
    (pay_and_delivery_pending)
    (pay_and_delivery_done)
    (piano_arrives_pending)
    (piano_arrives_done)
    (try_options_pending)
    (try_options_done)
  )

  (:durative-action visit_stores
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (visit_stores_pending))
    :effect (and (at start (not (visit_stores_pending))) (at end (visit_stores_done)))
  )

  (:durative-action decide_kind
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (decide_kind_pending)) (at start (visit_stores_done)))
    :effect (and (at start (not (decide_kind_pending))) (at end (decide_kind_done)))
  )

  (:durative-action pay_and_delivery
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pay_and_delivery_pending)) (at start (decide_kind_done)) (at start (try_options_done)))
    :effect (and (at start (not (pay_and_delivery_pending))) (at end (pay_and_delivery_done)))
  )

  (:durative-action piano_arrives
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (piano_arrives_pending)) (at start (pay_and_delivery_done)))
    :effect (and (at start (not (piano_arrives_pending))) (at end (piano_arrives_done)))
  )

  (:durative-action try_options
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (try_options_pending)) (at start (visit_stores_done)))
    :effect (and (at start (not (try_options_pending))) (at end (try_options_done)))
  )
)
