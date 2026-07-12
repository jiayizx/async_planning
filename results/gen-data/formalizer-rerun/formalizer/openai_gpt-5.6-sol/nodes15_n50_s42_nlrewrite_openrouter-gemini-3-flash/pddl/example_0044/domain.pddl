(define (domain kitchen-lighting)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dimensions_measured)
    (fixtures_purchased)
    (dimmers_researched)
    (layout_sketched)
    (inspiration_found)
    (function_determined)
    (prices_compared)
    (styles_selected)
    (mood_board_created)
    (electrician_consulted)
    (lumens_calculated)
    (reviews_read)
    (hardware_ordered)
    (maintenance_plan_drafted)
    (budget_set))

  (:durative-action measure_dimensions
    :parameters (?s - step1_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (electrician_consulted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dimensions_measured))))

  (:durative-action purchase_fixtures
    :parameters (?s - step2_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (prices_compared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fixtures_purchased))))

  (:durative-action research_dimmers
    :parameters (?s - step3_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (styles_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dimmers_researched))))

  (:durative-action sketch_layout
    :parameters (?s - step4_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (dimensions_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (layout_sketched))))

  (:durative-action find_inspiration
    :parameters (?s - step5_type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (function_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inspiration_found))))

  (:durative-action determine_function
    :parameters (?s - step6_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (function_determined))))

  (:durative-action compare_prices
    :parameters (?s - step7_type)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prices_compared))))

  (:durative-action select_styles
    :parameters (?s - step8_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (layout_sketched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (styles_selected))))

  (:durative-action create_mood_board
    :parameters (?s - step9_type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (inspiration_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mood_board_created))))

  (:durative-action consult_electrician
    :parameters (?s - step10_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (budget_set)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (electrician_consulted))))

  (:durative-action calculate_lumens
    :parameters (?s - step11_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (dimensions_measured))
      (at start (styles_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lumens_calculated))))

  (:durative-action read_reviews
    :parameters (?s - step12_type)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reviews_read))))

  (:durative-action order_hardware
    :parameters (?s - step13_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (dimmers_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hardware_ordered))))

  (:durative-action draft_maintenance_plan
    :parameters (?s - step14_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (reviews_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (maintenance_plan_drafted))))

  (:durative-action set_budget
    :parameters (?s - step15_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (function_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (budget_set))))
)