(define (domain app_development)
  (:requirements :durative-actions)
  
  (:predicates
    (idea_pending)
    (idea_done)
    (functions_pending)
    (functions_done)
    (logistics_pending)
    (logistics_done)
    (code_pending)
    (code_done)
    (test_pending)
    (test_done)
  )

  (:durative-action come_up_with_idea
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (idea_pending))
    :effect (and (at start (not (idea_pending))) (at end (idea_done)))
  )

  (:durative-action plan_app_functions
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (functions_pending)) (at start (idea_done)))
    :effect (and (at start (not (functions_pending))) (at end (functions_done)))
  )

  (:durative-action plan_logistics
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (logistics_pending)) (at start (idea_done)))
    :effect (and (at start (not (logistics_pending))) (at end (logistics_done)))
  )

  (:durative-action write_code
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (code_pending)) (at start (functions_done)) (at start (logistics_done)))
    :effect (and (at start (not (code_pending))) (at end (code_done)))
  )

  (:durative-action test_app
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (test_pending)) (at start (code_done)))
    :effect (and (at start (not (test_pending))) (at end (test_done)))
  )
)