(define (domain service_brakes)
  (:requirements :durative-actions)
  (:predicates
    (remove_wheels_pending)
    (remove_wheels_done)
    (remove_drum_pending)
    (remove_drum_done)
    (inspect_brake_shoes_pending)
    (inspect_brake_shoes_done)
    (inspect_return_springs_pending)
    (inspect_return_springs_done)
    (change_wheel_cylinder_pending)
    (change_wheel_cylinder_done)
  )

  (:durative-action remove_wheels
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (remove_wheels_pending))
    :effect (and (at start (not (remove_wheels_pending))) (at end (remove_wheels_done)))
  )

  (:durative-action remove_drum
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (remove_drum_pending)) (at start (remove_wheels_done)))
    :effect (and (at start (not (remove_drum_pending))) (at end (remove_drum_done)))
  )

  (:durative-action inspect_brake_shoes
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (inspect_brake_shoes_pending)) (at start (remove_drum_done)))
    :effect (and (at start (not (inspect_brake_shoes_pending))) (at end (inspect_brake_shoes_done)))
  )

  (:durative-action inspect_return_springs
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (inspect_return_springs_pending)) (at start (remove_drum_done)))
    :effect (and (at start (not (inspect_return_springs_pending))) (at end (inspect_return_springs_done)))
  )

  (:durative-action change_wheel_cylinder
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (change_wheel_cylinder_pending)) (at start (remove_drum_done)))
    :effect (and (at start (not (change_wheel_cylinder_pending))) (at end (change_wheel_cylinder_done)))
  )
)
