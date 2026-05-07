(define (domain asparagus_grilling)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (plated) (grill_preheated) (on_grill) (seasoned) (asparagus_out)
    (garnished) (packaging_disposed) (grill_cleaned) (removed) (rinsed)
    (snapped) (dried) (seared) (platter_prepared) (temp_monitored))
  (:durative-action do_step1 :parameters (?s - step) :duration 30
    :condition (and (at start (step_pending ?s)) (at start (on_grill)) (at start (garnished)) (at start (removed)) (at start (platter_prepared)) (at start (temp_monitored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plated))))
  (:durative-action do_step2 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (grill_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_preheated))))
  (:durative-action do_step3 :parameters (?s - step) :duration 60
    :condition (and (at start (step_pending ?s)) (at start (grill_preheated)) (at start (seasoned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (on_grill))))
  (:durative-action do_step4 :parameters (?s - step) :duration 120
    :condition (and (at start (step_pending ?s)) (at start (rinsed)) (at start (snapped)) (at start (dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoned))))
  (:durative-action do_step5 :parameters (?s - step) :duration 10
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (asparagus_out))))
  (:durative-action do_step6 :parameters (?s - step) :duration 15
    :condition (and (at start (step_pending ?s)) (at start (removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garnished))))
  (:durative-action do_step7 :parameters (?s - step) :duration 45
    :condition (and (at start (step_pending ?s)) (at start (asparagus_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packaging_disposed))))
  (:durative-action do_step8 :parameters (?s - step) :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_cleaned))))
  (:durative-action do_step9 :parameters (?s - step) :duration 60
    :condition (and (at start (step_pending ?s)) (at start (seared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (removed))))
  (:durative-action do_step10 :parameters (?s - step) :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rinsed))))
  (:durative-action do_step11 :parameters (?s - step) :duration 120
    :condition (and (at start (step_pending ?s)) (at start (asparagus_out)) (at start (rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snapped))))
  (:durative-action do_step12 :parameters (?s - step) :duration 60
    :condition (and (at start (step_pending ?s)) (at start (asparagus_out)) (at start (rinsed)) (at start (snapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried))))
  (:durative-action do_step13 :parameters (?s - step) :duration 480
    :condition (and (at start (step_pending ?s)) (at start (grill_preheated)) (at start (on_grill)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seared))))
  (:durative-action do_step14 :parameters (?s - step) :duration 120
    :condition (and (at start (step_pending ?s)) (at start (dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platter_prepared))))
  (:durative-action do_step15 :parameters (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (grill_preheated)) (at start (on_grill)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temp_monitored))))
)