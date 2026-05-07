(define (domain roast_beef_dinner)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (table_set)
    (meat_rested)
    (oven_preheated)
    (butcher_visited)
    (silver_polished)
    (beef_roasted)
    (beef_carved)
    (meat_transferred)
    (beef_seasoned)
    (roast_removed)
  )

  (:durative-action set_table
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (silver_polished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_set)))
  )

  (:durative-action rest_meat
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (beef_seasoned)) (at start (roast_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_rested)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action visit_butcher
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butcher_visited)))
  )

  (:durative-action polish_silver
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silver_polished)))
  )

  (:durative-action roast_beef
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_roasted)))
  )

  (:durative-action carve_beef
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (meat_transferred)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_carved)))
  )

  (:durative-action transfer_meat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (meat_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_transferred)))
  )

  (:durative-action season_beef
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (butcher_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_seasoned)))
  )

  (:durative-action remove_roast
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (beef_roasted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roast_removed)))
  )
)