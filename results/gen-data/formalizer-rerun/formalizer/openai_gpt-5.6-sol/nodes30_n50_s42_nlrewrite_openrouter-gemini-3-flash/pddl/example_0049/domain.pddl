(define (domain canine-liver-treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (medication_administered)
    (diets_researched)
    (consultation_scheduled)
    (activity_monitored)
    (biopsy_performed)
    (chemistry_panel_conducted)
    (hydration_station_set_up)
    (chemistry_results_analyzed)
    (silymarin_purchased)
    (recovery_report_reviewed)
    (dog_prepared_for_sedation)
    (dog_fasted_overnight)
    (vitamin_e_regimen_begun)
    (dog_transported_to_clinic)
    (allergic_reactions_observed)
    (physical_exam_completed)
    (dietary_changes_discussed)
    (consent_forms_signed)
    (custom_meal_plan_formulated)
    (baseline_vitals_checked)
    (secondary_medications_adjusted)
    (therapeutic_levels_reached)
    (appetite_logged)
    (urine_sample_collected)
    (liver_enzymes_reevaluated)
    (holistic_veterinarian_consulted)
    (hepatic_kibble_ordered)
    (ramp_installed)
    (abdominal_ultrasound_performed)
    (diagnostics_reviewed)
  )

  (:durative-action administer_first_medication_dose
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (biopsy_performed))
      (at start (dog_fasted_overnight))
      (at start (physical_exam_completed))
      (at start (diagnostics_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medication_administered))))

  (:durative-action research_senior_dog_diets
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diets_researched))))

  (:durative-action schedule_nutritionist_consultation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled))))

  (:durative-action monitor_activity_levels
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (chemistry_results_analyzed))
      (at start (vitamin_e_regimen_begun))
      (at start (secondary_medications_adjusted))
      (at start (diagnostics_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (activity_monitored))))

  (:durative-action perform_liver_needle_biopsy
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (dog_prepared_for_sedation))
      (at start (dog_transported_to_clinic)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (biopsy_performed))))

  (:durative-action conduct_chemistry_panel
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (dog_transported_to_clinic))
      (at start (baseline_vitals_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chemistry_panel_conducted))))

  (:durative-action set_up_hydration_station
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (baseline_vitals_checked))
      (at start (abdominal_ultrasound_performed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hydration_station_set_up))))

  (:durative-action analyze_chemistry_panel_results
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (chemistry_panel_conducted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chemistry_results_analyzed))))

  (:durative-action purchase_silymarin_supplement
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (holistic_veterinarian_consulted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (silymarin_purchased))))

  (:durative-action review_recovery_progress_report
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (custom_meal_plan_formulated))
      (at start (liver_enzymes_reevaluated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recovery_report_reviewed))))

  (:durative-action prepare_dog_for_sedation
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (consent_forms_signed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_prepared_for_sedation))))

  (:durative-action fast_dog_overnight
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_fasted_overnight))))

  (:durative-action begin_vitamin_e_regimen
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (baseline_vitals_checked))
      (at start (diagnostics_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vitamin_e_regimen_begun))))

  (:durative-action transport_dog_to_clinic
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dog_transported_to_clinic))))

  (:durative-action observe_allergic_reactions
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (medication_administered))
      (at start (hydration_station_set_up))
      (at start (hepatic_kibble_ordered))
      (at start (ramp_installed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (allergic_reactions_observed))))

  (:durative-action perform_physical_exam
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_exam_completed))))

  (:durative-action discuss_dietary_changes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (consultation_scheduled))
      (at start (vitamin_e_regimen_begun)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dietary_changes_discussed))))

  (:durative-action sign_consent_forms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (abdominal_ultrasound_performed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consent_forms_signed))))

  (:durative-action formulate_custom_meal_plan
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (dietary_changes_discussed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (custom_meal_plan_formulated))))

  (:durative-action check_baseline_vital_signs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baseline_vitals_checked))))

  (:durative-action adjust_secondary_medications
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (urine_sample_collected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (secondary_medications_adjusted))))

  (:durative-action wait_for_therapeutic_levels
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (silymarin_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (therapeutic_levels_reached))))

  (:durative-action log_daily_appetite
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (custom_meal_plan_formulated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appetite_logged))))

  (:durative-action collect_urine_sample
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (urine_sample_collected))))

  (:durative-action reevaluate_liver_enzymes
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (physical_exam_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (liver_enzymes_reevaluated))))

  (:durative-action consult_holistic_veterinarian
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (holistic_veterinarian_consulted))))

  (:durative-action order_hepatic_support_kibble
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (diets_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hepatic_kibble_ordered))))

  (:durative-action install_resting_area_ramp
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ramp_installed))))

  (:durative-action perform_abdominal_ultrasound
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (baseline_vitals_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (abdominal_ultrasound_performed))))

  (:durative-action review_diagnostics
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (physical_exam_completed))
      (at start (therapeutic_levels_reached)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diagnostics_reviewed))))
)