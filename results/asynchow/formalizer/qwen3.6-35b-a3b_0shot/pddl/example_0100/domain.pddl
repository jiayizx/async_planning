(define (domain save_vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (budget_ready)
    (work_done)
    (groceries_saved)
    (alcohol_saved)
    (eating_out_saved))
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (budget_ready))))
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step2)) (at start (budget_ready)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (work_done))))
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step3)) (at start (budget_ready)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (groceries_saved))))
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step4)) (at start (budget_ready)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (alcohol_saved))))
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step5)) (at start (budget_ready)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (eating_out_saved))))
)