(define (domain add_large_animal)
  (:requirements :durative-actions)
  (:predicates
    (step1_call_pending)
    (step1_call_done)
    (step2_drive_pending)
    (step2_drive_done)
    (step3_paperwork_pending)
    (step3_paperwork_done)
    (step4_setup_area_pending)
    (step4_setup_area_done)
    (step5_receive_pending)
    (step5_receive_done)
  )

  (:durative-action do_step1_call
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step1_call_pending))
    :effect (and (at start (not (step1_call_pending))) (at end (step1_call_done)))
  )

  (:durative-action do_step2_drive
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (step2_drive_pending)) (at start (step1_call_done)))
    :effect (and (at start (not (step2_drive_pending))) (at end (step2_drive_done)))
  )

  (:durative-action do_step3_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step3_paperwork_pending)) (at start (step2_drive_done)))
    :effect (and (at start (not (step3_paperwork_pending))) (at end (step3_paperwork_done)))
  )

  (:durative-action do_step4_setup_area
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step4_setup_area_pending)) (at start (step2_drive_done)))
    :effect (and (at start (not (step4_setup_area_pending))) (at end (step4_setup_area_done)))
  )

  (:durative-action do_step5_receive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_receive_pending)) (at start (step3_paperwork_done)))
    :effect (and (at start (not (step5_receive_pending))) (at end (step5_receive_done)))
  )
)
