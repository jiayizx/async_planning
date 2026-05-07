(define (domain keep_cat_yard)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (fence_up)
               (pipes_on)
               (objects_removed)
               (net_attached)
               (enclosure_built))
  (:durative-action do_step1
    :parameters ()
    :duration 172800
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (fence_up))))
  (:durative-action do_step2
    :parameters ()
    :duration 10800
    :condition (and (at start (step_pending step2))
                    (at start (fence_up)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (pipes_on))))
  (:durative-action do_step3
    :parameters ()
    :duration 7200
    :condition (and (at start (step_pending step3))
                    (at start (fence_up)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (objects_removed))))
  (:durative-action do_step4
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (net_attached))))
  (:durative-action do_step5
    :parameters ()
    :duration 259200
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (enclosure_built))))
)