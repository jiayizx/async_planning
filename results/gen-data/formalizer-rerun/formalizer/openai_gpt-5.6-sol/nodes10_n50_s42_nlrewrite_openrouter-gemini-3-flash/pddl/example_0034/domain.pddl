(define (domain tuna-fish-patties)
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
    (tuna_drained)
    (vegetables_diced)
    (tuna_flaked)
    (egg_wash_whisked)
    (breadcrumb_mixture_mixed)
    (tuna_and_vegetables_combined)
    (patties_formed)
    (breadcrumb_mixture_hydrated)
    (patties_fried)
    (dipping_sauce_prepared)
  )

  (:durative-action drain_tuna
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tuna_drained))
    )
  )

  (:durative-action dice_celery_and_onions
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

  (:durative-action flake_tuna
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (tuna_drained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tuna_flaked))
    )
  )

  (:durative-action whisk_eggs_and_lemon_juice
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (tuna_drained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (egg_wash_whisked))
    )
  )

  (:durative-action mix_breadcrumbs_and_spices
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (egg_wash_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (breadcrumb_mixture_mixed))
    )
  )

  (:durative-action combine_tuna_and_vegetables
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (vegetables_diced))
      (at start (tuna_flaked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tuna_and_vegetables_combined))
    )
  )

  (:durative-action form_patties
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (tuna_and_vegetables_combined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (patties_formed))
    )
  )

  (:durative-action hydrate_breadcrumb_mixture
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (breadcrumb_mixture_mixed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (breadcrumb_mixture_hydrated))
    )
  )

  (:durative-action pan_fry_patties
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (patties_formed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (patties_fried))
    )
  )

  (:durative-action prepare_dipping_sauce
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (tuna_flaked))
      (at start (egg_wash_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dipping_sauce_prepared))
    )
  )
)