(define (problem make_felt_animals)
  (:domain felt-animals)
  
  (:init
    (buy_felt_stuffing_pending)
    (download_pattern_pending)
    (gather_supplies_pending)
  )

  (:goal (and
    (buy_felt_stuffing_done)
    (download_pattern_done)
    (gather_supplies_done)
  ))
)
