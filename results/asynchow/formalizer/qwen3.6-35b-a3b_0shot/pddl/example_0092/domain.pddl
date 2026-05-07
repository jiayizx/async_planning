(define (domain add_large_animal)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (call_done)
               (drive_done)
               (paperwork_done)
               (area_ready)
               (animal_received))
  (:durative-action do_step1
    :duration 900
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (call_done))))
  (:durative-action do_step2
    :duration 2100
    :condition (and (at start (step_pending step2))
                    (at start (call_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (drive_done))))
  (:durative-action do_step3
    :duration 600
    :condition (and (at start (step_pending step3))
                    (at start (drive_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (paperwork_done))))
  (:durative-action do_step4
    :duration 1800
    :condition (and (at start (step_pending step4))
                    (at start (drive_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (area_ready))))
  (:durative-action do_step5
    :duration 1800
    :condition (and (at start (step_pending step5))
                    (at start (paperwork_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (animal_received))))
)