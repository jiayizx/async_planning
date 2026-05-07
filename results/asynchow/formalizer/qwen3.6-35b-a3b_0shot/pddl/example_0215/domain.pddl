(define (domain freeze_watermelon)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (syrup_boiled)
    (syrup_chilled)
    (combined)
    (covered)
    (frozen))
  (:durative-action do_step1
    :duration 300
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end syrup_boiled)))
  (:durative-action do_step2
    :duration 3600
    :condition (and (at start (step_pending step2))
                    (at start syrup_boiled))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end syrup_chilled)))
  (:durative-action do_step3
    :duration 600
    :condition (and (at start (step_pending step3))
                    (at start syrup_chilled)
                    (at start covered))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end combined)))
  (:durative-action do_step4
    :duration 60
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end covered)))
  (:durative-action do_step5
    :duration 31104000
    :condition (and (at start (step_pending step5))
                    (at start combined))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end frozen)))
)