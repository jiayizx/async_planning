(define (domain police-clearance-india)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (for_step1 ?s - step)
    (for_step2 ?s - step)
    (for_step3 ?s - step)
    (for_step4 ?s - step)
    (for_step5 ?s - step)
    (for_step6 ?s - step)
    (for_step7 ?s - step)
    (for_step8 ?s - step)
    (for_step9 ?s - step)
    (for_step10 ?s - step)
    (for_step11 ?s - step)
    (for_step12 ?s - step)
    (for_step13 ?s - step)
    (for_step14 ?s - step)
    (for_step15 ?s - step)
    (for_step16 ?s - step)
    (for_step17 ?s - step)
    (for_step18 ?s - step)
    (for_step19 ?s - step)
    (for_step20 ?s - step)
    (application_fee_paid)
    (portal_account_created)
    (address_proof_uploaded)
    (application_form_filled)
    (confirmation_sms_received)
    (biometrics_captured)
    (local_station_file_received)
    (file_forwarded_to_district_police)
    (appointment_selected)
    (physical_identity_documents_gathered)
    (regional_review_completed)
    (guidelines_read)
    (interview_documents_organized)
    (appointment_slots_checked)
    (photocopies_self_attested)
    (portal_login_completed)
    (physical_verification_completed)
    (national_background_check_completed)
    (appointment_center_reached)
    (certificate_downloaded_and_printed)
  )

  (:durative-action pay_application_fee
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step1 ?s))
      (at start (portal_account_created))
      (at start (portal_login_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_fee_paid))))

  (:durative-action create_portal_account
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (portal_account_created))))

  (:durative-action upload_address_proof
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step3 ?s))
      (at start (application_form_filled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (address_proof_uploaded))))

  (:durative-action fill_application_form
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step4 ?s))
      (at start (guidelines_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_form_filled))))

  (:durative-action receive_confirmation_sms
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step5 ?s))
      (at start (appointment_selected))
      (at start (appointment_slots_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (confirmation_sms_received))))

  (:durative-action capture_biometrics
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step6 ?s))
      (at start (photocopies_self_attested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (biometrics_captured))))

  (:durative-action wait_for_local_station_file
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step7 ?s))
      (at start (file_forwarded_to_district_police)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (local_station_file_received))))

  (:durative-action forward_file_to_district_police
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (file_forwarded_to_district_police))))

  (:durative-action select_appointment
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step9 ?s))
      (at start (application_form_filled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appointment_selected))))

  (:durative-action gather_identity_documents
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_identity_documents_gathered))))

  (:durative-action regional_passport_office_review
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step11 ?s))
      (at start (biometrics_captured))
      (at start (national_background_check_completed))
      (at start (appointment_center_reached)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (regional_review_completed))))

  (:durative-action read_guidelines
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guidelines_read))))

  (:durative-action organize_interview_documents
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step13 ?s))
      (at start (physical_identity_documents_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (interview_documents_organized))))

  (:durative-action check_appointment_slots
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appointment_slots_checked))))

  (:durative-action self_attest_photocopies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step15 ?s))
      (at start (address_proof_uploaded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (photocopies_self_attested))))

  (:durative-action login_to_portal
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step16 ?s))
      (at start (portal_account_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (portal_login_completed))))

  (:durative-action complete_physical_verification
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step17 ?s))
      (at start (local_station_file_received)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_verification_completed))))

  (:durative-action perform_national_background_check
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step18 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (national_background_check_completed))))

  (:durative-action travel_to_appointment_center
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step19 ?s))
      (at start (appointment_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appointment_center_reached))))

  (:durative-action download_and_print_certificate
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (for_step20 ?s))
      (at start (regional_review_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (certificate_downloaded_and_printed))))
)