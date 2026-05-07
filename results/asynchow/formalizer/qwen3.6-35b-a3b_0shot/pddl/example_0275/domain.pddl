(define (domain shrink_rings)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (cleaned)
               (silicone_applied)
               (silicone_smoothed)
               (silicone_dried)
               (ring_tried_on))
  (:durative-action do_step1
    :duration 5
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (cleaned))))
  (:durative-action do_step2
    :duration 2
    :condition (and (at start (step_pending step2)) (at start (cleaned)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (silicone_applied))))
  (:durative-action do_step3
    :duration 3
    :condition (and (at start (step_pending step3)) (at start (silicone_applied)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (silicone_smoothed))))
  (:durative-action do_step4
    :duration 30
    :condition (and (at start (step_pending step4)) (at start (silicone_applied)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (silicone_dried))))
  (:durative-action do_step5
    :duration 2
    :condition (and (at start (step_pending step5)) (at start (silicone_dried)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (ring_tried_on))))
)