(define (domain leave_school)
  (:requirements :durative-actions)
  (:predicates
    (log_out_library_computer_pending)
    (log_out_library_computer_done)
    (save_paper_cloud_pending)
    (save_paper_cloud_done)
    (walk_to_bus_stop_pending)
    (walk_to_bus_stop_done)
    (pack_backpack_pending)
    (pack_backpack_done)
    (return_locker_key_pending)
    (return_locker_key_done)
  )

  (:durative-action do_log_out_library_computer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (log_out_library_computer_pending)) (at start (save_paper_cloud_done)))
    :effect (and (at start (not (log_out_library_computer_pending))) (at end (log_out_library_computer_done)))
  )

  (:durative-action do_save_paper_cloud
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (save_paper_cloud_pending))
    :effect (and (at start (not (save_paper_cloud_pending))) (at end (save_paper_cloud_done)))
  )

  (:durative-action do_walk_to_bus_stop
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (walk_to_bus_stop_pending)) (at start (return_locker_key_done)))
    :effect (and (at start (not (walk_to_bus_stop_pending))) (at end (walk_to_bus_stop_done)))
  )

  (:durative-action do_pack_backpack
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pack_backpack_pending))
    :effect (and (at start (not (pack_backpack_pending))) (at end (pack_backpack_done)))
  )

  (:durative-action do_return_locker_key
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (return_locker_key_pending)) (at start (pack_backpack_done)))
    :effect (and (at start (not (return_locker_key_pending))) (at end (return_locker_key_done)))
  )
)
