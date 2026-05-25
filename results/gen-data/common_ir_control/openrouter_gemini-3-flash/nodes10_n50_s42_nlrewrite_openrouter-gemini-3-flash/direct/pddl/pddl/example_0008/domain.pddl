(define (domain roast_turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased)
    (peeled)
    (scrubbed)
    (tossed)
    (preheated)
    (sliced)
    (roasted)
    (cooled)
    (served)
    (garnished)
  )

  (:durative-action purchase_turnips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased)))
  )

  (:durative-action peel_turnips
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peeled)))
  )

  (:durative-action scrub_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrubbed)))
  )

  (:durative-action toss_turnips
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tossed)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preheated)))
  )

  (:durative-action slice_turnips
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sliced)))
  )

  (:durative-action roast_turnips
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roasted)))
  )

  (:durative-action cool_turnips
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cooled)))
  )

  (:durative-action serve_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (roasted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served)))
  )

  (:durative-action garnish_turnips
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cooled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garnished)))
  )
)