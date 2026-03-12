(define (domain cervical_cancer_treatment)
  (:requirements :durative-actions)
  (:predicates
    (initial_consultation_pending)
    (initial_consultation_done)
    (lab_work_pending)
    (lab_work_done)
    (mapping_pending)
    (mapping_done)
    (external_radiation_pending)
    (external_radiation_done)
    (final_pathology_pending)
    (final_pathology_done)
    (monitoring_pending)
    (monitoring_done)
    (colposcopy_pending)
    (colposcopy_done)
    (schedule_pet_pending)
    (schedule_pet_done)
    (recovery_scan_pending)
    (recovery_scan_done)
    (history_pending)
    (history_done)
  )

  (:durative-action do_initial_consultation
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (initial_consultation_pending))
    :effect (and (at start (not (initial_consultation_pending))) (at end (initial_consultation_done)))
  )

  (:durative-action do_lab_work
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (lab_work_pending)) (at start (history_done)))
    :effect (and (at start (not (lab_work_pending))) (at end (lab_work_done)))
  )

  (:durative-action do_mapping
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (mapping_pending)) (at start (colposcopy_done)))
    :effect (and (at start (not (mapping_pending))) (at end (mapping_done)))
  )

  (:durative-action do_external_radiation
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (external_radiation_pending)) (at start (mapping_done)))
    :effect (and (at start (not (external_radiation_pending))) (at end (external_radiation_done)))
  )

  (:durative-action do_final_pathology
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (final_pathology_pending)) (at start (lab_work_done)) (at start (history_done)))
    :effect (and (at start (not (final_pathology_pending))) (at end (final_pathology_done)))
  )

  (:durative-action do_monitoring
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (monitoring_pending)) (at start (external_radiation_done)))
    :effect (and (at start (not (monitoring_pending))) (at end (monitoring_done)))
  )

  (:durative-action do_colposcopy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (colposcopy_pending)) (at start (initial_consultation_done)))
    :effect (and (at start (not (colposcopy_pending))) (at end (colposcopy_done)))
  )

  (:durative-action do_schedule_pet
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (schedule_pet_pending))
    :effect (and (at start (not (schedule_pet_pending))) (at end (schedule_pet_done)))
  )

  (:durative-action do_recovery_scan
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (recovery_scan_pending)) (at start (schedule_pet_done)))
    :effect (and (at start (not (recovery_scan_pending))) (at end (recovery_scan_done)))
  )

  (:durative-action do_history
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (history_pending))
    :effect (and (at start (not (history_pending))) (at end (history_done)))
  )
)
