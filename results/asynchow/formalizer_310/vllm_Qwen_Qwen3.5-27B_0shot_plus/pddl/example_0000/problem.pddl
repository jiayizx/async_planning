(define (problem impress_girls_problem)
  (:domain impress_girls)
  
  (:init
    (research_pending)
    (determine_pending)
    (find_location_pending)
    (travel_pending)
    (impress_pending)
  )

  (:goal (and
    (research_done)
    (determine_done)
    (find_location_done)
    (travel_done)
    (impress_done)
  ))
)
