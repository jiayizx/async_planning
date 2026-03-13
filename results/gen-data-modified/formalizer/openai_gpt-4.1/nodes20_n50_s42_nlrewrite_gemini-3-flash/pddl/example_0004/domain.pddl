(define (domain marching_band_join)
  (:requirements :durative-actions)
  (:predicates
    (attend_orientation_pending)
    (attend_orientation_done)
    (pay_fees_pending)
    (pay_fees_done)
    (fill_medical_forms_pending)
    (fill_medical_forms_done)
    (create_portal_account_pending)
    (create_portal_account_done)
    (watch_uniform_video_pending)
    (watch_uniform_video_done)
    (schedule_uniform_fitting_pending)
    (schedule_uniform_fitting_done)
    (research_instrument_section_pending)
    (research_instrument_section_done)
    (purchase_shoes_socks_pending)
    (purchase_shoes_socks_done)
    (download_sheet_music_pending)
    (download_sheet_music_done)
    (receive_handbook_pending)
    (receive_handbook_done)
    (practice_audition_pending)
    (practice_audition_done)
    (submit_jacket_sizing_pending)
    (submit_jacket_sizing_done)
    (pickup_rental_instrument_pending)
    (pickup_rental_instrument_done)
    (obtain_physical_exam_pending)
    (obtain_physical_exam_done)
    (sign_rental_agreement_pending)
    (sign_rental_agreement_done)
    (signup_audition_slot_pending)
    (signup_audition_slot_done)
    (meet_section_leader_pending)
    (meet_section_leader_done)
    (submit_recommendation_pending)
    (submit_recommendation_done)
    (wait_jacket_order_pending)
    (wait_jacket_order_done)
    (apply_scholarship_pending)
    (apply_scholarship_done)
  )

  (:durative-action attend_orientation
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (attend_orientation_pending)) (at start (fill_medical_forms_done)) (at start (research_instrument_section_done)) (at start (obtain_physical_exam_done)))
    :effect (and (at start (not (attend_orientation_pending))) (at end (attend_orientation_done)))
  )

  (:durative-action pay_fees
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pay_fees_pending)) (at start (create_portal_account_done)) (at start (apply_scholarship_done)))
    :effect (and (at start (not (pay_fees_pending))) (at end (pay_fees_done)))
  )

  (:durative-action fill_medical_forms
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (fill_medical_forms_pending)) (at start (create_portal_account_done)))
    :effect (and (at start (not (fill_medical_forms_pending))) (at end (fill_medical_forms_done)))
  )

  (:durative-action create_portal_account
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (create_portal_account_pending))
    :effect (and (at start (not (create_portal_account_pending))) (at end (create_portal_account_done)))
  )

  (:durative-action watch_uniform_video
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (watch_uniform_video_pending)) (at start (receive_handbook_done)))
    :effect (and (at start (not (watch_uniform_video_pending))) (at end (watch_uniform_video_done)))
  )

  (:durative-action schedule_uniform_fitting
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (schedule_uniform_fitting_pending)) (at start (fill_medical_forms_done)) (at start (watch_uniform_video_done)) (at start (receive_handbook_done)))
    :effect (and (at start (not (schedule_uniform_fitting_pending))) (at end (schedule_uniform_fitting_done)))
  )

  (:durative-action research_instrument_section
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_instrument_section_pending))
    :effect (and (at start (not (research_instrument_section_pending))) (at end (research_instrument_section_done)))
  )

  (:durative-action purchase_shoes_socks
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_shoes_socks_pending)) (at start (meet_section_leader_done)))
    :effect (and (at start (not (purchase_shoes_socks_pending))) (at end (purchase_shoes_socks_done)))
  )

  (:durative-action download_sheet_music
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (download_sheet_music_pending))
    :effect (and (at start (not (download_sheet_music_pending))) (at end (download_sheet_music_done)))
  )

  (:durative-action receive_handbook
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (receive_handbook_pending))
    :effect (and (at start (not (receive_handbook_pending))) (at end (receive_handbook_done)))
  )

  (:durative-action practice_audition
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (practice_audition_pending)) (at start (create_portal_account_done)) (at start (download_sheet_music_done)))
    :effect (and (at start (not (practice_audition_pending))) (at end (practice_audition_done)))
  )

  (:durative-action submit_jacket_sizing
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (submit_jacket_sizing_pending)) (at start (meet_section_leader_done)))
    :effect (and (at start (not (submit_jacket_sizing_pending))) (at end (submit_jacket_sizing_done)))
  )

  (:durative-action pickup_rental_instrument
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pickup_rental_instrument_pending)) (at start (sign_rental_agreement_done)))
    :effect (and (at start (not (pickup_rental_instrument_pending))) (at end (pickup_rental_instrument_done)))
  )

  (:durative-action obtain_physical_exam
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (obtain_physical_exam_pending))
    :effect (and (at start (not (obtain_physical_exam_pending))) (at end (obtain_physical_exam_done)))
  )

  (:durative-action sign_rental_agreement
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (sign_rental_agreement_pending)) (at start (obtain_physical_exam_done)))
    :effect (and (at start (not (sign_rental_agreement_pending))) (at end (sign_rental_agreement_done)))
  )

  (:durative-action signup_audition_slot
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (signup_audition_slot_pending)) (at start (attend_orientation_done)))
    :effect (and (at start (not (signup_audition_slot_pending))) (at end (signup_audition_slot_done)))
  )

  (:durative-action meet_section_leader
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (meet_section_leader_pending)) (at start (research_instrument_section_done)) (at start (submit_recommendation_done)))
    :effect (and (at start (not (meet_section_leader_pending))) (at end (meet_section_leader_done)))
  )

  (:durative-action submit_recommendation
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (submit_recommendation_pending)) (at start (research_instrument_section_done)))
    :effect (and (at start (not (submit_recommendation_pending))) (at end (submit_recommendation_done)))
  )

  (:durative-action wait_jacket_order
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (wait_jacket_order_pending)) (at start (submit_jacket_sizing_done)))
    :effect (and (at start (not (wait_jacket_order_pending))) (at end (wait_jacket_order_done)))
  )

  (:durative-action apply_scholarship
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (apply_scholarship_pending))
    :effect (and (at start (not (apply_scholarship_pending))) (at end (apply_scholarship_done)))
  )
)
