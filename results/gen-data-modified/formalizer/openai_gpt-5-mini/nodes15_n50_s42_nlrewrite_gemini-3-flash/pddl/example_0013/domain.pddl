(define (domain hang_picture_domain)
  (:requirements :durative-actions)
  (:predicates
    (measure_pending) (measure_done)
    (mark_pending) (mark_done)
    (hammer_pending) (hammer_done)
    (level_pending) (level_done)
    (unpack_pending) (unpack_done)
    (locate_stud_pending) (locate_stud_done)
    (scan_pending) (scan_done)
    (determine_height_pending) (determine_height_done)
    (attach_wire_pending) (attach_wire_done)
    (calc_distance_pending) (calc_distance_done)
    (clean_glass_pending) (clean_glass_done)
    (cut_wire_pending) (cut_wire_done)
    (choose_wall_pending) (choose_wall_done)
    (secure_crimps_pending) (secure_crimps_done)
    (check_wall_pending) (check_wall_done)
  )

  (:durative-action do_measure_width
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (measure_pending)) (at start (unpack_done)))
    :effect (and (at start (not (measure_pending))) (at end (measure_done)))
  )

  (:durative-action do_mark_spot
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (mark_pending)) (at start (determine_height_done)))
    :effect (and (at start (not (mark_pending))) (at end (mark_done)))
  )

  (:durative-action do_hammer_nail
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (hammer_pending)) (at start (mark_done)))
    :effect (and (at start (not (hammer_pending))) (at end (hammer_done)))
  )

  (:durative-action do_level_frame
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (level_pending)) (at start (unpack_done)) (at start (locate_stud_done)) (at start (check_wall_done)))
    :effect (and (at start (not (level_pending))) (at end (level_done)))
  )

  (:durative-action do_unpack
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (unpack_pending))
    :effect (and (at start (not (unpack_pending))) (at end (unpack_done)))
  )

  (:durative-action do_locate_stud_finder
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (locate_stud_pending))
    :effect (and (at start (not (locate_stud_pending))) (at end (locate_stud_done)))
  )

  (:durative-action do_scan_for_wires
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (scan_pending)) (at start (locate_stud_done)))
    :effect (and (at start (not (scan_pending))) (at end (scan_done)))
  )

  (:durative-action do_determine_height
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (determine_height_pending)) (at start (unpack_done)) (at start (choose_wall_done)))
    :effect (and (at start (not (determine_height_pending))) (at end (determine_height_done)))
  )

  (:durative-action do_attach_wire
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (attach_wire_pending)) (at start (cut_wire_done)))
    :effect (and (at start (not (attach_wire_pending))) (at end (attach_wire_done)))
  )

  (:durative-action do_calc_distance
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (calc_distance_pending)) (at start (measure_done)))
    :effect (and (at start (not (calc_distance_pending))) (at end (calc_distance_done)))
  )

  (:durative-action do_clean_glass
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (clean_glass_pending)) (at start (secure_crimps_done)))
    :effect (and (at start (not (clean_glass_pending))) (at end (clean_glass_done)))
  )

  (:durative-action do_cut_wire
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (cut_wire_pending)) (at start (determine_height_done)))
    :effect (and (at start (not (cut_wire_pending))) (at end (cut_wire_done)))
  )

  (:durative-action do_choose_wall
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (choose_wall_pending))
    :effect (and (at start (not (choose_wall_pending))) (at end (choose_wall_done)))
  )

  (:durative-action do_secure_crimps
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (secure_crimps_pending)) (at start (attach_wire_done)))
    :effect (and (at start (not (secure_crimps_pending))) (at end (secure_crimps_done)))
  )

  (:durative-action do_check_wall_surface
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_wall_pending)) (at start (scan_done)))
    :effect (and (at start (not (check_wall_pending))) (at end (check_wall_done)))
  )
)
