(define (domain kg_to_lbs_conversion)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (scale_located)
    (formula_found)
    (calculator_opened)
    (factor_typed)
    (weight_read)
    (calibrated)
    (multiplied)
    (history_cleared)
    (log_found)
    (weight_recorded)
  )

  (:durative-action locate_scale
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scale_located)))
  )

  (:durative-action search_formula
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (formula_found)))
  )

  (:durative-action open_calculator
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calculator_opened)))
  )

  (:durative-action type_factor
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (calculator_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (factor_typed)))
  )

  (:durative-action read_weight
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (scale_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_read)))
  )

  (:durative-action check_calibration
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (weight_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calibrated)))
  )

  (:durative-action multiply_values
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (factor_typed)) (at start (weight_read)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (multiplied)))
  )

  (:durative-action clear_history
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (weight_read)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (history_cleared)))
  )

  (:durative-action find_log
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (log_found)))
  )

  (:durative-action record_weight
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (log_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_recorded)))
  )
)