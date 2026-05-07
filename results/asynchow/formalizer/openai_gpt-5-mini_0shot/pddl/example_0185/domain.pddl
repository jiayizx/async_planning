(define (domain hedgehog-care)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (recognized_done)
    (vet_found_done)
    (diagnosis_done)
    (careplan_done)
  )

  ;; Step 1: Recognize the symptoms
  (:durative-action do_step1_recognize
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recognized_done))
    )
  )

  ;; Step 2: Find a vet with experience
  (:durative-action do_step2_find_vet
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vet_found_done))
    )
  )

  ;; Step 3: Get a diagnosis (requires step1 and step2)
  (:durative-action do_step3_diagnosis
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (recognized_done)) (at start (vet_found_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diagnosis_done))
    )
  )

  ;; Step 4: Discuss care plan with vet (requires diagnosis)
  (:durative-action do_step4_careplan
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (diagnosis_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (careplan_done))
    )
  )
)
