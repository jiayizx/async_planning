(define (domain hedgehog_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (symptoms_recognized)
               (vet_found)
               (diagnosis_obtained)
               (care_plan_discussed))
  (:durative-action step1
    :duration 86400
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (symptoms_recognized))))
  (:durative-action step2
    :duration 172800
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (vet_found))))
  (:durative-action step3
    :duration 1209600
    :condition (and (at start (step_pending step3)) (at start (symptoms_recognized)) (at start (vet_found)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (diagnosis_obtained))))
  (:durative-action step4
    :duration 172800
    :condition (and (at start (step_pending step4)) (at start (diagnosis_obtained)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (care_plan_discussed))))
)