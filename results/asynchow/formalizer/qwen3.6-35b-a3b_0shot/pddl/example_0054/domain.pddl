(define (domain lollipops_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (recipes_found)
    (molds_bought)
    (mixture_made)
    (mixture_poured)
    (ingredients_bought)
    (candy_hardened))
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (recipes_found))))
    
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (recipes_found)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (molds_bought))))
    
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (molds_bought)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (mixture_made))))
    
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (mixture_made)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (mixture_poured))))
    
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (recipes_found)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (ingredients_bought))))
    
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (mixture_poured)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (candy_hardened))))
)