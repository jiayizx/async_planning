(define (problem make-felt-animals-problem)
  (:domain make-felt-animals)
  (:init
    (buy_felt_pending)
    (download_pattern_pending)
    (gather_supplies_pending)
  )
  (:goal (and
    (buy_felt_done)
    (download_pattern_done)
    (gather_supplies_done)
  ))
)
