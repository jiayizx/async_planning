(define (problem take_measurements_women_instance)
    (:domain take_measurements_women)
    
    (:init
        (identify_waist_pending)
        (find_waist_measurement_pending)
        (measure_hips_pending)
        (find_inseam_pending)
        (use_trousers_pending)
        (measure_thigh_pending)
        (measure_torso_pending)
    )

    (:goal (and
        (identify_waist_done)
        (find_waist_measurement_done)
        (measure_hips_done)
        (find_inseam_done)
        (use_trousers_done)
        (measure_thigh_done)
        (measure_torso_done)
    ))
)
