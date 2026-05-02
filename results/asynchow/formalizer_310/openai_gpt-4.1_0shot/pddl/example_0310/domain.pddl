(define (domain take_measurements_women)
  (:requirements :durative-actions)
  (:predicates
    (identify_natural_waist_pending)
    (identify_natural_waist_done)
    (find_waist_measurement_pending)
    (find_waist_measurement_done)
    (wrap_tape_hips_pending)
    (wrap_tape_hips_done)
    (find_inseam_pending)
    (find_inseam_done)
    (measure_inseam_trousers_pending)
    (measure_inseam_trousers_done)
    (measure_thigh_pending)
    (measure_thigh_done)
    (measure_half_girth_pending)
    (measure_half_girth_done)
  )

  (:durative-action identify_natural_waist
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (identify_natural_waist_pending))
    :effect (and (at start (not (identify_natural_waist_pending))) (at end (identify_natural_waist_done)))
  )

  (:durative-action find_waist_measurement
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (find_waist_measurement_pending)) (at start (identify_natural_waist_done)))
    :effect (and (at start (not (find_waist_measurement_pending))) (at end (find_waist_measurement_done)))
  )

  (:durative-action wrap_tape_hips
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (wrap_tape_hips_pending))
    :effect (and (at start (not (wrap_tape_hips_pending))) (at end (wrap_tape_hips_done)))
  )

  (:durative-action find_inseam
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (find_inseam_pending)) (at start (measure_inseam_trousers_done)))
    :effect (and (at start (not (find_inseam_pending))) (at end (find_inseam_done)))
  )

  (:durative-action measure_inseam_trousers
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (measure_inseam_trousers_pending))
    :effect (and (at start (not (measure_inseam_trousers_pending))) (at end (measure_inseam_trousers_done)))
  )

  (:durative-action measure_thigh
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (measure_thigh_pending))
    :effect (and (at start (not (measure_thigh_pending))) (at end (measure_thigh_done)))
  )

  (:durative-action measure_half_girth
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (measure_half_girth_pending))
    :effect (and (at start (not (measure_half_girth_pending))) (at end (measure_half_girth_done)))
  )
)
