(define (domain marching_band_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (registration_done)
    (orientation_done)
    (instrument_rented)
    (medical_cleared)
    (scales_learned)
    (audition_passed)
    (camp_attended)
    (choreography_practiced)
    (uniform_ordered)
    (halftime_performed)
  )

  (:durative-action step10_register
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registration_done)))
  )

  (:durative-action step1_orientation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (registration_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orientation_done)))
  )

  (:durative-action step2_rent_instrument
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (instrument_rented)))
  )

  (:durative-action step3_medical_clearance
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (orientation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_cleared)))
  )

  (:durative-action step6_private_lessons
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (instrument_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scales_learned)))
  )

  (:durative-action step8_audition
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (medical_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (audition_passed)))
  )

  (:durative-action step4_band_camp
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (scales_learned)) (at start (audition_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camp_attended)))
  )

  (:durative-action step7_practice_choreography
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (camp_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (choreography_practiced)))
  )

  (:durative-action step5_halftime_show
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (choreography_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (halftime_performed)))
  )

  (:durative-action step9_order_uniform
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (orientation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uniform_ordered)))
  )
)