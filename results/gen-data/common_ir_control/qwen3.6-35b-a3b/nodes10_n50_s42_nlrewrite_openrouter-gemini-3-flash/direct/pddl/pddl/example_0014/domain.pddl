(define (domain chickpea_salad_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (soaked_chickpeas)
    (diced_vegetables)
    (dressing_whisked)
    (dressing_chilled)
    (legumes_combined)
    (garnished)
    (garlic_added)
    (chickpeas_boiled)
    (salad_tossed)
    (parsley_ready))
  
  (:durative-action do_step1
    :duration (= ?duration 43200)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (soaked_chickpeas))))
  
  (:durative-action do_step2
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (diced_vegetables))))
  
  (:durative-action do_step3
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (diced_vegetables)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dressing_whisked))))
  
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (dressing_whisked)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dressing_chilled))))
  
  (:durative-action do_step5
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (chickpeas_boiled)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (legumes_combined))))
  
  (:durative-action do_step6
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (parsley_ready)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (garnished))))
  
  (:durative-action do_step7
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (dressing_chilled)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (garlic_added))))
  
  (:durative-action do_step8
    :duration (= ?duration 2700)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (soaked_chickpeas)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (chickpeas_boiled))))
  
  (:durative-action do_step9
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (diced_vegetables)) 
                    (at start (dressing_whisked)) 
                    (at start (garlic_added)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (salad_tossed))))
  
  (:durative-action do_step10
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (parsley_ready))))
)