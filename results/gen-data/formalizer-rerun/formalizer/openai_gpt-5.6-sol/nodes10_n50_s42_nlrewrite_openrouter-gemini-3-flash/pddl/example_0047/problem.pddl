(define (problem kilogram-to-pounds-problem)
  (:domain kilogram-to-pounds)

  (:objects
    step1 step2 step3 step4 step5
    step6 step7 step8 step9 step10 - step
  )

  (:init
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
  )

  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (step_done step6)
      (step_done step7)
      (step_done step8)
      (step_done step9)
      (step_done step10)
      (conversion_completed)
    )
  )
)