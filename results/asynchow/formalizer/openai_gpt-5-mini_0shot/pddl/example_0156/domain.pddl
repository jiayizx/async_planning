(define (domain keep-sodium)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step ?s - step)
    (step_pending ?s - step)
    (step_done ?s - step)
    (talked)
    (anti_nausea_taken)
    (anti_diarrheal_taken)
    (kept_sodium)
  )

  ;; Step 1: Talk to your physician (1800s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (talked))
            )
  )

  ;; Step 2: Take anti-nausea medication (3600s) -- requires talk
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (talked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (anti_nausea_taken))
            )
  )

  ;; Step 3: Take anti-diarrheals (3600s) -- requires talk
  ;; Also produces the final semantic predicate kept_sodium to force completion of the causal chain
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (talked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (anti_diarrheal_taken))
              (at end (kept_sodium))
            )
  )
)
