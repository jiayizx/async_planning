(define (domain save-for-vacation)
  (:requirements :durative-actions)
  (:predicates
    (budget_pending)
    (budget_done)
    (work_pending)
    (work_done)
    (groceries_pending)
    (groceries_done)
    (alcohol_pending)
    (alcohol_done)
    (eatingout_pending)
    (eatingout_done)
  )

  (:durative-action do_budget
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (budget_pending))
    :effect (and (at start (not (budget_pending))) (at end (budget_done)))
  )

  (:durative-action do_work
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (work_pending)) (at start (budget_done)))
    :effect (and (at start (not (work_pending))) (at end (work_done)))
  )

  (:durative-action do_groceries
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (groceries_pending)) (at start (budget_done)))
    :effect (and (at start (not (groceries_pending))) (at end (groceries_done)))
  )

  (:durative-action do_alcohol
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (alcohol_pending)) (at start (budget_done)))
    :effect (and (at start (not (alcohol_pending))) (at end (alcohol_done)))
  )

  (:durative-action do_eatingout
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (eatingout_pending)) (at start (budget_done)))
    :effect (and (at start (not (eatingout_pending))) (at end (eatingout_done)))
  )
)
