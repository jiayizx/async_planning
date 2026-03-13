(define (domain kg_to_lb_conversion)
  (:requirements :durative-actions)
  (:predicates
    (locate_scale_pending)
    (locate_scale_done)
    (write_log_pending)
    (write_log_done)
    (lookup_factor_pending)
    (lookup_factor_done)
    (open_calculator_pending)
    (open_calculator_done)
    (weigh_object_pending)
    (weigh_object_done)
    (power_on_laptop_pending)
    (power_on_laptop_done)
    (multiply_pending)
    (multiply_done)
    (doublecheck_calibration_pending)
    (doublecheck_calibration_done)
    (clear_scale_pending)
    (clear_scale_done)
    (find_pen_notebook_pending)
    (find_pen_notebook_done)
  )

  (:durative-action locate_scale
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_scale_pending))
    :effect (and (at start (not (locate_scale_pending))) (at end (locate_scale_done)))
  )

  (:durative-action write_log
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (write_log_pending)) (at start (find_pen_notebook_done)) (at start (multiply_done)))
    :effect (and (at start (not (write_log_pending))) (at end (write_log_done)))
  )

  (:durative-action lookup_factor
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (lookup_factor_pending)) (at start (power_on_laptop_done)))
    :effect (and (at start (not (lookup_factor_pending))) (at end (lookup_factor_done)))
  )

  (:durative-action open_calculator
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (open_calculator_pending)) (at start (lookup_factor_done)))
    :effect (and (at start (not (open_calculator_pending))) (at end (open_calculator_done)))
  )

  (:durative-action weigh_object
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (weigh_object_pending)) (at start (locate_scale_done)))
    :effect (and (at start (not (weigh_object_pending))) (at end (weigh_object_done)))
  )

  (:durative-action power_on_laptop
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (power_on_laptop_pending))
    :effect (and (at start (not (power_on_laptop_pending))) (at end (power_on_laptop_done)))
  )

  (:durative-action multiply
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (multiply_pending)) (at start (open_calculator_done)) (at start (weigh_object_done)) (at start (power_on_laptop_done)))
    :effect (and (at start (not (multiply_pending))) (at end (multiply_done)))
  )

  (:durative-action doublecheck_calibration
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (doublecheck_calibration_pending)) (at start (weigh_object_done)))
    :effect (and (at start (not (doublecheck_calibration_pending))) (at end (doublecheck_calibration_done)))
  )

  (:durative-action clear_scale
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (clear_scale_pending)) (at start (weigh_object_done)) (at start (power_on_laptop_done)))
    :effect (and (at start (not (clear_scale_pending))) (at end (clear_scale_done)))
  )

  (:durative-action find_pen_notebook
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (find_pen_notebook_pending))
    :effect (and (at start (not (find_pen_notebook_pending))) (at end (find_pen_notebook_done)))
  )
)
