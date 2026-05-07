(define (domain manx_cat_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (supplies_purchased)
    (vet_contacted)
    (consultation_attended)
    (grooming_completed)
  )

  (:durative-action research_health_needs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action purchase_supplies
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_purchased)))
  )

  (:durative-action contact_vet
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vet_contacted)))
  )

  (:durative-action attend_consultation
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (vet_contacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_attended)))
  )

  (:durative-action conduct_grooming_check
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (supplies_purchased)) (at start (consultation_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grooming_completed)))
  )
)