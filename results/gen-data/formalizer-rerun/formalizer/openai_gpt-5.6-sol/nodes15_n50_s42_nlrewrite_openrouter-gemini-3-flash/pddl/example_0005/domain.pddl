(define (domain delay-period)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (confirmation_logged)
    (followup_scheduled)
    (methods_researched)
    (coverage_checked)
    (prescription_processed)
    (alarm_configured)
    (travel_kit_organized)
    (telehealth_consulted)
    (prescription_requested)
    (followup_completed)
    (brand_chosen)
    (medication_picked_up)
    (instructions_read)
    (stock_verified)
    (calendar_checked)
  )

  (:durative-action log_final_confirmation
    :parameters (?s - step1_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (calendar_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (confirmation_logged))
    )
  )

  (:durative-action schedule_followup
    :parameters (?s - step2_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (methods_researched))
      (at start (brand_chosen))
      (at start (stock_verified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (followup_scheduled))
    )
  )

  (:durative-action research_hormonal_methods
    :parameters (?s - step3_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (methods_researched))
    )
  )

  (:durative-action check_insurance_coverage
    :parameters (?s - step4_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (methods_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coverage_checked))
    )
  )

  (:durative-action process_prescription
    :parameters (?s - step5_type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (prescription_requested))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prescription_processed))
    )
  )

  (:durative-action set_daily_alarm
    :parameters (?s - step6_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (prescription_requested))
      (at start (instructions_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (alarm_configured))
    )
  )

  (:durative-action organize_travel_kit
    :parameters (?s - step7_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (instructions_read))
      (at start (calendar_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (travel_kit_organized))
    )
  )

  (:durative-action consult_via_telehealth
    :parameters (?s - step8_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (methods_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (telehealth_consulted))
    )
  )

  (:durative-action request_prescription
    :parameters (?s - step9_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prescription_requested))
    )
  )

  (:durative-action visit_followup
    :parameters (?s - step10_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (followup_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (followup_completed))
    )
  )

  (:durative-action choose_medication_brand
    :parameters (?s - step11_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (coverage_checked))
      (at start (medication_picked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (brand_chosen))
    )
  )

  (:durative-action pick_up_medication
    :parameters (?s - step12_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (prescription_processed))
      (at start (telehealth_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medication_picked_up))
    )
  )

  (:durative-action read_instructions
    :parameters (?s - step13_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (medication_picked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instructions_read))
    )
  )

  (:durative-action verify_pharmacy_stock
    :parameters (?s - step14_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (calendar_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stock_verified))
    )
  )

  (:durative-action check_event_calendar
    :parameters (?s - step15_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (calendar_checked))
    )
  )
)