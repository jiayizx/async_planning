(define (domain cure-gastritis)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bland_diet_completed)
    (consultation_scheduled)
    (mucosal_agents_completed)
    (ppi_regimen_completed)
    (urea_test_completed)
    (stool_analysis_completed)
    (antibiotics_collected)
    (diagnosis_received)
    (initial_exam_completed)
    (eradication_confirmed)
    (followup_attended)
    (symptom_journal_completed)
    (triple_therapy_completed)
    (specialist_research_completed)
    (maintenance_probiotic_started)
  )

  (:durative-action follow_bland_diet
    :parameters (?s - step1-type)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (ppi_regimen_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bland_diet_completed)))
  )

  (:durative-action schedule_followup_consultation
    :parameters (?s - step2-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled)))
  )

  (:durative-action complete_mucosal_agents
    :parameters (?s - step3-type)
    :duration (= ?duration 864000)
    :condition (and
      (at start (step_pending ?s))
      (at start (diagnosis_received)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mucosal_agents_completed)))
  )

  (:durative-action begin_ppi_regimen
    :parameters (?s - step4-type)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (symptom_journal_completed))
      (at start (specialist_research_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ppi_regimen_completed)))
  )

  (:durative-action undergo_urea_breath_test
    :parameters (?s - step5-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (initial_exam_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (urea_test_completed)))
  )

  (:durative-action perform_stool_analysis
    :parameters (?s - step6-type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (initial_exam_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stool_analysis_completed)))
  )

  (:durative-action collect_prescription_antibiotics
    :parameters (?s - step7-type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (antibiotics_collected)))
  )

  (:durative-action receive_diagnosis
    :parameters (?s - step8-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (initial_exam_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diagnosis_received)))
  )

  (:durative-action visit_urgent_care
    :parameters (?s - step9-type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_exam_completed)))
  )

  (:durative-action conduct_final_breath_test
    :parameters (?s - step10-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (triple_therapy_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eradication_confirmed)))
  )

  (:durative-action attend_followup
    :parameters (?s - step11-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (consultation_scheduled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (followup_attended)))
  )

  (:durative-action log_symptoms
    :parameters (?s - step12-type)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (symptom_journal_completed)))
  )

  (:durative-action take_triple_therapy
    :parameters (?s - step13-type)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (consultation_scheduled))
      (at start (antibiotics_collected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (triple_therapy_completed)))
  )

  (:durative-action research_specialists
    :parameters (?s - step14-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (specialist_research_completed)))
  )

  (:durative-action start_maintenance_probiotic
    :parameters (?s - step15-type)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (diagnosis_received)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (maintenance_probiotic_started)))
  )
)