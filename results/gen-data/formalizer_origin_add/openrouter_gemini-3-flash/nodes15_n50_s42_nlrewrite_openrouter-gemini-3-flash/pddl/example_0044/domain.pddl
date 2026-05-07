(define (domain kitchen_lighting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (function_determined)
    (budget_set)
    (electrician_consulted)
    (measurements_taken)
    (layout_sketched)
    (style_selected)
    (dimmer_researched)
    (inspiration_found)
    (mood_board_created)
    (prices_compared)
    (fixtures_purchased)
    (lumens_calculated)
    (reviews_read)
    (hardware_ordered)
    (maintenance_drafted)
  )

  (:durative-action determine_function
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (function_determined)))
  )

  (:durative-action set_budget
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_set)))
  )

  (:durative-action consult_electrician
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (electrician_consulted)))
  )

  (:durative-action measure_dimensions
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measurements_taken)))
  )

  (:durative-action sketch_layout
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)) (at start (measurements_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_sketched)))
  )

  (:durative-action select_style
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)) (at start (measurements_taken)) (at start (layout_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (style_selected)))
  )

  (:durative-action research_dimmer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)) (at start (measurements_taken)) (at start (layout_sketched)) (at start (style_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimmer_researched)))
  )

  (:durative-action look_inspiration
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspiration_found)))
  )

  (:durative-action create_mood_board
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (inspiration_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mood_board_created)))
  )

  (:durative-action compare_prices
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prices_compared)))
  )

  (:durative-action finalize_purchase
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (prices_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixtures_purchased)))
  )

  (:durative-action calculate_lumens
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)) (at start (measurements_taken)) (at start (layout_sketched)) (at start (style_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lumens_calculated)))
  )

  (:durative-action read_reviews
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reviews_read)))
  )

  (:durative-action order_hardware
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (function_determined)) (at start (budget_set)) (at start (electrician_consulted)) (at start (measurements_taken)) (at start (layout_sketched)) (at start (style_selected)) (at start (dimmer_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_ordered)))
  )

  (:durative-action draft_maintenance
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (reviews_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (maintenance_drafted)))
  )
)