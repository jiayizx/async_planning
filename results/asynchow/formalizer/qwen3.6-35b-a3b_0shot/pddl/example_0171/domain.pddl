(define (domain diagnose_patellar)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (exam_done)
               (xray_done)
               (mild_managed)
               (surgery_done))
  (:durative-action do_step1
    :duration 1800
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (exam_done))))
  (:durative-action do_step2
    :duration 3600
    :condition (and (at start (step_pending step2))
                    (at start (exam_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (xray_done))))
  (:durative-action do_step3
    :duration 2419200
    :condition (and (at start (step_pending step3))
                    (at start (xray_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (mild_managed))))
  (:durative-action do_step4
    :duration 10800
    :condition (and (at start (step_pending step4))
                    (at start (xray_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (surgery_done))))
)