(define (domain knit-blanket)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (pattern_and_yarn_calculated)
    (needles_purchased)
    (main_body_knitted)
    (initial_row_cast_on)
    (loose_ends_woven)
    (wool_yarn_bought)
    (yarn_wound)
    (blocking_techniques_researched)
    (sample_swatch_washed)
    (blanket_steam_blocked)
  )

  (:durative-action choose_pattern_and_calculate_yarn
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pattern_and_yarn_calculated)))
  )

  (:durative-action purchase_circular_needles
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (needles_purchased)))
  )

  (:durative-action knit_main_body
    :parameters (?s - step)
    :duration (= ?duration 144000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (initial_row_cast_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (main_body_knitted)))
  )

  (:durative-action cast_on_initial_row
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (wool_yarn_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_row_cast_on)))
  )

  (:durative-action weave_loose_ends
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (yarn_wound)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (loose_ends_woven)))
  )

  (:durative-action buy_wool_yarn
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (pattern_and_yarn_calculated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wool_yarn_bought)))
  )

  (:durative-action wind_yarn_hanks
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (needles_purchased))
      (at start (sample_swatch_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (yarn_wound)))
  )

  (:durative-action research_blocking_techniques
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (blocking_techniques_researched)))
  )

  (:durative-action wash_sample_swatch
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sample_swatch_washed)))
  )

  (:durative-action steam_block_blanket
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (blocking_techniques_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (blanket_steam_blocked)))
  )
)