(define (domain make_app)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (idea_done)
    (functions_done)
    (logistics_done)
    (code_done)
    (test_done)
  )

  ;; Step 1: come up with app idea (30s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (idea_done))
    )
  )

  ;; Step 2: plan app functions (7200s)  ; requires idea_done
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (idea_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (functions_done))
    )
  )

  ;; Step 3: plan logistics of app (604800s) ; requires idea_done
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (idea_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (logistics_done))
    )
  )

  ;; Step 4: write code for app (432000s) ; requires functions_done AND logistics_done
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (functions_done)) (at start (logistics_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (code_done))
    )
  )

  ;; Step 5: test app out (604800s) ; requires code_done
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (code_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (test_done))
    )
  )
)
