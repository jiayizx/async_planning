(define (domain pregnancy-safety)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (screening_scheduled)
    (workshop_attended)
    (consultation_done)
    (detector_installed)
    (inspection_done)
    (research_done)
    (insurance_purchased)
    (tests_completed)
    (referral_done)
    (coverage_verified)
  )
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screening_scheduled)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workshop_attended)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_done)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (detector_installed)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (detector_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspection_done)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (referral_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_purchased)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (screening_scheduled)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tests_completed)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (coverage_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (referral_done)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coverage_verified)))
  )
)