(define (problem buy_piano)
  (:domain piano_buying)
  
  (:init
    (visit_stores_pending)
    (decide_kind_pending)
    (pay_setup_pending)
    (piano_arrives_pending)
    (try_options_pending)
  )

  (:goal (and
    (visit_stores_done)
    (decide_kind_done)
    (pay_setup_done)
    (piano_arrives_done)
    (try_options_done)
  ))
)
