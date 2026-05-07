(define (domain remove-lead)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (find_lab_done)
    (collect_samples_done)
    (review_results_done)
  )

  ;; Step 1: Find an accredited water testing lab near you.
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (find_lab_done))
    )
  )

  ;; Step 2: Collect 2 samples of your water.
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (collect_samples_done))
    )
  )

  ;; Step 3: Take your water samples to the lab for testing and review results.
  ;; Requires both step1 and step2 to have completed (AND-join)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (find_lab_done) (collect_samples_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (review_results_done))
    )
  )
)
