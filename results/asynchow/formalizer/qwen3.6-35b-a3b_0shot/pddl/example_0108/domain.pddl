(define (domain yellowstone)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (attractions_look_up_done)
    (map_look_up_done)
    (drive_done)
    (entrance_arrived_done)
    (attractions_visited_done))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (attractions_look_up_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (map_look_up_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s))
                    (at start (attractions_look_up_done))
                    (at start (map_look_up_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (drive_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (drive_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (entrance_arrived_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s))
                    (at start (entrance_arrived_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (attractions_visited_done))))
)