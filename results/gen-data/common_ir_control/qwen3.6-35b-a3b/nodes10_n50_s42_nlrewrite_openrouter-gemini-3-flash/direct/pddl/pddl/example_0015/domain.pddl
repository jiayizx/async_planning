(define (domain garden_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done))
  
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s2_done) (at start s6_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s1_done)))
    
  (:durative-action do_step2
    :duration (= ?duration 10800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s8_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s2_done)))
    
  (:durative-action do_step3
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s3_done)))
    
  (:durative-action do_step4
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s6_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s4_done)))
    
  (:durative-action do_step5
    :duration (= ?duration 2700)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s7_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s5_done)))
    
  (:durative-action do_step6
    :duration (= ?duration 5400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s5_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s6_done)))
    
  (:durative-action do_step7
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s3_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s7_done)))
    
  (:durative-action do_step8
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s8_done)))
    
  (:durative-action do_step9
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s9_done)))
    
  (:durative-action do_step10
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start s9_done))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end s10_done)))
)