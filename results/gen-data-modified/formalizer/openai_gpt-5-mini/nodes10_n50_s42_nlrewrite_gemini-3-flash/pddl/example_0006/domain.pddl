(define (domain cervical_treatment)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
  )

  (:durative-action step1_initial_consultation_and_pelvic_exam
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_lab_bloodwork_and_tumor_marker_analysis
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step2_pending)) (at start (step10_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_map_radiation_treatment_area
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step3_pending)) (at start (step7_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_administer_external_beam_radiation_therapy
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_review_final_pathology_reports
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step5_pending)) (at start (step2_done)) (at start (step10_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_monitor_post_radiation_side_effects
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step6_pending)) (at start (step4_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_perform_colposcopy_and_tissue_biopsy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step7_pending)) (at start (step1_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_schedule_follow_up_pet_scan
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_conduct_three_month_recovery_scan
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step9_pending)) (at start (step8_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_obtain_full_medical_history
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
