(define (domain care-succulents)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; semantic predicates unique to each action
    (pests_identified)
    (insecticidal_applied)
    (quarantine_completed)
  )

  ; Action for Step 1: Identify common pests (10 minutes = 600 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (pests_identified))
            )
  )

  ; Action for Step 2: Fight mealy bugs, scale, and aphids with insecticidal soap (30 minutes = 1800 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (pests_identified)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (insecticidal_applied))
            )
  )

  ; Action for Step 3: Quarantine new plants (2 weeks = 1209600 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (quarantine_completed))
            )
  )
)
