(define (domain move_out_town)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (packed)
    (rented)
    (loaded)
    (uhaul_started)
    (town_left))
  
  (:durative-action step1_pack
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (packed))))
                 
  (:durative-action step2_rent
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (rented))))
                 
  (:durative-action step3_load
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s))
                    (at start (packed))
                    (at start (rented)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (loaded))))
                 
  (:durative-action step4_start
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s))
                    (at start (loaded)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (uhaul_started))))
                 
  (:durative-action step5_leave
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s))
                    (at start (uhaul_started)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (town_left))))
)