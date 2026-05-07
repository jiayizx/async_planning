(define (domain travel_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (internet_done)
    (research_done)
    (tickets_search_done)
    (hotel_done)
    (tickets_purchase_done)
    (packing_done)
    (driving_done))
  
  (:durative-action step1 :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (internet_done))))
  
  (:durative-action step2 :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (internet_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done))))
  
  (:durative-action step3 :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_search_done))))
  
  (:durative-action step4 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_done))))
  
  (:durative-action step5 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (tickets_search_done)) (at start (hotel_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_purchase_done))))
  
  (:durative-action step6 :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (tickets_purchase_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packing_done))))
  
  (:durative-action step7 :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (packing_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driving_done))))
)