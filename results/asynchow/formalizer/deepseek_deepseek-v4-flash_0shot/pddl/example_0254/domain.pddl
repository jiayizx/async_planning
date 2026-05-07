(define (domain snowball)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (found_snow)
    (formed_core)
    (reinforced)
    (added_layer)
    (refined)
    (found_target)
  )
  
  (:durative-action do_step1
    :duration (= ?duration 5)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (found_snow)))
  )
  
  (:durative-action do_step2
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step2)) (at start (found_snow)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (formed_core)))
  )
  
  (:durative-action do_step3
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step3)) (at start (added_layer)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (reinforced)))
  )
  
  (:durative-action do_step4
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step4)) (at start (formed_core)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (added_layer)))
  )
  
  (:durative-action do_step5
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step5)) (at start (reinforced)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (refined)))
  )
  
  (:durative-action do_step6
    :duration (= ?duration 1)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (found_target)))
  )
)