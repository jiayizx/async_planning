(define (domain pregnancy_safety)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (screening_scheduled)
    (workshop_attended)
    (birth_plan_consulted)
    (co_detector_installed)
    (home_inspected)
    (hospitals_researched)
    (insurance_purchased)
    (tests_completed)
    (referral_obtained)
    (coverage_verified)
  )

  (:durative-action schedule_screening
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screening_scheduled)))
  )

  (:durative-action attend_workshop
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (birth_plan_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workshop_attended)))
  )

  (:durative-action consult_birth_plan
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (hospitals_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (birth_plan_consulted)))
  )

  (:durative-action install_co_detector
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (birth_plan_consulted)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (co_detector_installed)))
  )

  (:durative-action conduct_inspection
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (co_detector_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (home_inspected)))
  )

  (:durative-action research_hospitals
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (referral_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hospitals_researched)))
  )

  (:durative-action purchase_insurance
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_purchased)))
  )

  (:durative-action complete_tests
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (screening_scheduled)) (at start (insurance_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tests_completed)))
  )

  (:durative-action obtain_referral
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (coverage_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (referral_obtained)))
  )

  (:durative-action verify_coverage
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coverage_verified)))
  )
)