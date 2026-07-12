(define (domain heartburn-attention)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (frequency_logged) (indigestion_gerd_researched) (swallowing_checked)
    (antacid_persistence_noted) (tracking_supplies_bought) (medications_listed)
    (radiating_pain_assessed) (frequency_evaluated) (side_effects_cross_referenced)
    (weight_loss_identified) (respiratory_issues_monitored) (activity_interference_determined)
    (burning_intensity_recorded) (temperature_tracked) (lying_down_effect_observed)
    (nausea_vomiting_checked) (food_triggers_documented) (cardiac_signs_recognized)
    (long_term_risks_read) (red_flags_reviewed) (pharmacist_consulted)
    (posture_relief_noted) (bleeding_signs_checked) (pain_rated)
    (pain_baseline_compared) (lifestyle_factors_identified) (symptom_app_downloaded)
    (physician_located) (treatments_purchased) (consultation_scheduled)
  )

  (:durative-action log_frequency
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (burning_intensity_recorded)) (at start (posture_relief_noted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frequency_logged))))

  (:durative-action research_indigestion_gerd
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (indigestion_gerd_researched))))

  (:durative-action check_swallowing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (bleeding_signs_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (swallowing_checked))))

  (:durative-action note_antacid_persistence
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (treatments_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (antacid_persistence_noted))))

  (:durative-action buy_tracking_supplies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (physician_located)) (at start (treatments_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tracking_supplies_bought))))

  (:durative-action list_medications
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medications_listed))))

  (:durative-action assess_radiating_pain
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (cardiac_signs_recognized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (radiating_pain_assessed))))

  (:durative-action evaluate_weekly_frequency
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (long_term_risks_read)) (at start (pharmacist_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frequency_evaluated))))

  (:durative-action cross_reference_side_effects
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (medications_listed)) (at start (treatments_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (side_effects_cross_referenced))))

  (:durative-action identify_weight_loss
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_loss_identified))))

  (:durative-action monitor_respiratory_issues
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (temperature_tracked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (respiratory_issues_monitored))))

  (:durative-action determine_activity_interference
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (swallowing_checked)) (at start (frequency_evaluated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (activity_interference_determined))))

  (:durative-action record_burning_intensity
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (lying_down_effect_observed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (burning_intensity_recorded))))

  (:durative-action track_temperature
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (tracking_supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temperature_tracked))))

  (:durative-action observe_lying_down_effect
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (food_triggers_documented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lying_down_effect_observed))))

  (:durative-action check_nausea_vomiting
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (weight_loss_identified)) (at start (bleeding_signs_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nausea_vomiting_checked))))

  (:durative-action document_food_triggers
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (tracking_supplies_bought)) (at start (treatments_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_triggers_documented))))

  (:durative-action recognize_cardiac_signs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cardiac_signs_recognized))))

  (:durative-action read_long_term_risks
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (long_term_risks_read))))

  (:durative-action review_red_flags
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (respiratory_issues_monitored)) (at start (symptom_app_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (red_flags_reviewed))))

  (:durative-action consult_pharmacist
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (lifestyle_factors_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pharmacist_consulted))))

  (:durative-action note_posture_relief
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (respiratory_issues_monitored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (posture_relief_noted))))

  (:durative-action check_bleeding_signs
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (respiratory_issues_monitored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bleeding_signs_checked))))

  (:durative-action rate_pain
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (burning_intensity_recorded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pain_rated))))

  (:durative-action compare_pain_baseline
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (antacid_persistence_noted)) (at start (burning_intensity_recorded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pain_baseline_compared))))

  (:durative-action identify_lifestyle_factors
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (indigestion_gerd_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lifestyle_factors_identified))))

  (:durative-action download_symptom_app
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (symptom_app_downloaded))))

  (:durative-action locate_physician
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (physician_located))))

  (:durative-action purchase_treatments
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (treatments_purchased))))

  (:durative-action schedule_consultation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (frequency_logged)) (at start (indigestion_gerd_researched)) (at start (bleeding_signs_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_scheduled))))
)