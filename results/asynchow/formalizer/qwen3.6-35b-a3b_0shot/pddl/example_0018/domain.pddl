(define (domain school_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (list_supplies_ready)
    (supplies_bought)
    (books_list_ready)
    (books_bought)
    (supplies_organized)
    (backpack_packed))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_supplies_ready))))
  
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (list_supplies_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought))))
  
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_bought)) (at start (books_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_organized))))
  
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (books_list_ready))))
  
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (books_list_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (books_bought))))
  
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (supplies_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_packed))))
)