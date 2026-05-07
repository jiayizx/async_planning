(define (domain save_for_vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (budget_done)
    (work_done)
    (groceries_done)
    (alcohol_done)
    (vacation_saved)
  )

  ;; Step 1: come up with a strict budget (3600s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (budget_done))
    )
  )

  ;; Step 2: work more hours at the office (5184000s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (work_done))
    )
  )

  ;; Step 3: not spend as much on groceries (5184000s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (groceries_done))
    )
  )

  ;; Step 4: stop spending so much on alcohol (5184000s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (alcohol_done))
    )
  )

  ;; Step 5: stop eating out as much (5184000s)
  ;; This final step produces the final semantic predicate vacation_saved
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vacation_saved))
    )
  )
)
