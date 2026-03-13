(define (problem care_for_succulents_prob)
  (:domain care_for_succulents)
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
