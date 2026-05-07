(define (domain diarrhea_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (feces_identified)
    (symptoms_checked)
    (medical_attention_sought)
  )

  (:durative-action identify_diarrhea
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (feces_identified))
    )
  )

  (:durative-action check_symptoms
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (symptoms_checked))
    )
  )

  (:durative-action seek_medical_attention
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (feces_identified))
      (at start (symptoms_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medical_attention_sought))
    )
  )
)