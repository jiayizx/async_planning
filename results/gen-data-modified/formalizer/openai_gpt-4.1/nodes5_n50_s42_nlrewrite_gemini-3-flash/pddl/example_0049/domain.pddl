(define (domain self_analysis)
  (:requirements :durative-actions)
  (:predicates
    (identify_core_values_pending)
    (identify_core_values_done)
    (gather_feedback_pending)
    (gather_feedback_done)
    (purchase_journal_pending)
    (purchase_journal_done)
    (write_summary_pending)
    (write_summary_done)
    (set_growth_goals_pending)
    (set_growth_goals_done)
  )

  (:durative-action identify_core_values
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (identify_core_values_pending)) (at start (gather_feedback_done)))
    :effect (and (at start (not (identify_core_values_pending))) (at end (identify_core_values_done)))
  )

  (:durative-action gather_feedback
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (gather_feedback_pending)) (at start (purchase_journal_done)))
    :effect (and (at start (not (gather_feedback_pending))) (at end (gather_feedback_done)))
  )

  (:durative-action purchase_journal
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (purchase_journal_pending))
    :effect (and (at start (not (purchase_journal_pending))) (at end (purchase_journal_done)))
  )

  (:durative-action write_summary
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (write_summary_pending)) (at start (identify_core_values_done)))
    :effect (and (at start (not (write_summary_pending))) (at end (write_summary_done)))
  )

  (:durative-action set_growth_goals
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (set_growth_goals_pending)) (at start (purchase_journal_done)))
    :effect (and (at start (not (set_growth_goals_pending))) (at end (set_growth_goals_done)))
  )
)
