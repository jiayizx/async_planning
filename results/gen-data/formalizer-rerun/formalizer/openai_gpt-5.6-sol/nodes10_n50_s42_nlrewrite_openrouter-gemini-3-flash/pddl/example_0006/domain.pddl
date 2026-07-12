(define (domain cervical-cancer-treatment)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (biopsy_reviewed)
    (clearance_completed)
    (lymph_nodes_mapped)
    (hysterectomy_completed)
    (anesthesia_prep_completed)
    (recovery_completed)
    (staging_scans_completed)
    (external_radiation_completed)
    (treatment_completed)
    (oncology_consultation_completed)
  )

  (:durative-action initial_biopsy_and_pathology_review
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (biopsy_reviewed)))
  )

  (:durative-action preoperative_blood_work_and_cardiac_clearance
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (oncology_consultation_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clearance_completed)))
  )

  (:durative-action lymph_node_mapping
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (staging_scans_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lymph_nodes_mapped)))
  )

  (:durative-action radical_hysterectomy_surgery
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (lymph_nodes_mapped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hysterectomy_completed)))
  )

  (:durative-action anesthesia_administration_and_patient_prep
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (clearance_completed))
      (at start (oncology_consultation_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (anesthesia_prep_completed)))
  )

  (:durative-action postoperative_recovery_and_monitoring
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (hysterectomy_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recovery_completed)))
  )

  (:durative-action pelvic_mri_and_ct_staging_scans
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (biopsy_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (staging_scans_completed)))
  )

  (:durative-action external_beam_radiation_therapy
    :parameters (?s - step)
    :duration (= ?duration 3024000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (external_radiation_completed)))
  )

  (:durative-action brachytherapy_internal_radiation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (external_radiation_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (treatment_completed)))
  )

  (:durative-action oncology_surgical_team_consultation
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oncology_consultation_completed)))
  )
)