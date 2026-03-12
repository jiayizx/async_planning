(define (domain child_safety)
  (:requirements :durative-actions)
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
  )

  (:durative-action attend_seminar
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action review_checklist
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action research_grooming
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action observe_child
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action document_incidents
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)