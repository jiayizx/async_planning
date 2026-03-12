(define (problem treat-diarrhea-lovebirds-problem)
  (:domain treat-diarrhea-lovebirds)
  (:init
    (look_for_watery_feces_pending)
    (look_for_other_symptoms_pending)
    (seek_medical_attention_pending)
  )
  (:goal (and
    (look_for_watery_feces_done)
    (look_for_other_symptoms_done)
    (seek_medical_attention_done)
  ))
)
