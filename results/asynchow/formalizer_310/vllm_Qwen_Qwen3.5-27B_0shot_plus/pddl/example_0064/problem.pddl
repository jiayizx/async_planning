(define (problem exit_house_task)
  (:domain exit_house)
  
  (:init
    (grab_keys_pending)
    (put_on_shoes_pending)
    (go_through_door_pending)
    (lock_door_pending)
    (put_on_jacket_pending)
  )

  (:goal (and
    (grab_keys_done)
    (put_on_shoes_done)
    (go_through_door_done)
    (lock_door_done)
    (put_on_jacket_done)
  ))
)
