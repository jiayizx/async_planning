(define (domain roommate_problems)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cleaning_discussed)
    (visitor_plan_developed)
    (phone_policy_discussed)
    (lights_out_determined)
    (agreement_signed)
  )

  (:durative-action discuss_cleaning
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaning_discussed)))
  )

  (:durative-action develop_visitor_plan
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (visitor_plan_developed)))
  )

  (:durative-action discuss_phone_policy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_policy_discussed)))
  )

  (:durative-action determine_lights_out
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lights_out_determined)))
  )

  (:durative-action sign_agreement
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and 
      (at start (step_pending ?s))
      (at start (cleaning_discussed))
      (at start (visitor_plan_developed))
      (at start (phone_policy_discussed))
      (at start (lights_out_determined))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (agreement_signed)))
  )
)