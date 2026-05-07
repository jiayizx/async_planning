(define (domain coffee_stain_removal)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lemon_tried)
    (mixture_prepared)
    (soda_used)
    (moisture_removed_initial)
    (solution_tested)
    (solution_applied)
    (area_blotted)
    (area_flushed)
    (moisture_removed_final)
    (carpet_dried)
  )

  (:durative-action try_lemon_juice
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_tried)))
  )

  (:durative-action mix_vinegar_soap
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_prepared)))
  )

  (:durative-action use_club_soda
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soda_used)))
  )

  (:durative-action remove_excess_moisture_initial
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (lemon_tried)) (at start (mixture_prepared)) (at start (soda_used)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moisture_removed_initial)))
  )

  (:durative-action test_solution
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (lemon_tried)) (at start (mixture_prepared)) (at start (soda_used)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solution_tested)))
  )

  (:durative-action blot_area
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (moisture_removed_initial)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_blotted)))
  )

  (:durative-action apply_solution
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (solution_tested)) (at start (area_blotted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solution_applied)))
  )

  (:durative-action flush_area
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (solution_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_flushed)))
  )

  (:durative-action remove_excess_moisture_final
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (area_flushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moisture_removed_final)))
  )

  (:durative-action allow_dry
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (moisture_removed_final)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carpet_dried)))
  )
)