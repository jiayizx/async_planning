(define (domain take-measurements-women)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (identified_waist_done)
    (waist_measurement_done)
    (hip_measurement_done)
    (inseam_length_found_done)
    (inseam_from_trousers_done)
    (thigh_measurement_done)
    (half_girth_measurement_done)
  )

  ;; Step 1: Identify your natural waist. (1 min => 60 sec)
  (:durative-action do_step1_identify_waist
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (identified_waist_done))
    )
  )

  ;; Step 2: Find your waist measurement by wrapping the tape around your natural waist. (2 min => 120 sec)
  (:durative-action do_step2_waist_measurement
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (identified_waist_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (waist_measurement_done))
    )
  )

  ;; Step 3: Wrap the tape around the fullest part of your buttocks for your hip measurement. (1 min => 60 sec)
  (:durative-action do_step3_hip_measurement
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (hip_measurement_done))
    )
  )

  ;; Step 4: Find out your inseam by measuring the length of your inner leg. (2 min => 120 sec)
  ;; Requires step5 (use trousers) to precede step4
  (:durative-action do_step4_inseam_length_found
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (inseam_from_trousers_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (inseam_length_found_done))
    )
  )

  ;; Step 5: Use a well-fitting pair of trousers or jeans to measure your inseam. (2 min => 120 sec)
  (:durative-action do_step5_inseam_from_trousers
    :duration (= ?duration 120)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (inseam_from_trousers_done))
    )
  )

  ;; Step 6: Encircle your upper leg with the tape to take your thigh measurement. (1 min => 60 sec)
  (:durative-action do_step6_thigh_measurement
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (thigh_measurement_done))
    )
  )

  ;; Step 7: Measure the bottom half of your torso for the half girth measurement. (2 min => 120 sec)
  (:durative-action do_step7_half_girth_measurement
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (half_girth_measurement_done))
    )
  )
)
