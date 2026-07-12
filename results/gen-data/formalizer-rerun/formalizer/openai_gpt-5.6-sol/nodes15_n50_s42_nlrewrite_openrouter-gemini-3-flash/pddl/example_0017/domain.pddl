(define (domain learning-disability-assessment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (diagnostic_report_reviewed)
    (clinical_evaluation_scheduled)
    (accommodations_implemented)
    (accommodations_monitored)
    (psychological_testing_conducted)
    (home_observations_documented)
    (counselor_meeting_requested)
    (final_paperwork_filed)
    (school_board_consultation_held)
    (outside_testing_referral_obtained)
    (academic_materials_gathered)
    (sensory_questionnaire_completed)
    (primary_teacher_interviewed)
    (pediatric_specialists_researched)
    (test_results_interpreted)
  )

  (:durative-action review_diagnostic_report
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (home_observations_documented))
      (at start (academic_materials_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diagnostic_report_reviewed))))

  (:durative-action schedule_clinical_evaluation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (school_board_consultation_held))
      (at start (outside_testing_referral_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clinical_evaluation_scheduled))))

  (:durative-action implement_classroom_accommodations
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (test_results_interpreted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accommodations_implemented))))

  (:durative-action monitor_accommodations
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (accommodations_implemented)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accommodations_monitored))))

  (:durative-action conduct_psychological_testing
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (clinical_evaluation_scheduled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (psychological_testing_conducted))))

  (:durative-action document_home_observations
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (home_observations_documented))))

  (:durative-action request_counselor_meeting
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (counselor_meeting_requested))))

  (:durative-action file_final_paperwork
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (academic_materials_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_paperwork_filed))))

  (:durative-action hold_school_board_consultation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (counselor_meeting_requested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (school_board_consultation_held))))

  (:durative-action obtain_outside_testing_referral
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (school_board_consultation_held))
      (at start (primary_teacher_interviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outside_testing_referral_obtained))))

  (:durative-action gather_academic_materials
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (accommodations_monitored)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (academic_materials_gathered))))

  (:durative-action complete_sensory_questionnaire
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (primary_teacher_interviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sensory_questionnaire_completed))))

  (:durative-action interview_primary_teacher
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (primary_teacher_interviewed))))

  (:durative-action research_pediatric_specialists
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (home_observations_documented)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pediatric_specialists_researched))))

  (:durative-action wait_for_test_results
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (psychological_testing_conducted))
      (at start (outside_testing_referral_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (test_results_interpreted))))
)