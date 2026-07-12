(define (domain self-analysis)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (journals_reviewed)
    (core_values_listed)
    (reflection_notebook_purchased)
    (strengths_weaknesses_report_written)
    (followup_session_scheduled)
  )

  (:durative-action review_past_journals
    :parameters (?s - step1_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (core_values_listed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (journals_reviewed))
    )
  )

  (:durative-action create_core_values_list
    :parameters (?s - step2_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (reflection_notebook_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (core_values_listed))
    )
  )

  (:durative-action purchase_reflection_notebook
    :parameters (?s - step3_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reflection_notebook_purchased))
    )
  )

  (:durative-action write_strengths_weaknesses_report
    :parameters (?s - step4_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (journals_reviewed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strengths_weaknesses_report_written))
    )
  )

  (:durative-action schedule_life_coach_followup
    :parameters (?s - step5_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (reflection_notebook_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (followup_session_scheduled))
    )
  )
)