(define (domain puff_pastry)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (shells_made)
    (baked_brie_made)
    (filled_puffs_made)
    (ham_cheese_pastry_made)
    (herb_cheese_twists_made))
  
  (:durative-action make_shells
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shells_made))))
                 
  (:durative-action make_baked_brie
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (shells_made)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (baked_brie_made))))
                 
  (:durative-action make_filled_puffs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s))
                    (at start (shells_made)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (filled_puffs_made))))
                 
  (:durative-action make_ham_cheese_pastry
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (shells_made)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (ham_cheese_pastry_made))))
                 
  (:durative-action make_herb_cheese_twists
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s))
                    (at start (shells_made)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (herb_cheese_twists_made))))
)