(define (domain hiatal_hernia_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (consultation_scheduled)
    (exam_completed)
    (centers_researched)
    (insurance_verified)
    (fasting_completed)
    (xray_completed)
    (referral_received)
    (travel_completed)
    (prescription_picked_up)
    (endoscopy_authorized)
  )

  (:durative-action schedule_consultation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_scheduled)))
  )

  (:durative-action attend_examination
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (consultation_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exam_completed)))
  )

  (:durative-action research_centers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (centers_researched)))
  )

  (:durative-action verify_insurance
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (centers_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_verified)))
  )

  (:durative-action fast_for_procedure
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fasting_completed)))
  )

  (:durative-action undergo_xray
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (fasting_completed)) (at start (travel_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (xray_completed)))
  )

  (:durative-action receive_referral
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (exam_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (referral_received)))
  )

  (:durative-action travel_to_center
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (endoscopy_authorized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (travel_completed)))
  )

  (:durative-action pick_up_prescription
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (exam_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prescription_picked_up)))
  )

  (:durative-action authorize_endoscopy
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (referral_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (endoscopy_authorized)))
  )
)