(define (domain marching-band)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (orientation_attended)
    (instrument_rented)
    (medical_forms_submitted)
    (band_camp_attended)
    (halftime_show_performed)
    (private_lessons_completed)
    (field_movements_practiced)
    (proficiency_audition_passed)
    (uniform_ordered)
    (registration_form_submitted)
  )

  (:durative-action attend_orientation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (registration_form_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orientation_attended)))
  )

  (:durative-action rent_instrument
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instrument_rented)))
  )

  (:durative-action submit_medical_forms
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (orientation_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (medical_forms_submitted)))
  )

  (:durative-action attend_band_camp
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (private_lessons_completed))
      (at start (proficiency_audition_passed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (band_camp_attended)))
  )

  (:durative-action perform_halftime_show
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (field_movements_practiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (halftime_show_performed)))
  )

  (:durative-action take_private_lessons
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (instrument_rented)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (private_lessons_completed)))
  )

  (:durative-action practice_field_movements
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (band_camp_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (field_movements_practiced)))
  )

  (:durative-action pass_proficiency_audition
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (medical_forms_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (proficiency_audition_passed)))
  )

  (:durative-action order_uniform
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (orientation_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (uniform_ordered)))
  )

  (:durative-action submit_registration_form
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (registration_form_submitted)))
  )
)