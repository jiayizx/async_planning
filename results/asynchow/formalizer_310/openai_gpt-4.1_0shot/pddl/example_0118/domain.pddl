(define (domain make_app)
  (:requirements :durative-actions)
  (:predicates
    (come_up_with_app_idea_pending)
    (come_up_with_app_idea_done)
    (plan_app_functions_pending)
    (plan_app_functions_done)
    (plan_logistics_of_app_pending)
    (plan_logistics_of_app_done)
    (write_code_for_app_pending)
    (write_code_for_app_done)
    (test_app_out_pending)
    (test_app_out_done)
  )

  (:durative-action come_up_with_app_idea
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (come_up_with_app_idea_pending))
    :effect (and (at start (not (come_up_with_app_idea_pending))) (at end (come_up_with_app_idea_done)))
  )

  (:durative-action plan_app_functions
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (plan_app_functions_pending)) (at start (come_up_with_app_idea_done)))
    :effect (and (at start (not (plan_app_functions_pending))) (at end (plan_app_functions_done)))
  )

  (:durative-action plan_logistics_of_app
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (plan_logistics_of_app_pending)) (at start (come_up_with_app_idea_done)))
    :effect (and (at start (not (plan_logistics_of_app_pending))) (at end (plan_logistics_of_app_done)))
  )

  (:durative-action write_code_for_app
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (write_code_for_app_pending)) (at start (plan_app_functions_done)) (at start (plan_logistics_of_app_done)))
    :effect (and (at start (not (write_code_for_app_pending))) (at end (write_code_for_app_done)))
  )

  (:durative-action test_app_out
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (test_app_out_pending)) (at start (write_code_for_app_done)))
    :effect (and (at start (not (test_app_out_pending))) (at end (test_app_out_done)))
  )
)
