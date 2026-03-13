(define (domain buy_fishing_rod)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
  )

  (:durative-action do_step1_make_note_of_employee
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step1_pending)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_pay_for_item
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step2_pending)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_store_receipt
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step3_pending) (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )
)
