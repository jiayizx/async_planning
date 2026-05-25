(define (domain take_measurements_women)
    (:requirements :durative-actions)
    
    (:predicates
        (identify_waist_pending)
        (identify_waist_done)
        (find_waist_measurement_pending)
        (find_waist_measurement_done)
        (measure_hips_pending)
        (measure_hips_done)
        (find_inseam_pending)
        (find_inseam_done)
        (use_trousers_pending)
        (use_trousers_done)
        (measure_thigh_pending)
        (measure_thigh_done)
        (measure_torso_pending)
        (measure_torso_done)
    )

    (:durative-action identify_waist
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (identify_waist_pending)))
        :effect (and (at start (not (identify_waist_pending))) (at end (identify_waist_done)))
    )

    (:durative-action find_waist_measurement
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (find_waist_measurement_pending)) (at start (identify_waist_done)))
        :effect (and (at start (not (find_waist_measurement_pending))) (at end (find_waist_measurement_done)))
    )

    (:durative-action measure_hips
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (measure_hips_pending)))
        :effect (and (at start (not (measure_hips_pending))) (at end (measure_hips_done)))
    )

    (:durative-action find_inseam
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (find_inseam_pending)) (at start (use_trousers_done)))
        :effect (and (at start (not (find_inseam_pending))) (at end (find_inseam_done)))
    )

    (:durative-action use_trousers
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (use_trousers_pending)))
        :effect (and (at start (not (use_trousers_pending))) (at end (use_trousers_done)))
    )

    (:durative-action measure_thigh
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (measure_thigh_pending)))
        :effect (and (at start (not (measure_thigh_pending))) (at end (measure_thigh_done)))
    )

    (:durative-action measure_torso
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (measure_torso_pending)))
        :effect (and (at start (not (measure_torso_pending))) (at end (measure_torso_done)))
    )
)
