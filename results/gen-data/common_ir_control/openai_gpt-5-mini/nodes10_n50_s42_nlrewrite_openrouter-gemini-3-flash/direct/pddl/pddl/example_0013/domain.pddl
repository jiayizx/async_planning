(define (domain marching-band)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each action
    (orientation_done)
    (instrument_rented)
    (medical_submitted)
    (band_camp_attended)
    (half_time_performed)
    (private_lessons_done)
    (choreography_practiced)
    (audition_passed)
    (uniform_ordered)
    (registration_filled)
  )

  ; One durative-action per step
  (:durative-action do_step1_attend_orientation
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (orientation_done))
    )
  )

  (:durative-action do_step2_rent_instrument
    :duration (= ?duration 2700)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (instrument_rented))
    )
  )

  (:durative-action do_step3_submit_medical
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step3)) (at start (orientation_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (medical_submitted))
    )
  )

  (:durative-action do_step4_attend_band_camp
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step4)) (at start (private_lessons_done)) (at start (audition_passed)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (band_camp_attended))
    )
  )

  (:durative-action do_step5_perform_halftime
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (choreography_practiced)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (half_time_performed))
    )
  )

  (:durative-action do_step6_private_lessons
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step6)) (at start (instrument_rented)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (private_lessons_done))
    )
  )

  (:durative-action do_step7_practice_choreography
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step7)) (at start (band_camp_attended)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (choreography_practiced))
    )
  )

  (:durative-action do_step8_pass_audition
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (medical_submitted)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (audition_passed))
    )
  )

  (:durative-action do_step9_order_uniform
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step9)) (at start (orientation_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (uniform_ordered))
    )
  )

  (:durative-action do_step10_fill_registration
    :duration (= ?duration 900)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (registration_filled))
    )
  )
)
