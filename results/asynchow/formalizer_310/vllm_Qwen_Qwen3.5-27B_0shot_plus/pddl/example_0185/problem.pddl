(define (problem hedgehog_care_problem)
  (:domain hedgehog_care)
  
  (:init
    (recognize_symptoms_pending)
    (find_vet_pending)
    (get_diagnosis_pending)
    (discuss_plan_pending)
  )

  (:goal (and
    (recognize_symptoms_done)
    (find_vet_done)
    (get_diagnosis_done)
    (discuss_plan_done)
  ))
)
