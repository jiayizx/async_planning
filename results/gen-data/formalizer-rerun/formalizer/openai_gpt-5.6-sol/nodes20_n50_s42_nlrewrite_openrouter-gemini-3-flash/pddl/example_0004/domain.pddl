(define (domain marching-band)
  (:requirements :durative-actions :typing)
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
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (orientation_attended)
    (rental_fee_paid)
    (medical_forms_completed)
    (interest_packet_downloaded)
    (physical_exam_scheduled)
    (health_certificate_obtained)
    (portal_registered)
    (uniform_picked_up)
    (accessory_list_requested)
    (clinics_researched)
    (marching_shoes_ordered)
    (tutorial_watched)
    (insurance_proof_submitted)
    (activity_account_created)
    (instrument_case_purchased)
    (instrument_section_selected)
    (rhythm_workshop_attended)
    (theory_quiz_completed)
    (marching_video_recorded)
    (fee_waiver_checked)
  )

  (:durative-action attend_orientation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (medical_forms_completed))
      (at start (portal_registered))
      (at start (activity_account_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orientation_attended))))

  (:durative-action pay_rental_fee
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
      (at start (interest_packet_downloaded))
      (at start (fee_waiver_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rental_fee_paid))))

  (:durative-action complete_medical_forms
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s))
      (at start (interest_packet_downloaded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medical_forms_completed))))

  (:durative-action download_interest_packet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (interest_packet_downloaded))))

  (:durative-action schedule_physical_exam
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s))
      (at start (clinics_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_exam_scheduled))))

  (:durative-action obtain_health_certificate
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step6 ?s))
      (at start (step_pending ?s))
      (at start (medical_forms_completed))
      (at start (physical_exam_scheduled))
      (at start (clinics_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (health_certificate_obtained))))

  (:durative-action register_portal
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step7 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (portal_registered))))

  (:durative-action pick_up_uniform
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step8 ?s))
      (at start (step_pending ?s))
      (at start (rhythm_workshop_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (uniform_picked_up))))

  (:durative-action request_accessory_list
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step9 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accessory_list_requested))))

  (:durative-action research_clinics
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step10 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clinics_researched))))

  (:durative-action order_marching_shoes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step11 ?s))
      (at start (step_pending ?s))
      (at start (interest_packet_downloaded))
      (at start (accessory_list_requested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marching_shoes_ordered))))

  (:durative-action watch_tutorial
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (is_step12 ?s))
      (at start (step_pending ?s))
      (at start (rhythm_workshop_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tutorial_watched))))

  (:durative-action submit_insurance_proof
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step13 ?s))
      (at start (step_pending ?s))
      (at start (instrument_case_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (insurance_proof_submitted))))

  (:durative-action create_activity_account
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step14 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (activity_account_created))))

  (:durative-action purchase_instrument_case
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (is_step15 ?s))
      (at start (step_pending ?s))
      (at start (activity_account_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instrument_case_purchased))))

  (:durative-action select_instrument_section
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step16 ?s))
      (at start (step_pending ?s))
      (at start (orientation_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instrument_section_selected))))

  (:durative-action attend_rhythm_workshop
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (is_step17 ?s))
      (at start (step_pending ?s))
      (at start (portal_registered))
      (at start (theory_quiz_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhythm_workshop_attended))))

  (:durative-action complete_theory_quiz
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step18 ?s))
      (at start (step_pending ?s))
      (at start (portal_registered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theory_quiz_completed))))

  (:durative-action record_marching_video
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step19 ?s))
      (at start (step_pending ?s))
      (at start (tutorial_watched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marching_video_recorded))))

  (:durative-action check_fee_waiver
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step20 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fee_waiver_checked))))
)