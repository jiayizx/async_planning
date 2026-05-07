(define (domain sort_out_life)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s_completed ?s - step)
  )

  ;; Step 1: Learn a new skill (3 months)
  (:durative-action do_step1
    :duration (= ?duration 7776000)  ; 3 months = 90 days * 86400s
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s_completed step1))
    )
  )

  ;; Step 2: Write a new resume (2 weeks)
  ;; Must start after step1 and step4 complete
  (:durative-action do_step2
    :duration (= ?duration 1209600)  ; 2 weeks = 14 days * 86400s
    :condition (and (at start (step_pending step2)) (at start (s_completed step1)) (at start (s_completed step4)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s_completed step2))
    )
  )

  ;; Step 3: Make a change (2 months)
  ;; Must start after step2 completes
  (:durative-action do_step3
    :duration (= ?duration 5184000)  ; 2 months = 60 days * 86400s
    :condition (and (at start (step_pending step3)) (at start (s_completed step2)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s_completed step3))
    )
  )

  ;; Step 4: Go back to school (4 years)
  (:durative-action do_step4
    :duration (= ?duration 126144000)  ; 4 years = 1460 days * 86400s
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s_completed step4))
    )
  )
)
