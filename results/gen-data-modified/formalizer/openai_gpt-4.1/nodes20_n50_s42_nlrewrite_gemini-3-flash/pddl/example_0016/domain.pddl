(define (domain police_clearance)
  (:requirements :durative-actions)
  (:predicates
    (pay_fee_pending) (pay_fee_done)
    (register_account_pending) (register_account_done)
    (upload_docs_pending) (upload_docs_done)
    (fill_form_pending) (fill_form_done)
    (print_receipt_pending) (print_receipt_done)
    (book_slot_pending) (book_slot_done)
    (biometric_pending) (biometric_done)
    (travel_kendra_pending) (travel_kendra_done)
    (review_details_pending) (review_details_done)
    (buy_folder_pending) (buy_folder_done)
    (wait_police_file_pending) (wait_police_file_done)
    (gather_originals_pending) (gather_originals_done)
    (arrange_folder_pending) (arrange_folder_done)
    (download_app_pending) (download_app_done)
    (verify_signature_pending) (verify_signature_done)
    (login_portal_pending) (login_portal_done)
    (interview_pending) (interview_done)
    (notify_police_pending) (notify_police_done)
    (submit_application_pending) (submit_application_done)
    (host_verification_pending) (host_verification_done)
  )

  (:durative-action pay_fee
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pay_fee_pending)) (at start (register_account_done)) (at start (login_portal_done)))
    :effect (and (at start (not (pay_fee_pending))) (at end (pay_fee_done)))
  )

  (:durative-action register_account
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (register_account_pending))
    :effect (and (at start (not (register_account_pending))) (at end (register_account_done)))
  )

  (:durative-action upload_docs
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (upload_docs_pending)) (at start (fill_form_done)))
    :effect (and (at start (not (upload_docs_pending))) (at end (upload_docs_done)))
  )

  (:durative-action fill_form
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (fill_form_pending)) (at start (gather_originals_done)))
    :effect (and (at start (not (fill_form_pending))) (at end (fill_form_done)))
  )

  (:durative-action print_receipt
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (print_receipt_pending)) (at start (review_details_done)) (at start (download_app_done)))
    :effect (and (at start (not (print_receipt_pending))) (at end (print_receipt_done)))
  )

  (:durative-action book_slot
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (book_slot_pending)) (at start (verify_signature_done)))
    :effect (and (at start (not (book_slot_pending))) (at end (book_slot_done)))
  )

  (:durative-action biometric
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (biometric_pending)) (at start (travel_kendra_done)))
    :effect (and (at start (not (biometric_pending))) (at end (biometric_done)))
  )

  (:durative-action travel_kendra
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (travel_kendra_pending))
    :effect (and (at start (not (travel_kendra_pending))) (at end (travel_kendra_done)))
  )

  (:durative-action review_details
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (review_details_pending)) (at start (fill_form_done)))
    :effect (and (at start (not (review_details_pending))) (at end (review_details_done)))
  )

  (:durative-action buy_folder
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_folder_pending))
    :effect (and (at start (not (buy_folder_pending))) (at end (buy_folder_done)))
  )

  (:durative-action wait_police_file
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (wait_police_file_pending)) (at start (book_slot_done)) (at start (notify_police_done)) (at start (submit_application_done)))
    :effect (and (at start (not (wait_police_file_pending))) (at end (wait_police_file_done)))
  )

  (:durative-action gather_originals
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (gather_originals_pending))
    :effect (and (at start (not (gather_originals_pending))) (at end (gather_originals_done)))
  )

  (:durative-action arrange_folder
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (arrange_folder_pending)) (at start (buy_folder_done)))
    :effect (and (at start (not (arrange_folder_pending))) (at end (arrange_folder_done)))
  )

  (:durative-action download_app
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (download_app_pending))
    :effect (and (at start (not (download_app_pending))) (at end (download_app_done)))
  )

  (:durative-action verify_signature
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (verify_signature_pending)) (at start (upload_docs_done)))
    :effect (and (at start (not (verify_signature_pending))) (at end (verify_signature_done)))
  )

  (:durative-action login_portal
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (login_portal_pending)) (at start (register_account_done)))
    :effect (and (at start (not (login_portal_pending))) (at end (login_portal_done)))
  )

  (:durative-action interview
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (interview_pending)) (at start (biometric_done)))
    :effect (and (at start (not (interview_pending))) (at end (interview_done)))
  )

  (:durative-action notify_police
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (notify_police_pending))
    :effect (and (at start (not (notify_police_pending))) (at end (notify_police_done)))
  )

  (:durative-action submit_application
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (submit_application_pending)) (at start (review_details_done)))
    :effect (and (at start (not (submit_application_pending))) (at end (submit_application_done)))
  )

  (:durative-action host_verification
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (host_verification_pending)) (at start (wait_police_file_done)))
    :effect (and (at start (not (host_verification_pending))) (at end (host_verification_done)))
  )
)
