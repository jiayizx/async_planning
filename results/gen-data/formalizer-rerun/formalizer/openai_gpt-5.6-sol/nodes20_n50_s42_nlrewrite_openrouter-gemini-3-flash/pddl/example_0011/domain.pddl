(define (domain bacteria-sample-collection)
  (:requirements :typing :durative-actions)
  (:types
    step
    sterilize-step ppe-step label-step pack-cooler-step swab-step seal-step
    calibrate-step record-temperature-step log-metadata-step storage-step
    print-manifest-step order-plates-step prepare-broth-step review-safety-step
    inspect-plates-step inoculate-step verify-gps-step incubate-controls-step
    transport-step permission-step - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vials_sterilized)
    (ppe_donned)
    (vials_labeled)
    (cooler_packed)
    (surfaces_swabbed)
    (samples_sealed)
    (sensors_calibrated)
    (ambient_temperature_recorded)
    (metadata_logged)
    (samples_stored)
    (manifest_printed)
    (agar_plates_ordered)
    (nutrient_broth_prepared)
    (safety_protocols_reviewed)
    (agar_plates_inspected)
    (plates_inoculated)
    (site_coordinates_verified)
    (controls_incubated)
    (equipment_transported)
    (permission_obtained)
  )

  (:durative-action sterilize-vials
    :parameters (?s - sterilize-step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (vials_labeled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vials_sterilized)))
  )

  (:durative-action don-ppe
    :parameters (?s - ppe-step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (equipment_transported)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ppe_donned)))
  )

  (:durative-action label-vials
    :parameters (?s - label-step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (safety_protocols_reviewed))
      (at start (permission_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vials_labeled)))
  )

  (:durative-action pack-cooler
    :parameters (?s - pack-cooler-step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (agar_plates_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cooler_packed)))
  )

  (:durative-action swab-surfaces
    :parameters (?s - swab-step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (ppe_donned))
      (at start (site_coordinates_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (surfaces_swabbed)))
  )

  (:durative-action seal-samples
    :parameters (?s - seal-step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (cooler_packed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (samples_sealed)))
  )

  (:durative-action calibrate-sensors
    :parameters (?s - calibrate-step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sensors_calibrated)))
  )

  (:durative-action record-ambient-temperature
    :parameters (?s - record-temperature-step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (sensors_calibrated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ambient_temperature_recorded)))
  )

  (:durative-action log-sample-metadata
    :parameters (?s - log-metadata-step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (plates_inoculated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (metadata_logged)))
  )

  (:durative-action place-in-cryogenic-storage
    :parameters (?s - storage-step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (controls_incubated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (samples_stored)))
  )

  (:durative-action print-field-manifest
    :parameters (?s - print-manifest-step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (permission_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (manifest_printed)))
  )

  (:durative-action order-agar-plates
    :parameters (?s - order-plates-step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (agar_plates_ordered)))
  )

  (:durative-action prepare-nutrient-broth
    :parameters (?s - prepare-broth-step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nutrient_broth_prepared)))
  )

  (:durative-action review-safety-protocols
    :parameters (?s - review-safety-step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (manifest_printed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (safety_protocols_reviewed)))
  )

  (:durative-action receive-inspect-agar-plates
    :parameters (?s - inspect-plates-step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (agar_plates_ordered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (agar_plates_inspected)))
  )

  (:durative-action inoculate-primary-plates
    :parameters (?s - inoculate-step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (nutrient_broth_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plates_inoculated)))
  )

  (:durative-action verify-site-coordinates
    :parameters (?s - verify-gps-step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (sensors_calibrated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (site_coordinates_verified)))
  )

  (:durative-action incubate-control-samples
    :parameters (?s - incubate-controls-step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (nutrient_broth_prepared))
      (at start (agar_plates_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (controls_incubated)))
  )

  (:durative-action transport-equipment
    :parameters (?s - transport-step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (vials_sterilized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_transported)))
  )

  (:durative-action obtain-permission
    :parameters (?s - permission-step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (permission_obtained)))
  )
)