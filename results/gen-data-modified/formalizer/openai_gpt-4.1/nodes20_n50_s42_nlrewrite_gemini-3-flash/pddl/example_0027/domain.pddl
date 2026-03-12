(define (domain scholarship-application)
  (:requirements :durative-actions)
  (:predicates
    (request_transcripts_pending)
    (request_transcripts_done)
    (submit_application_pending)
    (submit_application_done)
    (book_flight_pending)
    (book_flight_done)
    (research_scholarships_pending)
    (research_scholarships_done)
    (mail_documents_pending)
    (mail_documents_done)
    (contact_professors_pending)
    (contact_professors_done)
    (attend_webinar_pending)
    (attend_webinar_done)
    (notarize_form_pending)
    (notarize_form_done)
    (write_study_plan_pending)
    (write_study_plan_done)
    (compile_documents_pending)
    (compile_documents_done)
    (receive_recommendations_pending)
    (receive_recommendations_done)
    (obtain_passport_pending)
    (obtain_passport_done)
    (pay_fee_pending)
    (pay_fee_done)
    (draft_statement_pending)
    (draft_statement_done)
    (translate_statement_pending)
    (translate_statement_done)
    (take_language_test_pending)
    (take_language_test_done)
    (receive_language_results_pending)
    (receive_language_results_done)
    (medical_checkup_pending)
    (medical_checkup_done)
    (update_cv_pending)
    (update_cv_done)
    (confirm_receipt_pending)
    (confirm_receipt_done)
  )

  (:durative-action request_transcripts
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (request_transcripts_pending)) (at start (receive_recommendations_done)))
    :effect (and (at start (not (request_transcripts_pending))) (at end (request_transcripts_done)))
  )

  (:durative-action submit_application
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (submit_application_pending)) (at start (compile_documents_done)) (at start (take_language_test_done)) (at start (medical_checkup_done)))
    :effect (and (at start (not (submit_application_pending))) (at end (submit_application_done)))
  )

  (:durative-action book_flight
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (book_flight_pending)) (at start (obtain_passport_done)))
    :effect (and (at start (not (book_flight_pending))) (at end (book_flight_done)))
  )

  (:durative-action research_scholarships
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (research_scholarships_pending))
    :effect (and (at start (not (research_scholarships_pending))) (at end (research_scholarships_done)))
  )

  (:durative-action mail_documents
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (mail_documents_pending)) (at start (notarize_form_done)) (at start (obtain_passport_done)) (at start (translate_statement_done)) (at start (medical_checkup_done)))
    :effect (and (at start (not (mail_documents_pending))) (at end (mail_documents_done)))
  )

  (:durative-action contact_professors
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (contact_professors_pending))
    :effect (and (at start (not (contact_professors_pending))) (at end (contact_professors_done)))
  )

  (:durative-action attend_webinar
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (attend_webinar_pending)) (at start (research_scholarships_done)))
    :effect (and (at start (not (attend_webinar_pending))) (at end (attend_webinar_done)))
  )

  (:durative-action notarize_form
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (notarize_form_pending))
    :effect (and (at start (not (notarize_form_pending))) (at end (notarize_form_done)))
  )

  (:durative-action write_study_plan
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (write_study_plan_pending)) (at start (research_scholarships_done)))
    :effect (and (at start (not (write_study_plan_pending))) (at end (write_study_plan_done)))
  )

  (:durative-action compile_documents
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (compile_documents_pending)) (at start (receive_recommendations_done)) (at start (draft_statement_done)) (at start (update_cv_done)))
    :effect (and (at start (not (compile_documents_pending))) (at end (compile_documents_done)))
  )

  (:durative-action receive_recommendations
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (receive_recommendations_pending)) (at start (contact_professors_done)))
    :effect (and (at start (not (receive_recommendations_pending))) (at end (receive_recommendations_done)))
  )

  (:durative-action obtain_passport
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (obtain_passport_pending))
    :effect (and (at start (not (obtain_passport_pending))) (at end (obtain_passport_done)))
  )

  (:durative-action pay_fee
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pay_fee_pending)) (at start (draft_statement_done)))
    :effect (and (at start (not (pay_fee_pending))) (at end (pay_fee_done)))
  )

  (:durative-action draft_statement
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (draft_statement_pending)) (at start (research_scholarships_done)))
    :effect (and (at start (not (draft_statement_pending))) (at end (draft_statement_done)))
  )

  (:durative-action translate_statement
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (translate_statement_pending)) (at start (draft_statement_done)))
    :effect (and (at start (not (translate_statement_pending))) (at end (translate_statement_done)))
  )

  (:durative-action take_language_test
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (take_language_test_pending))
    :effect (and (at start (not (take_language_test_pending))) (at end (take_language_test_done)))
  )

  (:durative-action receive_language_results
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (receive_language_results_pending)) (at start (take_language_test_done)))
    :effect (and (at start (not (receive_language_results_pending))) (at end (receive_language_results_done)))
  )

  (:durative-action medical_checkup
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (medical_checkup_pending))
    :effect (and (at start (not (medical_checkup_pending))) (at end (medical_checkup_done)))
  )

  (:durative-action update_cv
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (update_cv_pending)) (at start (contact_professors_done)))
    :effect (and (at start (not (update_cv_pending))) (at end (update_cv_done)))
  )

  (:durative-action confirm_receipt
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (confirm_receipt_pending)) (at start (write_study_plan_done)) (at start (compile_documents_done)) (at start (receive_language_results_done)))
    :effect (and (at start (not (confirm_receipt_pending))) (at end (confirm_receipt_done)))
  )
)
