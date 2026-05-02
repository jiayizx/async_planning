(define (domain bacteria_sampling)
  (:requirements :durative-actions)
  (:predicates
    (sterilize_vials_pending) (sterilize_vials_done)
    (label_vials_pending) (label_vials_done)
    (calibrate_sensors_pending) (calibrate_sensors_done)
    (don_ppe_pending) (don_ppe_done)
    (swab_surfaces_pending) (swab_surfaces_done)
    (secure_swabs_pending) (secure_swabs_done)
    (requisition_cooler_pending) (requisition_cooler_done)
    (prechill_container_pending) (prechill_container_done)
    (log_metadata_pending) (log_metadata_done)
    (place_in_storage_pending) (place_in_storage_done)
    (review_protocol_pending) (review_protocol_done)
    (order_agar_pending) (order_agar_done)
    (prepare_disposal_pending) (prepare_disposal_done)
    (verify_ventilation_pending) (verify_ventilation_done)
    (inspect_agar_pending) (inspect_agar_done)
    (setup_decon_pending) (setup_decon_done)
    (sanitize_container_pending) (sanitize_container_done)
    (assemble_waste_kit_pending) (assemble_waste_kit_done)
    (transport_equipment_pending) (transport_equipment_done)
    (obtain_authorization_pending) (obtain_authorization_done)
  )

  (:durative-action sterilize_vials
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (sterilize_vials_pending)) (at start (calibrate_sensors_done)))
    :effect (and (at start (not (sterilize_vials_pending))) (at end (sterilize_vials_done)))
  )

  (:durative-action label_vials
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (label_vials_pending)) (at start (transport_equipment_done)))
    :effect (and (at start (not (label_vials_pending))) (at end (label_vials_done)))
  )

  (:durative-action calibrate_sensors
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (calibrate_sensors_pending)) (at start (verify_ventilation_done)) (at start (obtain_authorization_done)))
    :effect (and (at start (not (calibrate_sensors_pending))) (at end (calibrate_sensors_done)))
  )

  (:durative-action don_ppe
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (don_ppe_pending)) (at start (inspect_agar_done)))
    :effect (and (at start (not (don_ppe_pending))) (at end (don_ppe_done)))
  )

  (:durative-action swab_surfaces
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (swab_surfaces_pending)) (at start (label_vials_done)) (at start (sanitize_container_done)))
    :effect (and (at start (not (swab_surfaces_pending))) (at end (swab_surfaces_done)))
  )

  (:durative-action secure_swabs
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (secure_swabs_pending)) (at start (don_ppe_done)))
    :effect (and (at start (not (secure_swabs_pending))) (at end (secure_swabs_done)))
  )

  (:durative-action requisition_cooler
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (requisition_cooler_pending))
    :effect (and (at start (not (requisition_cooler_pending))) (at end (requisition_cooler_done)))
  )

  (:durative-action prechill_container
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (prechill_container_pending)) (at start (requisition_cooler_done)))
    :effect (and (at start (not (prechill_container_pending))) (at end (prechill_container_done)))
  )

  (:durative-action log_metadata
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (log_metadata_pending)) (at start (setup_decon_done)))
    :effect (and (at start (not (log_metadata_pending))) (at end (log_metadata_done)))
  )

  (:durative-action place_in_storage
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (place_in_storage_pending)) (at start (assemble_waste_kit_done)))
    :effect (and (at start (not (place_in_storage_pending))) (at end (place_in_storage_done)))
  )

  (:durative-action review_protocol
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (review_protocol_pending)) (at start (obtain_authorization_done)))
    :effect (and (at start (not (review_protocol_pending))) (at end (review_protocol_done)))
  )

  (:durative-action order_agar
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (order_agar_pending))
    :effect (and (at start (not (order_agar_pending))) (at end (order_agar_done)))
  )

  (:durative-action prepare_disposal
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_disposal_pending))
    :effect (and (at start (not (prepare_disposal_pending))) (at end (prepare_disposal_done)))
  )

  (:durative-action verify_ventilation
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (verify_ventilation_pending)) (at start (review_protocol_done)))
    :effect (and (at start (not (verify_ventilation_pending))) (at end (verify_ventilation_done)))
  )

  (:durative-action inspect_agar
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (inspect_agar_pending)) (at start (order_agar_done)))
    :effect (and (at start (not (inspect_agar_pending))) (at end (inspect_agar_done)))
  )

  (:durative-action setup_decon
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (setup_decon_pending)) (at start (prepare_disposal_done)))
    :effect (and (at start (not (setup_decon_pending))) (at end (setup_decon_done)))
  )

  (:durative-action sanitize_container
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (sanitize_container_pending)) (at start (requisition_cooler_done)))
    :effect (and (at start (not (sanitize_container_pending))) (at end (sanitize_container_done)))
  )

  (:durative-action assemble_waste_kit
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (assemble_waste_kit_pending)) (at start (prepare_disposal_done)) (at start (inspect_agar_done)))
    :effect (and (at start (not (assemble_waste_kit_pending))) (at end (assemble_waste_kit_done)))
  )

  (:durative-action transport_equipment
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (transport_equipment_pending)) (at start (sterilize_vials_done)))
    :effect (and (at start (not (transport_equipment_pending))) (at end (transport_equipment_done)))
  )

  (:durative-action obtain_authorization
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (obtain_authorization_pending))
    :effect (and (at start (not (obtain_authorization_pending))) (at end (obtain_authorization_done)))
  )
)
