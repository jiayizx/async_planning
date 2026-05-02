(define (problem care_succulents-problem)
  (:domain care_succulents)
  (:init
    (identify_pests_pending)
    (fight_pests_pending)
    (quarantine_pending)
  )
  (:goal (and
    (identify_pests_done)
    (fight_pests_done)
    (quarantine_done)
  ))
)
