(define (domain pregnancy-safety)
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
    (prenatal_screening_scheduled)
    (newborn_safety_workshop_attended)
    (birth_plan_discussed)
    (carbon_monoxide_detector_installed)
    (home_safety_inspection_completed)
    (hospitals_researched)
    (prenatal_insurance_purchased)
    (blood_tests_and_ultrasounds_completed)
    (doctor_referral_obtained)
    (maternity_coverage_verified)
  )

  (:durative-action schedule_prenatal_screening
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (prenatal_insurance_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prenatal_screening_scheduled)))
  )

  (:durative-action attend_newborn_safety_workshop
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (birth_plan_discussed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (newborn_safety_workshop_attended)))
  )

  (:durative-action consult_obstetrician
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (hospitals_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (birth_plan_discussed)))
  )

  (:durative-action install_carbon_monoxide_detector
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (birth_plan_discussed))
      (at start (prenatal_insurance_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (carbon_monoxide_detector_installed)))
  )

  (:durative-action conduct_home_safety_inspection
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (carbon_monoxide_detector_installed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (home_safety_inspection_completed)))
  )

  (:durative-action research_hospitals
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (doctor_referral_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hospitals_researched)))
  )

  (:durative-action purchase_prenatal_insurance
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prenatal_insurance_purchased)))
  )

  (:durative-action complete_blood_tests_and_ultrasounds
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (prenatal_screening_scheduled))
      (at start (prenatal_insurance_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (blood_tests_and_ultrasounds_completed)))
  )

  (:durative-action consult_primary_care_doctor
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (maternity_coverage_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (doctor_referral_obtained)))
  )

  (:durative-action verify_maternity_coverage
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (maternity_coverage_verified)))
  )
)