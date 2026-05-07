(define (domain learn_recipe)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (printed_recipe)
  )

  ;; Step 1: decide to learn a new recipe (30s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done1))
    )
  )

  ;; Step 2: sit down at the desk (30s) ; predecessor: step1
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (done1)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done2))
    )
  )

  ;; Step 3: turn on the computer (60s) ; predecessor: step2
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done2)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done3))
    )
  )

  ;; Step 4: navigate to cooking site (120s) ; predecessor: step3
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done3)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done4))
    )
  )

  ;; Step 5: search available recipes (1800s) ; predecessor: step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done5))
    )
  )

  ;; Step 6: decide on best recipe (300s) ; predecessor: step4
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done6))
    )
  )

  ;; Step 7: print out the recipe (120s) ; predecessors: step5 and step6
  ;; This action produces the final semantic predicate (printed_recipe)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done5)) (at start (done6)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (printed_recipe))
    )
  )
)
