(define (domain menopause-dryness-treatment)
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
    (consultation_scheduled)
    (hormonal_cream_first_applied)
    (causes_and_symptoms_researched)
    (treatment_options_discussed)
    (prescription_picked_up)
    (medical_examination_attended)
    (pelvic_exam_completed)
    (lubricants_purchased)
    (lab_results_reviewed)
    (daily_symptoms_tracked)
    (instructional_pamphlet_read)
    (daily_treatment_reminder_set)
    (followup_appointment_scheduled)
    (prescription_sent_to_pharmacy)
    (lubricant_sensitivity_tested)
  )

  (:durative-action schedule_consultation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (causes_and_symptoms_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled))))

  (:durative-action apply_hormonal_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (prescription_picked_up)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hormonal_cream_first_applied))))

  (:durative-action research_causes_and_symptoms
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (causes_and_symptoms_researched))))

  (:durative-action discuss_treatment_options
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (medical_examination_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (treatment_options_discussed))))

  (:durative-action pick_up_prescription
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (prescription_sent_to_pharmacy)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prescription_picked_up))))

  (:durative-action attend_medical_examination
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (consultation_scheduled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medical_examination_attended))))

  (:durative-action undergo_pelvic_exam
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (treatment_options_discussed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pelvic_exam_completed))))

  (:durative-action purchase_lubricants
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (causes_and_symptoms_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lubricants_purchased))))

  (:durative-action review_lab_results
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (pelvic_exam_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lab_results_reviewed))))

  (:durative-action track_daily_symptoms
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (causes_and_symptoms_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (daily_symptoms_tracked))))

  (:durative-action read_instructional_pamphlet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (lubricant_sensitivity_tested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instructional_pamphlet_read))))

  (:durative-action set_daily_treatment_reminder
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (medical_examination_attended))
      (at start (instructional_pamphlet_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (daily_treatment_reminder_set))))

  (:durative-action schedule_followup_appointment
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (medical_examination_attended))
      (at start (lab_results_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (followup_appointment_scheduled))))

  (:durative-action request_prescription_transfer
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prescription_sent_to_pharmacy))))

  (:durative-action test_lubricant_sensitivity
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (lubricants_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lubricant_sensitivity_tested))))
)