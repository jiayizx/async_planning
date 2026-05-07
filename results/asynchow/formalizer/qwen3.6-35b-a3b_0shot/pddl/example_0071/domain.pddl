(define (domain purchase_soil_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (wallet_grabbed)
    (keys_grabbed)
    (house_exited)
    (in_car)
    (at_store))

  (:durative-action grab_wallet
    :parameters ()
    :duration 30
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (wallet_grabbed))))

  (:durative-action grab_keys
    :parameters ()
    :duration 20
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (keys_grabbed))))

  (:durative-action exit_house
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step3))
                    (at start (wallet_grabbed))
                    (at start (keys_grabbed)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (house_exited))))

  (:durative-action get_in_car
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step4))
                    (at start (house_exited)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (in_car))))

  (:durative-action drive_to_store
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step5))
                    (at start (in_car)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (at_store))))
)