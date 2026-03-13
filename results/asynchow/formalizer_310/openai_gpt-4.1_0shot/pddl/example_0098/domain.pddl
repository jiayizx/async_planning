(define (domain sim_card_replacement)
  (:requirements :durative-actions)
  (:predicates
    (get_sim_card_pending)
    (get_sim_card_done)
    (get_screw_driver_pending)
    (get_screw_driver_done)
    (unscrew_back_pending)
    (unscrew_back_done)
    (remove_back_pending)
    (remove_back_done)
    (install_new_sim_pending)
    (install_new_sim_done)
    (screw_back_in_pending)
    (screw_back_in_done)
    (remove_old_sim_pending)
    (remove_old_sim_done)
  )

  (:durative-action do_get_sim_card
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (get_sim_card_pending))
    :effect (and (at start (not (get_sim_card_pending))) (at end (get_sim_card_done)))
  )

  (:durative-action do_get_screw_driver
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (get_screw_driver_pending))
    :effect (and (at start (not (get_screw_driver_pending))) (at end (get_screw_driver_done)))
  )

  (:durative-action do_unscrew_back
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (unscrew_back_pending)) (at start (get_screw_driver_done)))
    :effect (and (at start (not (unscrew_back_pending))) (at end (unscrew_back_done)))
  )

  (:durative-action do_remove_back
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (remove_back_pending)) (at start (unscrew_back_done)))
    :effect (and (at start (not (remove_back_pending))) (at end (remove_back_done)))
  )

  (:durative-action do_install_new_sim
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (install_new_sim_pending)) (at start (get_sim_card_done)) (at start (remove_old_sim_done)))
    :effect (and (at start (not (install_new_sim_pending))) (at end (install_new_sim_done)))
  )

  (:durative-action do_screw_back_in
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (screw_back_in_pending)) (at start (install_new_sim_done)))
    :effect (and (at start (not (screw_back_in_pending))) (at end (screw_back_in_done)))
  )

  (:durative-action do_remove_old_sim
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (remove_old_sim_pending)) (at start (remove_back_done)))
    :effect (and (at start (not (remove_old_sim_pending))) (at end (remove_old_sim_done)))
  )
)
