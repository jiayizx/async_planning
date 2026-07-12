(define (domain japan-scholarship)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (programs_researched)
    (attire_purchased)
    (transcripts_requested)
    (online_application_submitted)
    (portal_account_created)
    (application_mailed)
    (forms_downloaded)
    (study_plan_drafted)
    (transcripts_received_scanned)
    (health_certificate_obtained)
    (personal_statement_drafted)
    (recommendations_requested)
    (birth_certificate_translated)
    (diploma_notarized)
    (passport_photo_uploaded)
    (jlpt_practice_completed)
    (jlpt_registered)
    (proposal_proofread)
    (documents_printed)
    (health_certificate_scanned)
    (professors_followed_up)
    (supporting_pdf_gathered)
    (hardcopy_forms_signed)
    (jlpt_dates_researched)
    (japanese_studied)
    (webinar_attended)
    (processing_fee_paid)
    (background_check_completed)
    (interview_hotel_booked)
    (mentor_review_completed)
  )

  (:durative-action research_programs
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (programs_researched))))

  (:durative-action purchase_attire
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (attire_purchased))))

  (:durative-action request_transcripts
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transcripts_requested))))

  (:durative-action submit_online_application
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (portal_account_created)) (at start (proposal_proofread)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (online_application_submitted))))

  (:durative-action create_portal_account
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portal_account_created))))

  (:durative-action mail_application
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (documents_printed)) (at start (hardcopy_forms_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_mailed))))

  (:durative-action download_forms
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (programs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forms_downloaded))))

  (:durative-action draft_study_plan
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (forms_downloaded)) (at start (transcripts_received_scanned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (study_plan_drafted))))

  (:durative-action receive_scan_transcripts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (transcripts_requested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transcripts_received_scanned))))

  (:durative-action obtain_health_certificate
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (background_check_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (health_certificate_obtained))))

  (:durative-action draft_personal_statement
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (programs_researched)) (at start (study_plan_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (personal_statement_drafted))))

  (:durative-action request_recommendations
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (portal_account_created)) (at start (background_check_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recommendations_requested))))

  (:durative-action translate_birth_certificate
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (webinar_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (birth_certificate_translated))))

  (:durative-action notarize_diploma
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (webinar_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diploma_notarized))))

  (:durative-action upload_passport_photo
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (programs_researched)) (at start (health_certificate_scanned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_photo_uploaded))))

  (:durative-action take_jlpt_practice_exam
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (jlpt_registered)) (at start (japanese_studied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jlpt_practice_completed))))

  (:durative-action register_jlpt
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (jlpt_dates_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jlpt_registered))))

  (:durative-action proofread_proposal
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (portal_account_created)) (at start (jlpt_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (proposal_proofread))))

  (:durative-action print_documents
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (documents_printed))))

  (:durative-action scan_health_certificate
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (portal_account_created)) (at start (health_certificate_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (health_certificate_scanned))))

  (:durative-action follow_up_professors
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (recommendations_requested)) (at start (webinar_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (professors_followed_up))))

  (:durative-action gather_supporting_pdf
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (portal_account_created)) (at start (diploma_notarized)) (at start (professors_followed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supporting_pdf_gathered))))

  (:durative-action sign_hardcopy_forms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (mentor_review_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardcopy_forms_signed))))

  (:durative-action research_jlpt_dates
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jlpt_dates_researched))))

  (:durative-action study_japanese
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (japanese_studied))))

  (:durative-action attend_webinar
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (transcripts_received_scanned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (webinar_attended))))

  (:durative-action pay_processing_fee
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (supporting_pdf_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (processing_fee_paid))))

  (:durative-action complete_background_check
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (diploma_notarized)) (at start (jlpt_registered)) (at start (hardcopy_forms_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (background_check_completed))))

  (:durative-action book_interview_hotel
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (attire_purchased)) (at start (jlpt_practice_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interview_hotel_booked))))

  (:durative-action conduct_mentor_review
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (proposal_proofread)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mentor_review_completed))))
)