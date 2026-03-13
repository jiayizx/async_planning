(define (domain bad_day_turnaround)
  (:requirements :durative-actions)
  (:predicates
    (identify_source_pending)
    (identify_source_done)
    (small_step_pending)
    (small_step_done)
    (identify_ongoing_pending)
    (identify_ongoing_done)
    (focus_positive_pending)
    (focus_positive_done)
    (remember_pass_pending)
    (remember_pass_done)
  )

  (:durative-action identify_source
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (identify_source_pending))
    :effect (and (at start (not (identify_source_pending))) (at end (identify_source_done)))
  )

  (:durative-action small_step
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (small_step_pending)) (at start (identify_source_done)))
    :effect (and (at start (not (small_step_pending))) (at end (small_step_done)))
  )

  (:durative-action identify_ongoing
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (identify_ongoing_pending)) (at start (small_step_done)))
    :effect (and (at start (not (identify_ongoing_pending))) (at end (identify_ongoing_done)))
  )

  (:durative-action focus_positive
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (focus_positive_pending))
    :effect (and (at start (not (focus_positive_pending))) (at end (focus_positive_done)))
  )

  (:durative-action remember_pass
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (remember_pass_pending))
    :effect (and (at start (not (remember_pass_pending))) (at end (remember_pass_done)))
  )
)
