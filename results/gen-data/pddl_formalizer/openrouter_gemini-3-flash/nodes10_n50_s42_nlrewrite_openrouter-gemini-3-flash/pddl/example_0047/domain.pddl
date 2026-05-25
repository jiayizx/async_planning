(define (domain weight_conversion)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (scale_located)
    (log_recorded)
    (app_opened)
    (factor_typed)
    (kg_read)
    (formula_found)
    (multiplication_done)
    (calibration_checked)
    (history_cleared)
    (log_found)
  )

  (:durative-action locate_scale
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scale_located)))
  )

  (:durative-action record_log
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (log_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (log_recorded)))
  )

  (:durative-action open_app
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (app_opened)))
  )

  (:durative-action type_factor
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (app_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (factor_typed)))
  )

  (:durative-action read_kg
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (scale_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kg_read)))
  )

  (:durative-action search_formula
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (formula_found)))
  )

  (:durative-action multiply_values
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (factor_typed)) (at start (kg_read)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (multiplication_done)))
  )

  (:durative-action check_calibration
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (kg_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calibration_checked)))
  )

  (:durative-action clear_history
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (kg_read)) (at start (formula_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (history_cleared)))
  )

  (:durative-action find_log
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (log_found)))
  )
)