(define (domain sloth_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (browser_opened)
    (search_done)
    (videos_selected)
    (websites_selected)
    (zoo_found))
  
  (:durative-action step1_open_browser 
    :duration 25 
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) 
                 (at end (step_done step1)) 
                 (at end (browser_opened))))
                 
  (:durative-action step2_do_search 
    :duration 35 
    :condition (and (at start (step_pending step2)) (at start (browser_opened)))
    :effect (and (at start (not (step_pending step2))) 
                 (at end (step_done step2)) 
                 (at end (search_done))))
                 
  (:durative-action step3_select_videos 
    :duration 300 
    :condition (and (at start (step_pending step3)) (at start (search_done)))
    :effect (and (at start (not (step_pending step3))) 
                 (at end (step_done step3)) 
                 (at end (videos_selected))))
                 
  (:durative-action step4_select_websites 
    :duration 120 
    :condition (and (at start (step_pending step4)) (at start (search_done)))
    :effect (and (at start (not (step_pending step4))) 
                 (at end (step_done step4)) 
                 (at end (websites_selected))))
                 
  (:durative-action step5_find_zoo 
    :duration 300 
    :condition (and (at start (step_pending step5)) 
                    (at start (videos_selected)) 
                    (at start (websites_selected)))
    :effect (and (at start (not (step_pending step5))) 
                 (at end (step_done step5)) 
                 (at end (zoo_found))))
)