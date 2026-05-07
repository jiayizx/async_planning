(define (domain lower-androgen-levels)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates (one per action)
    (tested_done)
    (ocp_consult_done)
    (hypogly_med_done)
    (antiandrogen_consult_done)
  )

  ;; Step 1: Get tested (2 weeks = 14 days = 1,209,600 seconds)
  (:durative-action do_step1_get_tested
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (tested_done))
            )
  )

  ;; Step 2: Speak to doctor about oral birth control (3 months = 90 days = 7,776,000 seconds)
  (:durative-action do_step2_ocp_consult
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (tested_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (ocp_consult_done))
            )
  )

  ;; Step 3: Get hypoglycemic medication (6 months = 180 days = 15,552,000 seconds)
  (:durative-action do_step3_hypogly_med
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending ?s)) (at start (tested_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hypogly_med_done))
            )
  )

  ;; Step 4: Ask about anti-androgen medication (6 months = 180 days = 15,552,000 seconds)
  (:durative-action do_step4_antiandrogen_consult
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending ?s)) (at start (tested_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (antiandrogen_consult_done))
            )
  )
)
