(define (domain remove_lead_water)
  (:requirements :durative-actions)
  (:predicates
    (find_lab_pending)
    (find_lab_done)
    (collect_samples_pending)
    (collect_samples_done)
    (deliver_and_review_pending)
    (deliver_and_review_done)
  )

  (:durative-action find_lab
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (find_lab_pending))
    :effect (and (at start (not (find_lab_pending))) (at end (find_lab_done)))
  )

  (:durative-action collect_samples
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (collect_samples_pending))
    :effect (and (at start (not (collect_samples_pending))) (at end (collect_samples_done)))
  )

  (:durative-action deliver_and_review
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (deliver_and_review_pending)) (at start (find_lab_done)) (at start (collect_samples_done)))
    :effect (and (at start (not (deliver_and_review_pending))) (at end (deliver_and_review_done)))
  )
)
