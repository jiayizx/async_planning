(define (domain fighter-pilot-training)
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
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (initial_flight_screening_completed)
    (advanced_jet_transition_completed)
    (sere_school_completed)
    (undergraduate_pilot_training_passed)
    (class_i_medical_passed)
    (bachelors_degree_obtained)
    (officer_training_school_graduated)
    (t6_solo_hours_logged)
    (pilot_wings_received)
    (security_clearance_completed)
    (commissioning_ceremony_attended)
    (fighter_fundamentals_completed)
    (afoqt_passed)
    (application_package_submitted)
    (recruiter_meeting_completed)
  )

  (:durative-action complete_initial_flight_screening
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (recruiter_meeting_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_flight_screening_completed))))

  (:durative-action finish_advanced_jet_transition
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (undergraduate_pilot_training_passed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (advanced_jet_transition_completed))))

  (:durative-action complete_sere_school
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (bachelors_degree_obtained))
      (at start (afoqt_passed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sere_school_completed))))

  (:durative-action pass_undergraduate_pilot_training
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (officer_training_school_graduated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (undergraduate_pilot_training_passed))))

  (:durative-action pass_class_i_medical
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (class_i_medical_passed))))

  (:durative-action obtain_bachelors_degree
    :parameters (?s - step)
    :duration (= ?duration 126144000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bachelors_degree_obtained))))

  (:durative-action graduate_officer_training_school
    :parameters (?s - step)
    :duration (= ?duration 5443200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (officer_training_school_graduated))))

  (:durative-action log_t6_solo_hours
    :parameters (?s - step)
    :duration (= ?duration 180000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (initial_flight_screening_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (t6_solo_hours_logged))))

  (:durative-action receive_pilot_wings
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (advanced_jet_transition_completed))
      (at start (sere_school_completed))
      (at start (application_package_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pilot_wings_received))))

  (:durative-action complete_security_clearance
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (class_i_medical_passed))
      (at start (application_package_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (security_clearance_completed))))

  (:durative-action attend_commissioning_ceremony
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (application_package_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (commissioning_ceremony_attended))))

  (:durative-action complete_fighter_fundamentals
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (initial_flight_screening_completed))
      (at start (t6_solo_hours_logged)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fighter_fundamentals_completed))))

  (:durative-action pass_afoqt
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (bachelors_degree_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (afoqt_passed))))

  (:durative-action submit_application_package
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_package_submitted))))

  (:durative-action meet_accessions_recruiter
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (bachelors_degree_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recruiter_meeting_completed))))
)