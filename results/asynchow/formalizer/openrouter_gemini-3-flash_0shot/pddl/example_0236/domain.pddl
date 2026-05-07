(define (domain cook_flounder)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grill_prepared)
    (fish_rested_raw)
    (fish_seasoned)
    (fish_grilled)
    (fish_ready_to_eat)
  )

  (:durative-action step1_heat_grill
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_prepared)))
  )

  (:durative-action step2_cut_and_rest
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_rested_raw)))
  )

  (:durative-action step3_rub_and_season
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (fish_rested_raw)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_seasoned)))
  )

  (:durative-action step4_grill_flounder
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (grill_prepared)) (at start (fish_seasoned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_grilled)))
  )

  (:durative-action step5_final_rest
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (fish_grilled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_ready_to_eat)))
  )
)