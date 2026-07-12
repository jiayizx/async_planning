(define (domain manx-cat-care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (health_needs_researched)
    (supplies_purchased)
    (veterinarian_contacted)
    (grooming_and_spinal_check_completed)
    (wellness_consultation_completed)
  )

  (:durative-action research_health_needs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (health_needs_researched))
    )
  )

  (:durative-action purchase_nutrition_and_grooming_tools
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (health_needs_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (supplies_purchased))
    )
  )

  (:durative-action contact_specialist_veterinarian
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (veterinarian_contacted))
    )
  )

  (:durative-action conduct_grooming_and_spinal_check
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (supplies_purchased))
      (at start (wellness_consultation_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grooming_and_spinal_check_completed))
    )
  )

  (:durative-action attend_wellness_consultation
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (veterinarian_contacted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wellness_consultation_completed))
    )
  )
)