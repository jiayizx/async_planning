(define (domain college-planning)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (step1_pending) (step2_pending) (step3_pending) (step4_pending)
    (step5_pending) (step6_pending) (step7_pending) (step8_pending)
    (step9_pending) (step10_pending) (step11_pending) (step12_pending)
    (step13_pending) (step14_pending) (step15_pending) (step16_pending)
    (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (campuses_researched)
    (exam_registered)
    (tuition_deposit_paid)
    (transcripts_requested)
    (study_guide_purchased)
    (counselor_met)
    (personal_statement_drafted)
    (recommendations_requested)
    (campus_tour_attended)
    (personal_statement_polished)
    (common_application_completed)
    (entrance_exams_taken)
    (recommendations_uploaded)
    (financial_records_gathered)
    (application_and_aid_submitted)
    (admission_decisions_reviewed)
    (test_scores_released)
    (thank_you_notes_written)
    (college_selected)
    (orientation_and_housing_registered)
  )

  (:durative-action research_campuses
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step_done ?s))
      (at end (campuses_researched))))

  (:durative-action register_for_exams
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step2_pending))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step_done ?s))
      (at end (exam_registered))))

  (:durative-action pay_tuition_deposit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step3_pending))
      (at start (college_selected)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step_done ?s))
      (at end (tuition_deposit_paid))))

  (:durative-action request_transcripts
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step4_pending))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step_done ?s))
      (at end (transcripts_requested))))

  (:durative-action purchase_study_guide
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step5_pending))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step_done ?s))
      (at end (study_guide_purchased))))

  (:durative-action meet_guidance_counselor
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step6_pending))
    :effect (and
      (at start (not (step6_pending)))
      (at end (step_done ?s))
      (at end (counselor_met))))

  (:durative-action draft_personal_statement
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step7_pending))
      (at start (counselor_met)))
    :effect (and
      (at start (not (step7_pending)))
      (at end (step_done ?s))
      (at end (personal_statement_drafted))))

  (:durative-action request_recommendations
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step8_pending))
    :effect (and
      (at start (not (step8_pending)))
      (at end (step_done ?s))
      (at end (recommendations_requested))))

  (:durative-action attend_campus_tour
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step9_pending))
      (at start (entrance_exams_taken)))
    :effect (and
      (at start (not (step9_pending)))
      (at end (step_done ?s))
      (at end (campus_tour_attended))))

  (:durative-action polish_personal_statement
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step10_pending))
      (at start (personal_statement_drafted)))
    :effect (and
      (at start (not (step10_pending)))
      (at end (step_done ?s))
      (at end (personal_statement_polished))))

  (:durative-action complete_common_application
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step11_pending))
      (at start (transcripts_requested))
      (at start (financial_records_gathered)))
    :effect (and
      (at start (not (step11_pending)))
      (at end (step_done ?s))
      (at end (common_application_completed))))

  (:durative-action take_entrance_exams
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step12_pending))
      (at start (exam_registered))
      (at start (counselor_met)))
    :effect (and
      (at start (not (step12_pending)))
      (at end (step_done ?s))
      (at end (entrance_exams_taken))))

  (:durative-action upload_recommendations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step13_pending))
      (at start (transcripts_requested))
      (at start (recommendations_requested)))
    :effect (and
      (at start (not (step13_pending)))
      (at end (step_done ?s))
      (at end (recommendations_uploaded))))

  (:durative-action gather_financial_records
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step14_pending))
    :effect (and
      (at start (not (step14_pending)))
      (at end (step_done ?s))
      (at end (financial_records_gathered))))

  (:durative-action submit_application_and_aid
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step15_pending))
      (at start (personal_statement_drafted))
      (at start (personal_statement_polished))
      (at start (financial_records_gathered)))
    :effect (and
      (at start (not (step15_pending)))
      (at end (step_done ?s))
      (at end (application_and_aid_submitted))))

  (:durative-action review_admission_decisions
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step16_pending))
      (at start (campuses_researched))
      (at start (common_application_completed)))
    :effect (and
      (at start (not (step16_pending)))
      (at end (step_done ?s))
      (at end (admission_decisions_reviewed))))

  (:durative-action wait_for_test_scores
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and
      (at start (step17_pending))
      (at start (exam_registered))
      (at start (study_guide_purchased)))
    :effect (and
      (at start (not (step17_pending)))
      (at end (step_done ?s))
      (at end (test_scores_released))))

  (:durative-action write_thank_you_notes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step18_pending))
      (at start (recommendations_requested)))
    :effect (and
      (at start (not (step18_pending)))
      (at end (step_done ?s))
      (at end (thank_you_notes_written))))

  (:durative-action select_college
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step19_pending))
    :effect (and
      (at start (not (step19_pending)))
      (at end (step_done ?s))
      (at end (college_selected))))

  (:durative-action register_orientation_and_housing
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step20_pending))
      (at start (college_selected)))
    :effect (and
      (at start (not (step20_pending)))
      (at end (step_done ?s))
      (at end (orientation_and_housing_registered))))
)