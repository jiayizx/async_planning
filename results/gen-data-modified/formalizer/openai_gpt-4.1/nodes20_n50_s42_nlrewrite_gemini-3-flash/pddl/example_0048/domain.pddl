(define (domain protect_child_teeth)
  (:requirements :durative-actions)
  (:predicates
    (schedule_cleaning_pending)
    (schedule_cleaning_done)
    (apply_varnish_pending)
    (apply_varnish_done)
    (research_clinics_pending)
    (research_clinics_done)
    (buy_toothbrushes_pending)
    (buy_toothbrushes_done)
    (buy_flosser_pending)
    (buy_flosser_done)
    (watch_video_pending)
    (watch_video_done)
    (demonstrate_flossing_pending)
    (demonstrate_flossing_done)
    (fill_prescription_pending)
    (fill_prescription_done)
    (check_pantry_pending)
    (check_pantry_done)
    (call_insurance_pending)
    (call_insurance_done)
    (attend_exam_pending)
    (attend_exam_done)
    (order_mouthguard_pending)
    (order_mouthguard_done)
    (pickup_mouthguard_pending)
    (pickup_mouthguard_done)
    (read_rinse_instructions_pending)
    (read_rinse_instructions_done)
    (setup_flosser_pending)
    (setup_flosser_done)
    (apply_sealants_pending)
    (apply_sealants_done)
    (ask_neighbors_pending)
    (ask_neighbors_done)
    (consult_dentist_pending)
    (consult_dentist_done)
    (supervise_brushing_pending)
    (supervise_brushing_done)
    (arrive_office_pending)
    (arrive_office_done)
  )

  (:durative-action schedule_cleaning
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (schedule_cleaning_pending)) (at start (research_clinics_done)))
    :effect (and (at start (not (schedule_cleaning_pending))) (at end (schedule_cleaning_done)))
  )

  (:durative-action apply_varnish
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (apply_varnish_pending)) (at start (arrive_office_done)))
    :effect (and (at start (not (apply_varnish_pending))) (at end (apply_varnish_done)))
  )

  (:durative-action research_clinics
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_clinics_pending)) (at start (ask_neighbors_done)))
    :effect (and (at start (not (research_clinics_pending))) (at end (research_clinics_done)))
  )

  (:durative-action buy_toothbrushes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_toothbrushes_pending)) (at start (check_pantry_done)))
    :effect (and (at start (not (buy_toothbrushes_pending))) (at end (buy_toothbrushes_done)))
  )

  (:durative-action buy_flosser
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (buy_flosser_pending))
    :effect (and (at start (not (buy_flosser_pending))) (at end (buy_flosser_done)))
  )

  (:durative-action watch_video
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (watch_video_pending))
    :effect (and (at start (not (watch_video_pending))) (at end (watch_video_done)))
  )

  (:durative-action demonstrate_flossing
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (demonstrate_flossing_pending)) (at start (buy_flosser_done)) (at start (read_rinse_instructions_done)))
    :effect (and (at start (not (demonstrate_flossing_pending))) (at end (demonstrate_flossing_done)))
  )

  (:durative-action fill_prescription
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (fill_prescription_pending)) (at start (setup_flosser_done)))
    :effect (and (at start (not (fill_prescription_pending))) (at end (fill_prescription_done)))
  )

  (:durative-action check_pantry
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (check_pantry_pending))
    :effect (and (at start (not (check_pantry_pending))) (at end (check_pantry_done)))
  )

  (:durative-action call_insurance
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (call_insurance_pending)) (at start (research_clinics_done)))
    :effect (and (at start (not (call_insurance_pending))) (at end (call_insurance_done)))
  )

  (:durative-action attend_exam
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (attend_exam_pending)) (at start (schedule_cleaning_done)))
    :effect (and (at start (not (attend_exam_pending))) (at end (attend_exam_done)))
  )

  (:durative-action order_mouthguard
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (order_mouthguard_pending))
    :effect (and (at start (not (order_mouthguard_pending))) (at end (order_mouthguard_done)))
  )

  (:durative-action pickup_mouthguard
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pickup_mouthguard_pending)) (at start (order_mouthguard_done)))
    :effect (and (at start (not (pickup_mouthguard_pending))) (at end (pickup_mouthguard_done)))
  )

  (:durative-action read_rinse_instructions
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (read_rinse_instructions_pending)) (at start (consult_dentist_done)))
    :effect (and (at start (not (read_rinse_instructions_pending))) (at end (read_rinse_instructions_done)))
  )

  (:durative-action setup_flosser
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (setup_flosser_pending)) (at start (buy_flosser_done)))
    :effect (and (at start (not (setup_flosser_pending))) (at end (setup_flosser_done)))
  )

  (:durative-action apply_sealants
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (apply_sealants_pending)) (at start (arrive_office_done)))
    :effect (and (at start (not (apply_sealants_pending))) (at end (apply_sealants_done)))
  )

  (:durative-action ask_neighbors
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (ask_neighbors_pending))
    :effect (and (at start (not (ask_neighbors_pending))) (at end (ask_neighbors_done)))
  )

  (:durative-action consult_dentist
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (consult_dentist_pending)) (at start (supervise_brushing_done)))
    :effect (and (at start (not (consult_dentist_pending))) (at end (consult_dentist_done)))
  )

  (:durative-action supervise_brushing
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (supervise_brushing_pending)) (at start (watch_video_done)) (at start (fill_prescription_done)))
    :effect (and (at start (not (supervise_brushing_pending))) (at end (supervise_brushing_done)))
  )

  (:durative-action arrive_office
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (arrive_office_pending))
    :effect (and (at start (not (arrive_office_pending))) (at end (arrive_office_done)))
  )
)
