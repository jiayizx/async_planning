(define (domain pickle-jalapenos)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (pickled_jalapenos)
  )

  ;; Step 1: Slice the peppers (5 minutes = 300 seconds)
  (:durative-action do_step1_slice_peppers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_finished))
            )
  )

  ;; Step 2: Combine ingredients in saucepan (15 minutes = 900 seconds)
  (:durative-action do_step2_combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_finished))
            )
  )

  ;; Step 3: Allow mixture to cool (10 minutes = 600 seconds)
  ;; Requires Step 2 to have finished
  (:durative-action do_step3_cool_mixture
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2_finished)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_finished))
              (at end (pickled_jalapenos))
            )
  )
)
