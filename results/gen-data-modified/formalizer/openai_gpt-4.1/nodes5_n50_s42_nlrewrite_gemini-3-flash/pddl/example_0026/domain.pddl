(define (domain drumset-customization)
  (:requirements :durative-actions)
  (:predicates
    (apply_wraps_pending)
    (apply_wraps_done)
    (select_stain_pending)
    (select_stain_done)
    (sand_shells_pending)
    (sand_shells_done)
    (order_hardware_pending)
    (order_hardware_done)
    (install_hardware_pending)
    (install_hardware_done)
  )

  (:durative-action apply_wraps
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_wraps_pending)) (at start (sand_shells_done)) (at start (order_hardware_done)))
    :effect (and (at start (not (apply_wraps_pending))) (at end (apply_wraps_done)))
  )

  (:durative-action select_stain
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (select_stain_pending))
    :effect (and (at start (not (select_stain_pending))) (at end (select_stain_done)))
  )

  (:durative-action sand_shells
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (sand_shells_pending)) (at start (select_stain_done)))
    :effect (and (at start (not (sand_shells_pending))) (at end (sand_shells_done)))
  )

  (:durative-action order_hardware
    :parameters ()
    :duration (= ?duration 432000)
    :condition (at start (order_hardware_pending))
    :effect (and (at start (not (order_hardware_pending))) (at end (order_hardware_done)))
  )

  (:durative-action install_hardware
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (install_hardware_pending)) (at start (apply_wraps_done)))
    :effect (and (at start (not (install_hardware_pending))) (at end (install_hardware_done)))
  )
)
