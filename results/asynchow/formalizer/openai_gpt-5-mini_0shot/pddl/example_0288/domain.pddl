(define (domain pcc_application)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
    (step6_pending)
    (step6_done)
    (visit_done)
    (register_done)
    (filled_done)
    (paid_done)
    (scheduled_done)
    (printed_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 10)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (visit_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 10)
    :condition (and (at start (step2_pending)) (at start (visit_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (register_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 20)
    :condition (and (at start (step3_pending)) (at start (register_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (filled_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 5)
    :condition (and (at start (step4_pending)) (at start (filled_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (paid_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 10)
    :condition (and (at start (step5_pending)) (at start (filled_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (scheduled_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 2)
    :condition (and (at start (step6_pending)) (at start (scheduled_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)) (at end (printed_done)))
  )
)
