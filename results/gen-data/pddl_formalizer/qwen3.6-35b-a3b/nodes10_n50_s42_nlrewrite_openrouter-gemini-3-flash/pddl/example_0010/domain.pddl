(define (domain wimbledon)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (hotel_booked)
    (app_downloaded)
    (account_created)
    (ballot_entered)
    (membership_joined)
    (tickets_printed)
    (results_announced)
    (tickets_paid)
    (identity_verified)
    (marketing_opted))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (tickets_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_booked))))
  
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (marketing_opted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (app_downloaded))))
  
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (account_created))))
  
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (identity_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ballot_entered))))
  
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (identity_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (membership_joined))))
  
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (tickets_paid)) (at start (marketing_opted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_printed))))
  
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (marketing_opted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (results_announced))))
  
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (ballot_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_paid))))
  
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (results_announced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (identity_verified))))
  
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (account_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marketing_opted))))
)