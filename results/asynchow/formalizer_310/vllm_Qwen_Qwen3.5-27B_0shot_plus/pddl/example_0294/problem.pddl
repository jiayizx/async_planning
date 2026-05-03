(define (problem service_brakes)
  (:domain brake_service)
  
  (:init
    (remove_wheels_pending)
    (remove_drum_pending)
    (inspect_brake_shoes_pending)
    (inspect_return_springs_pending)
    (change_wheel_cylinder_pending)
  )

  (:goal (and
    (remove_wheels_done)
    (remove_drum_done)
    (inspect_brake_shoes_done)
    (inspect_return_springs_done)
    (change_wheel_cylinder_done)
  ))
)
