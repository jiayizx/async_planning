(define (domain hiatal-hernia-diagnosis)
  (:requirements :typing :durative-actions)
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
    (consultation_scheduled)
    (physical_examination_completed)
    (imaging_centers_researched)
    (insurance_coverage_verified)
    (fasting_completed)
    (upper_gi_xray_completed)
    (specialist_referral_received)
    (surgical_center_reached)
    (medication_prescription_picked_up)
    (endoscopy_authorized)
  )

  (:durative-action schedule_initial_consultation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled))
    )
  )

  (:durative-action attend_physical_examination
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (consultation_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_examination_completed))
    )
  )

  (:durative-action research_imaging_centers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (imaging_centers_researched))
    )
  )

  (:durative-action verify_insurance_coverage
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (imaging_centers_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (insurance_coverage_verified))
    )
  )

  (:durative-action fast_before_procedure
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fasting_completed))
    )
  )

  (:durative-action undergo_upper_gi_xray
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (fasting_completed))
      (at start (surgical_center_reached))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (upper_gi_xray_completed))
    )
  )

  (:durative-action receive_specialist_referral
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (physical_examination_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (specialist_referral_received))
    )
  )

  (:durative-action travel_to_surgical_center
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (endoscopy_authorized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (surgical_center_reached))
    )
  )

  (:durative-action pick_up_medication_prescription
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (physical_examination_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medication_prescription_picked_up))
    )
  )

  (:durative-action consult_gastroenterologist
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (specialist_referral_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (endoscopy_authorized))
    )
  )
)