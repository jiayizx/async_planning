(define (domain ovarian-reserve-testing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step)
    (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step)
    (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (consultation_scheduled)
    (fertility_report_finalized)
    (clinics_researched)
    (referral_obtained)
    (lab_interpretations_reviewed)
    (pelvic_ultrasound_completed)
    (physical_examination_completed)
    (initial_consultation_attended)
    (insurance_coverage_verified)
    (medical_records_requested)
    (intake_forms_completed)
    (blood_draw_booked)
    (patient_portal_created)
    (blood_tests_completed)
    (diagnostic_balance_paid)
    (blood_samples_processed)
    (lifestyle_questionnaire_completed)
    (family_history_provided)
    (insurance_provider_identified)
    (invoice_received)
  )

  (:durative-action schedule_initial_consultation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (referral_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_scheduled))))

  (:durative-action finalize_fertility_health_report
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (pelvic_ultrasound_completed)) (at start (physical_examination_completed)) (at start (lifestyle_questionnaire_completed)) (at start (family_history_provided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fertility_report_finalized))))

  (:durative-action research_local_clinics
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clinics_researched))))

  (:durative-action obtain_primary_care_referral
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (medical_records_requested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (referral_obtained))))

  (:durative-action receive_and_review_lab_interpretations
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (blood_samples_processed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lab_interpretations_reviewed))))

  (:durative-action complete_pelvic_ultrasound
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pelvic_ultrasound_completed))))

  (:durative-action undergo_physical_examination
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (physical_examination_completed))))

  (:durative-action attend_initial_consultation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (consultation_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (initial_consultation_attended))))

  (:durative-action verify_insurance_coverage
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_coverage_verified))))

  (:durative-action request_medical_records
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_records_requested))))

  (:durative-action complete_patient_intake_forms
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (insurance_provider_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (intake_forms_completed))))

  (:durative-action book_cycle_day_blood_draw
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (insurance_coverage_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blood_draw_booked))))

  (:durative-action create_clinic_patient_portal
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (clinics_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patient_portal_created))))

  (:durative-action complete_amh_and_fsh_blood_tests
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (referral_obtained)) (at start (insurance_coverage_verified)) (at start (patient_portal_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blood_tests_completed))))

  (:durative-action pay_diagnostic_balance
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (invoice_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diagnostic_balance_paid))))

  (:durative-action process_blood_samples
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (blood_draw_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blood_samples_processed))))

  (:durative-action complete_lifestyle_questionnaire
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lifestyle_questionnaire_completed))))

  (:durative-action provide_family_reproductive_history
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (insurance_provider_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (family_history_provided))))

  (:durative-action identify_insurance_provider
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_provider_identified))))

  (:durative-action receive_billing_invoice
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invoice_received))))
)