(define (domain lower_androgen)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (tested)
               (bc_consulted)
               (hypoglycemic_med)
               (anti_androgen_med))
  (:durative-action do_step1
    :parameters ()
    :duration 14
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (tested))))
  (:durative-action do_step2
    :parameters ()
    :duration 90
    :condition (and (at start (step_pending step2))
                    (at start (tested)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (bc_consulted))))
  (:durative-action do_step3
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step3))
                    (at start (tested)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (hypoglycemic_med))))
  (:durative-action do_step4
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step4))
                    (at start (tested)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (anti_androgen_med))))
)