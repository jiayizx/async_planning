(define (domain bus_waiting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (dest_thought)
    (bus_lookup_done)
    (map_done)
    (walk_done)
    (pass_bought)
    (pass_collected)
    (bus_on_time))
  (:durative-action do_step1 
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (dest_thought))))
  (:durative-action do_step2 
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (dest_thought)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (bus_lookup_done))))
  (:durative-action do_step3 
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (bus_lookup_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (map_done))))
  (:durative-action do_step4 
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (map_done)) (at start (pass_collected)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (walk_done))))
  (:durative-action do_step5 
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (pass_bought))))
  (:durative-action do_step6 
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (pass_bought)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (pass_collected))))
  (:durative-action do_step7 
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (walk_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (bus_on_time))))
)