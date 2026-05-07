(define (domain knitting_blanket)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pattern_chosen)
    (needles_purchased)
    (yarn_purchased)
    (yarn_wound)
    (cast_on_done)
    (body_knitted)
    (blocking_researched)
    (swatch_washed)
    (ends_weaved)
    (blanket_blocked)
  )

  (:durative-action choose_pattern
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pattern_chosen)))
  )

  (:durative-action purchase_needles
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (needles_purchased)))
  )

  (:durative-action buy_yarn
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (pattern_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yarn_purchased)))
  )

  (:durative-action cast_on
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (yarn_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cast_on_done)))
  )

  (:durative-action knit_body
    :parameters (?s - step)
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending ?s)) (at start (cast_on_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (body_knitted)))
  )

  (:durative-action research_blocking
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blocking_researched)))
  )

  (:durative-action wash_swatch
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (swatch_washed)))
  )

  (:durative-action wind_yarn
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (needles_purchased)) (at start (swatch_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yarn_wound)))
  )

  (:durative-action weave_ends
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (yarn_wound)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ends_weaved)))
  )

  (:durative-action steam_block
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (blocking_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blanket_blocked)))
  )
)