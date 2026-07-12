(define (domain japan-scholarship)
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
    (digital_application_submitted)
    (orientation_attended)
    (transcript_fee_paid)
    (scholarships_researched)
    (document_bundle_mailed)
    (portal_account_registered)
    (forms_downloaded)
    (birth_certificate_obtained)
    (recommendation_requested)
    (documents_uploaded)
    (personal_statement_completed)
    (transcripts_requested)
    (diploma_translation_ordered)
    (medical_examination_completed)
    (medical_form_notarized)
    (passport_verified)
    (passport_photos_taken)
    (language_assessment_passed)
    (study_plan_written)
    (submission_receipt_confirmed)
  )

  (:durative-action submit_digital_application
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (personal_statement_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (digital_application_submitted))))

  (:durative-action attend_orientation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (documents_uploaded)) (at start (passport_verified)) (at start (language_assessment_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orientation_attended))))

  (:durative-action pay_transcript_fee
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (transcripts_requested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transcript_fee_paid))))

  (:durative-action research_scholarships
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scholarships_researched))))

  (:durative-action mail_document_bundle
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (birth_certificate_obtained)) (at start (transcripts_requested)) (at start (medical_form_notarized)) (at start (language_assessment_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (document_bundle_mailed))))

  (:durative-action register_portal_account
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portal_account_registered))))

  (:durative-action download_forms
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (scholarships_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forms_downloaded))))

  (:durative-action obtain_birth_certificate
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (birth_certificate_obtained))))

  (:durative-action request_recommendation
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (scholarships_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recommendation_requested))))

  (:durative-action upload_supporting_documents
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (personal_statement_completed)) (at start (medical_examination_completed)) (at start (study_plan_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (documents_uploaded))))

  (:durative-action write_personal_statement
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (portal_account_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (personal_statement_completed))))

  (:durative-action request_transcripts
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transcripts_requested))))

  (:durative-action order_diploma_translation
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (medical_examination_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diploma_translation_ordered))))

  (:durative-action complete_medical_examination
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (scholarships_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_examination_completed))))

  (:durative-action notarize_medical_form
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (medical_examination_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_form_notarized))))

  (:durative-action verify_passport
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_verified))))

  (:durative-action take_passport_photos
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (passport_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_photos_taken))))

  (:durative-action pass_language_assessment
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (language_assessment_passed))))

  (:durative-action write_study_plan
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (portal_account_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (study_plan_written))))

  (:durative-action confirm_submission_receipt
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (recommendation_requested)) (at start (documents_uploaded)) (at start (passport_photos_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (submission_receipt_confirmed))))
)