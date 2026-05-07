(define (domain roast_beef_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (table_set)
    (roast_rested)
    (oven_preheated)
    (driven_to_shop)
    (cutlery_polished)
    (beef_roasted)
    (beef_carved)
    (meat_transferred)
    (beef_seasoned)
    (roast_removed))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start cutlery_polished))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end table_set)))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start driven_to_shop) (at start beef_seasoned) (at start roast_removed))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end roast_rested)))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end oven_preheated)))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end driven_to_shop)))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end cutlery_polished)))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start oven_preheated) (at start driven_to_shop) (at start beef_seasoned))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end beef_roasted)))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start meat_transferred))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end beef_carved)))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start roast_rested))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end meat_transferred)))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start driven_to_shop))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end beef_seasoned)))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start beef_roasted))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end roast_removed)))
)