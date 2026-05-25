(define (domain cervical_cancer_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (biopsy_done)
    (bloodwork_done)
    (mapping_done)
    (surgery_done)
    (anesthesia_done)
    (recovery_done)
    (staging_done)
    (external_rad_done)
    (brachytherapy_done)
    (consultation_done)
  )

  (:durative-action initial_biopsy
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (biopsy_done)))
  )

  (:durative-action staging_scans
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (biopsy_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (staging_done)))
  )

  (:durative-action lymph_mapping
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (staging_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mapping_done)))
  )

  (:durative-action surgery
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (mapping_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surgery_done)))
  )

  (:durative-action recovery
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (surgery_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recovery_done)))
  )

  (:durative-action consultation
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_done)))
  )

  (:durative-action bloodwork
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bloodwork_done)))
  )

  (:durative-action anesthesia
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (bloodwork_done)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anesthesia_done)))
  )

  (:durative-action external_radiation
    :parameters (?s - step)
    :duration (= ?duration 3024000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (external_rad_done)))
  )

  (:durative-action brachytherapy
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (external_rad_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brachytherapy_done)))
  )
)