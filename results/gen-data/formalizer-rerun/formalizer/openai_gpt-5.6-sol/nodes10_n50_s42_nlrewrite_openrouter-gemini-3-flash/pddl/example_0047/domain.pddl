(define (domain kilogram-to-pounds)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_done ?s - step)
    (locate_scale_pending)
    (record_weight_pending)
    (open_calculator_pending)
    (type_factor_pending)
    (read_kilograms_pending)
    (search_formula_pending)
    (multiply_value_pending)
    (check_calibration_pending)
    (clear_history_pending)
    (find_logbook_pending)
    (scale_located)
    (weight_recorded)
    (calculator_opened)
    (factor_entered)
    (kilogram_value_read)
    (formula_found)
    (conversion_completed)
    (calibration_checked)
    (history_cleared)
    (logbook_found)
  )

  (:durative-action locate_digital_scale
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (locate_scale_pending))
    :effect (and
      (at start (not (locate_scale_pending)))
      (at end (step_done ?s))
      (at end (scale_located))
    )
  )

  (:durative-action record_final_weight
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (record_weight_pending))
      (at start (logbook_found))
    )
    :effect (and
      (at start (not (record_weight_pending)))
      (at end (step_done ?s))
      (at end (weight_recorded))
    )
  )

  (:durative-action open_calculator_app
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (open_calculator_pending))
      (at start (formula_found))
    )
    :effect (and
      (at start (not (open_calculator_pending)))
      (at end (step_done ?s))
      (at end (calculator_opened))
    )
  )

  (:durative-action type_conversion_factor
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (type_factor_pending))
      (at start (calculator_opened))
    )
    :effect (and
      (at start (not (type_factor_pending)))
      (at end (step_done ?s))
      (at end (factor_entered))
    )
  )

  (:durative-action read_kilogram_value
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (read_kilograms_pending))
      (at start (scale_located))
    )
    :effect (and
      (at start (not (read_kilograms_pending)))
      (at end (step_done ?s))
      (at end (kilogram_value_read))
    )
  )

  (:durative-action search_conversion_formula
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (search_formula_pending))
    :effect (and
      (at start (not (search_formula_pending)))
      (at end (step_done ?s))
      (at end (formula_found))
    )
  )

  (:durative-action multiply_kilogram_value
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (multiply_value_pending))
      (at start (factor_entered))
      (at start (kilogram_value_read))
      (at start (formula_found))
    )
    :effect (and
      (at start (not (multiply_value_pending)))
      (at end (step_done ?s))
      (at end (conversion_completed))
    )
  )

  (:durative-action check_scale_calibration
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (check_calibration_pending))
      (at start (kilogram_value_read))
    )
    :effect (and
      (at start (not (check_calibration_pending)))
      (at end (step_done ?s))
      (at end (calibration_checked))
    )
  )

  (:durative-action clear_calculation_history
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (clear_history_pending))
      (at start (kilogram_value_read))
      (at start (formula_found))
    )
    :effect (and
      (at start (not (clear_history_pending)))
      (at end (step_done ?s))
      (at end (history_cleared))
    )
  )

  (:durative-action find_pen_and_logbook
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (find_logbook_pending))
    :effect (and
      (at start (not (find_logbook_pending)))
      (at end (step_done ?s))
      (at end (logbook_found))
    )
  )
)