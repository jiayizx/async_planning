(define (problem make_new_app)
  (:domain app_development)
  
  (:init
    (idea_pending)
    (functions_pending)
    (logistics_pending)
    (code_pending)
    (test_pending)
  )

  (:goal (and
    (idea_done)
    (functions_done)
    (logistics_done)
    (code_done)
    (test_done)
  ))
)