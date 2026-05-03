(define (problem succulent_care_problem)
  (:domain succulent_care)
  
  (:init
    (identify_pests_pending)
    (fight_pests_pending)
    (quarantine_plants_pending)
  )

  (:goal (and
    (identify_pests_done)
    (fight_pests_done)
    (quarantine_plants_done)
  ))
)
