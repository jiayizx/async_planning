(define (domain chickpea-red-bean-salad)
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
    (chickpeas_soaked)
    (vegetables_diced)
    (dressing_whisked)
    (dressing_chilled)
    (legumes_combined)
    (salad_garnished)
    (garlic_added)
    (chickpeas_boiled)
    (salad_tossed)
    (parsley_cleaned)
  )

  (:durative-action soak_chickpeas
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chickpeas_soaked))
    )
  )

  (:durative-action dice_onions_and_peppers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_diced))
    )
  )

  (:durative-action whisk_dressing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (vegetables_diced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dressing_whisked))
    )
  )

  (:durative-action chill_dressing
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (dressing_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dressing_chilled))
    )
  )

  (:durative-action combine_legumes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (chickpeas_boiled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (legumes_combined))
    )
  )

  (:durative-action garnish_with_parsley
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (parsley_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salad_garnished))
    )
  )

  (:durative-action add_garlic_to_dressing
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (dressing_chilled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garlic_added))
    )
  )

  (:durative-action boil_chickpeas
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (chickpeas_soaked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chickpeas_boiled))
    )
  )

  (:durative-action toss_salad
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (vegetables_diced))
      (at start (dressing_whisked))
      (at start (garlic_added))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salad_tossed))
    )
  )

  (:durative-action wash_and_dry_parsley
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (parsley_cleaned))
    )
  )
)