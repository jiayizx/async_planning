(define (domain decluttering)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (declutter_done)
    (research_done)
    (purchase_done)
    (shred_done)
    (sort_done)
    (clean_done)
    (load_done)
    (drive_done)
    (organize_done)
    (write_done))
  
  (:durative-action do_declutter
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (declutter_done))))

  (:durative-action do_research
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sort_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (research_done))))

  (:durative-action do_purchase
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (purchase_done))))

  (:durative-action do_shred
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (declutter_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shred_done))))

  (:durative-action do_sort
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sort_done))))

  (:durative-action do_clean
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (shred_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clean_done))))

  (:durative-action do_load
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (write_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (load_done))))

  (:durative-action do_drive
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (load_done)) (at start (write_done)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (drive_done))))

  (:durative-action do_organize
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (drive_done)) (at start (declutter_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (organize_done))))

  (:durative-action do_write
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (purchase_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (write_done))))
)