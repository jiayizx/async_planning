(define (domain cooking_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (food_bought)
    (videos_found)
    (videos_watched)
    (ingredients_cut)
    (meal_assembled)
  )

  (:durative-action buy_food
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_bought)))
  )

  (:durative-action lookup_videos
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_found)))
  )

  (:durative-action watch_videos
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (videos_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_watched)))
  )

  (:durative-action cut_ingredients
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (food_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_cut)))
  )

  (:durative-action assemble_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_assembled)))
  )
)