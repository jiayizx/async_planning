(define (domain buy_piano)
  (:requirements :durative-actions)
  (:predicates
    (step1_visit_pending)
    (step1_visit_done)
    (step2_decide_pending)
    (step2_decide_done)
    (step3_pay_pending)
    (step3_pay_done)
    (step4_arrive_pending)
    (step4_arrive_done)
    (step5_try_pending)
    (step5_try_done)
  )

  (:durative-action step1_visit
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step1_visit_pending))
    :effect (and (at start (not (step1_visit_pending))) (at end (step1_visit_done)))
  )

  (:durative-action step2_decide
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step2_decide_pending)) (at start (step1_visit_done)))
    :effect (and (at start (not (step2_decide_pending))) (at end (step2_decide_done)))
  )

  (:durative-action step3_pay
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step3_pay_pending)) (at start (step2_decide_done)) (at start (step5_try_done)))
    :effect (and (at start (not (step3_pay_pending))) (at end (step3_pay_done)))
  )

  (:durative-action step4_arrive
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step4_arrive_pending)) (at start (step3_pay_done)))
    :effect (and (at start (not (step4_arrive_pending))) (at end (step4_arrive_done)))
  )

  (:durative-action step5_try
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step5_try_pending)) (at start (step1_visit_done)))
    :effect (and (at start (not (step5_try_pending))) (at end (step5_try_done)))
  )
)
