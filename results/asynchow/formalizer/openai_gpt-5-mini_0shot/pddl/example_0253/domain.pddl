(define (domain buy_fishing_rod)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (noted_employee_done)
    (paid_done)
    (receipt_stored_done)
  )

  (:durative-action do_step1_make_note
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (noted_employee_done))
            )
  )

  (:durative-action do_step2_pay
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (paid_done))
            )
  )

  (:durative-action do_step3_store_receipt
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (paid_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (receipt_stored_done))
            )
  )
)
