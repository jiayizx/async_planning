(define (domain cherry_pie_filling)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (crust_layered)
    (filling_thawed)
    (filling_unwrapped)
    (top_crust_added)
    (pie_baked)
  )

  (:durative-action layer_crust
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crust_layered)))
  )

  (:durative-action thaw_and_add_filling
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (crust_layered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filling_thawed)))
  )

  (:durative-action unwrap_filling
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (crust_layered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filling_unwrapped)))
  )

  (:durative-action add_top_crust
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (filling_thawed)) (at start (filling_unwrapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (top_crust_added)))
  )

  (:durative-action bake_pie
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (top_crust_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pie_baked)))
  )
)