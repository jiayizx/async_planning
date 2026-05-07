(define (domain season_tilapia)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (butter_melted)
    (lemon_prepared)
    (sauce_whisked)
    (sauce_poured)
    (fish_baked)
  )

  (:durative-action melt_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_melted)))
  )

  (:durative-action prepare_lemon
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_prepared)))
  )

  (:durative-action whisk_sauce
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (butter_melted)) (at start (lemon_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_whisked)))
  )

  (:durative-action pour_sauce
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (sauce_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_poured)))
  )

  (:durative-action bake_fish
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (sauce_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_baked)))
  )
)