(define (domain texas-dental-assistant)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (registration_application_submitted)
    (certificate_program_enrolled)
    (bls_cpr_course_completed)
    (radiography_course_passed)
    (jurisprudence_exam_passed)
  )

  (:durative-action submit_registration_application
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (bls_cpr_course_completed))
      (at start (radiography_course_passed))
      (at start (jurisprudence_exam_passed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (registration_application_submitted))
    )
  )

  (:durative-action enroll_certificate_program
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (certificate_program_enrolled))
    )
  )

  (:durative-action complete_bls_cpr_course
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bls_cpr_course_completed))
    )
  )

  (:durative-action pass_radiography_course
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (certificate_program_enrolled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (radiography_course_passed))
    )
  )

  (:durative-action pass_jurisprudence_exam
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (bls_cpr_course_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jurisprudence_exam_passed))
    )
  )
)