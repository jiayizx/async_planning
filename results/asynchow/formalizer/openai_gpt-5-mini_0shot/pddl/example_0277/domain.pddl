(define (domain raise-handlebars)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pos_done)
    (raise_done)
    (lower_done)
  )

  ;; Step 1: Position your handlebars so you're most comfortable. Duration 2 minutes = 120 seconds
  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and
                 (at start (step_pending step1))
                 (at start (raise_done))       ;; Step2 must precede Step1
                 (at start (lower_done))       ;; Step3 must precede Step1
               )
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (pos_done))
            )
  )

  ;; Step 2: Raise your handlebars for a casual posture. Duration 10 minutes = 600 seconds
  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (raise_done))
            )
  )

  ;; Step 3: Lower your handlebars for a more aerodynamic posture. Duration 15 minutes = 900 seconds
  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (lower_done))
            )
  )
)
