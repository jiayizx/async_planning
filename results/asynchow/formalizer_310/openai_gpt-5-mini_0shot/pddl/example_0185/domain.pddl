(define (domain care-hedgehog)
  (:requirements :durative-actions)
  (:predicates
    (recognize_pending) (recognize_done)
    (findvet_pending)  (findvet_done)
    (diagnose_pending) (diagnose_done)
    (discuss_pending)  (discuss_done)
  )

  (:durative-action recognize_symptoms
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (recognize_pending))
    :effect (and (at start (not (recognize_pending))) (at end (recognize_done)))
  )

  (:durative-action find_vet
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (findvet_pending))
    :effect (and (at start (not (findvet_pending))) (at end (findvet_done)))
  )

  (:durative-action get_diagnosis
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (diagnose_pending)) (at start (recognize_done)) (at start (findvet_done)))
    :effect (and (at start (not (diagnose_pending))) (at end (diagnose_done)))
  )

  (:durative-action discuss_care_plan
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (discuss_pending)) (at start (diagnose_done)))
    :effect (and (at start (not (discuss_pending))) (at end (discuss_done)))
  )
)
