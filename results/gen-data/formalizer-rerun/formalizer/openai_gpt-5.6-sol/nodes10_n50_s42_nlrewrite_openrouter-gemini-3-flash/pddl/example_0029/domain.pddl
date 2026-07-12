(define (domain microwave-brownies)
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
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (dry_ingredients_whisked)
    (dish_greased)
    (butter_melted)
    (batter_poured)
    (brownies_microwaved)
    (butter_mixture_stirred)
    (measuring_tools_gathered)
    (cooking_spray_located)
    (eggs_and_butter_retrieved)
    (eggs_cracked)
  )

  (:durative-action whisk_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (butter_mixture_stirred))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dry_ingredients_whisked))
    )
  )

  (:durative-action grease_dish
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (cooking_spray_located))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dish_greased))
    )
  )

  (:durative-action melt_butter
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (measuring_tools_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_melted))
    )
  )

  (:durative-action pour_batter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (eggs_cracked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (batter_poured))
    )
  )

  (:durative-action microwave_brownies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (dry_ingredients_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (brownies_microwaved))
    )
  )

  (:durative-action stir_butter_mixture
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (butter_melted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_mixture_stirred))
    )
  )

  (:durative-action gather_measuring_tools
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (eggs_cracked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (measuring_tools_gathered))
    )
  )

  (:durative-action locate_cooking_spray
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cooking_spray_located))
    )
  )

  (:durative-action retrieve_eggs_and_butter
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_and_butter_retrieved))
    )
  )

  (:durative-action crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (eggs_and_butter_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_cracked))
    )
  )
)