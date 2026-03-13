(define (domain crazy-balloon)
  (:requirements :durative-actions)
  (:predicates
    (launch_balloon_pending)
    (launch_balloon_done)
    (design_blueprint_pending)
    (design_blueprint_done)
    (source_materials_pending)
    (source_materials_done)
    (sew_envelope_pending)
    (sew_envelope_done)
    (test_parachute_pending)
    (test_parachute_done)
    (apply_waiver_pending)
    (apply_waiver_done)
    (secure_permit_pending)
    (secure_permit_done)
    (construct_basket_pending)
    (construct_basket_done)
    (purchase_tuxedo_pending)
    (purchase_tuxedo_done)
    (assemble_burner_pending)
    (assemble_burner_done)
  )

  (:durative-action launch_balloon
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (launch_balloon_pending)) (at start (assemble_burner_done)))
    :effect (and (at start (not (launch_balloon_pending))) (at end (launch_balloon_done)))
  )

  (:durative-action design_blueprint
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (design_blueprint_pending))
    :effect (and (at start (not (design_blueprint_pending))) (at end (design_blueprint_done)))
  )

  (:durative-action source_materials
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (source_materials_pending)) (at start (design_blueprint_done)))
    :effect (and (at start (not (source_materials_pending))) (at end (source_materials_done)))
  )

  (:durative-action sew_envelope
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (sew_envelope_pending)) (at start (source_materials_done)))
    :effect (and (at start (not (sew_envelope_pending))) (at end (sew_envelope_done)))
  )

  (:durative-action test_parachute
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (test_parachute_pending)) (at start (construct_basket_done)))
    :effect (and (at start (not (test_parachute_pending))) (at end (test_parachute_done)))
  )

  (:durative-action apply_waiver
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (at start (apply_waiver_pending))
    :effect (and (at start (not (apply_waiver_pending))) (at end (apply_waiver_done)))
  )

  (:durative-action secure_permit
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (secure_permit_pending)) (at start (apply_waiver_done)) (at start (purchase_tuxedo_done)))
    :effect (and (at start (not (secure_permit_pending))) (at end (secure_permit_done)))
  )

  (:durative-action construct_basket
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (construct_basket_pending)) (at start (design_blueprint_done)))
    :effect (and (at start (not (construct_basket_pending))) (at end (construct_basket_done)))
  )

  (:durative-action purchase_tuxedo
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (purchase_tuxedo_pending))
    :effect (and (at start (not (purchase_tuxedo_pending))) (at end (purchase_tuxedo_done)))
  )

  (:durative-action assemble_burner
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (assemble_burner_pending)) (at start (sew_envelope_done)))
    :effect (and (at start (not (assemble_burner_pending))) (at end (assemble_burner_done)))
  )
)
