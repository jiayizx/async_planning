(define (domain kill_weeds)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (vinegar_bought)
               (soap_added)
               (salt_added))
  (:durative-action do_step1
    :duration 300
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (vinegar_bought))))
  (:durative-action do_step2
    :duration 120
    :condition (and (at start (step_pending step2))
                    (at start (vinegar_bought)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (soap_added))))
  (:durative-action do_step3
    :duration 180
    :condition (and (at start (step_pending step3))
                    (at start (vinegar_bought)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (salt_added))))
)