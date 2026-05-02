(define (domain hedgehog-care)
  (:requirements :durative-actions)
  (:predicates
    (recognize_symptoms_pending)
    (recognize_symptoms_done)
    (find_vet_pending)
    (find_vet_done)
    (get_diagnosis_pending)
    (get_diagnosis_done)
    (discuss_care_plan_pending)
    (discuss_care_plan_done)
  )

  (:durative-action recognize_symptoms
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (recognize_symptoms_pending))
    :effect (and
      (at start (not (recognize_symptoms_pending)))
      (at end (recognize_symptoms_done))
    )
  )

  (:durative-action find_vet
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (find_vet_pending))
    :effect (and
      (at start (not (find_vet_pending)))
      (at end (find_vet_done))
    )
  )

  (:durative-action get_diagnosis
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (get_diagnosis_pending))
      (at start (recognize_symptoms_done))
      (at start (find_vet_done))
    )
    :effect (and
      (at start (not (get_diagnosis_pending)))
      (at end (get_diagnosis_done))
    )
  )

  (:durative-action discuss_care_plan
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (discuss_care_plan_pending))
      (at start (get_diagnosis_done))
    )
    :effect (and
      (at start (not (discuss_care_plan_pending)))
      (at end (discuss_care_plan_done))
    )
  )
)
