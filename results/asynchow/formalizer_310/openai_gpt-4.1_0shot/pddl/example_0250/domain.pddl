(define (domain treat-diarrhea-lovebirds)
  (:requirements :durative-actions)
  (:predicates
    (look_for_watery_feces_pending)
    (look_for_watery_feces_done)
    (look_for_other_symptoms_pending)
    (look_for_other_symptoms_done)
    (seek_medical_attention_pending)
    (seek_medical_attention_done)
  )

  (:durative-action look_for_watery_feces
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (look_for_watery_feces_pending))
    :effect (and
      (at start (not (look_for_watery_feces_pending)))
      (at end (look_for_watery_feces_done))
    )
  )

  (:durative-action look_for_other_symptoms
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_for_other_symptoms_pending))
    :effect (and
      (at start (not (look_for_other_symptoms_pending)))
      (at end (look_for_other_symptoms_done))
    )
  )

  (:durative-action seek_medical_attention
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (seek_medical_attention_pending))
      (at start (look_for_watery_feces_done))
      (at start (look_for_other_symptoms_done))
    )
    :effect (and
      (at start (not (seek_medical_attention_pending)))
      (at end (seek_medical_attention_done))
    )
  )
)
