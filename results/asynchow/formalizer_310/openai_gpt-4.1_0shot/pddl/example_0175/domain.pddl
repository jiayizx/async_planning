(define (domain cow_pregnancy_diagnosis)
  (:requirements :durative-actions)
  (:predicates
    (observe_behaviour_pending)
    (observe_behaviour_done)
    (pay_attention_pending)
    (pay_attention_done)
    (fetal_responsiveness_pending)
    (fetal_responsiveness_done)
    (scientific_diagnosis_pending)
    (scientific_diagnosis_done)
  )

  ;; Step 1: Observe the behaviour of cows and heifers. (2 months = 5184000 seconds)
  (:durative-action observe_behaviour
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (at start (observe_behaviour_pending))
    :effect (and
      (at start (not (observe_behaviour_pending)))
      (at end (observe_behaviour_done))
    )
  )

  ;; Step 2: Pay attention to physical changes of cows and heifers. (3 months = 7776000 seconds)
  (:durative-action pay_attention
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (pay_attention_pending))
    :effect (and
      (at start (not (pay_attention_pending)))
      (at end (pay_attention_done))
    )
  )

  ;; Step 3: Fetal responsiveness to physical or observational pregnancy testing. (1 month = 2592000 seconds)
  (:durative-action fetal_responsiveness
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and
      (at start (fetal_responsiveness_pending))
      (at start (scientific_diagnosis_done))
    )
    :effect (and
      (at start (not (fetal_responsiveness_pending)))
      (at end (fetal_responsiveness_done))
    )
  )

  ;; Step 4: Perform an accurate scientific pregnancy diagnosis to confirm observations. (2 weeks = 1209600 seconds)
  (:durative-action scientific_diagnosis
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (scientific_diagnosis_pending))
      (at start (observe_behaviour_done))
      (at start (pay_attention_done))
    )
    :effect (and
      (at start (not (scientific_diagnosis_pending)))
      (at end (scientific_diagnosis_done))
    )
  )
)
