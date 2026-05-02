(define (domain jamestown-field-trip)
  (:requirements :durative-actions)
  (:predicates
    (get_permission_pending)
    (get_permission_done)
    (send_permission_slips_pending)
    (send_permission_slips_done)
    (schedule_driver_pending)
    (schedule_driver_done)
    (create_schedule_pending)
    (create_schedule_done)
    (organize_groups_pending)
    (organize_groups_done)
    (board_bus_pending)
    (board_bus_done)
    (head_to_jamestown_pending)
    (head_to_jamestown_done)
  )

  (:durative-action do_get_permission
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (get_permission_pending))
    :effect (and (at start (not (get_permission_pending))) (at end (get_permission_done)))
  )

  (:durative-action do_send_permission_slips
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (send_permission_slips_pending)) (at start (get_permission_done)))
    :effect (and (at start (not (send_permission_slips_pending))) (at end (send_permission_slips_done)))
  )

  (:durative-action do_schedule_driver
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (schedule_driver_pending)) (at start (get_permission_done)))
    :effect (and (at start (not (schedule_driver_pending))) (at end (schedule_driver_done)))
  )

  (:durative-action do_create_schedule
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (create_schedule_pending)) (at start (get_permission_done)))
    :effect (and (at start (not (create_schedule_pending))) (at end (create_schedule_done)))
  )

  (:durative-action do_organize_groups
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (organize_groups_pending)) (at start (send_permission_slips_done)) (at start (schedule_driver_done)) (at start (create_schedule_done)))
    :effect (and (at start (not (organize_groups_pending))) (at end (organize_groups_done)))
  )

  (:durative-action do_board_bus
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (board_bus_pending)) (at start (organize_groups_done)))
    :effect (and (at start (not (board_bus_pending))) (at end (board_bus_done)))
  )

  (:durative-action do_head_to_jamestown
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (head_to_jamestown_pending)) (at start (board_bus_done)))
    :effect (and (at start (not (head_to_jamestown_pending))) (at end (head_to_jamestown_done)))
  )
)
