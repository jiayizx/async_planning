(define (domain roast-turnips)
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
    (parsley_garnish_completed)
    (outer_skins_peeled)
    (turnips_served)
    (turnips_tossed)
    (turnips_scrubbed)
    (turnips_sliced)
    (turnips_roasted)
    (turnips_removed_to_cool)
    (turnips_purchased)
    (oven_preheated)
  )

  (:durative-action garnish_with_parsley
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (turnips_removed_to_cool))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (parsley_garnish_completed))
    )
  )

  (:durative-action peel_outer_skins
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (turnips_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outer_skins_peeled))
    )
  )

  (:durative-action serve_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (turnips_roasted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_served))
    )
  )

  (:durative-action toss_in_oil_and_salt
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (turnips_scrubbed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_tossed))
    )
  )

  (:durative-action scrub_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_scrubbed))
    )
  )

  (:durative-action slice_turnips
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (outer_skins_peeled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_sliced))
    )
  )

  (:durative-action roast_turnips
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (oven_preheated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_roasted))
    )
  )

  (:durative-action remove_turnips_to_cool
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_removed_to_cool))
    )
  )

  (:durative-action purchase_turnips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_purchased))
    )
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (turnips_tossed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))
    )
  )
)