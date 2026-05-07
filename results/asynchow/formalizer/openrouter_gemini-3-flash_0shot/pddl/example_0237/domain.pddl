(define (domain cook_sea_urchin)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (located)
    (opened)
    (scooped)
    (preheated)
    (served)
  )

  (:durative-action locate_urchin
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (located)))
  )

  (:durative-action cut_opening
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (opened)))
  )

  (:durative-action scoop_tongues
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scooped)))
  )

  (:durative-action preheat_grill
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preheated)))
  )

  (:durative-action serve_urchin
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (scooped)) (at start (preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served)))
  )
)