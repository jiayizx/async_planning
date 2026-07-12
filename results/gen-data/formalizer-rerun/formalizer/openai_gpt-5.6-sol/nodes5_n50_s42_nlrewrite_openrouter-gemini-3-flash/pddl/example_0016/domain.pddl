(define (domain fishing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (renew_step ?s - step)
    (bait_step ?s - step)
    (research_step ?s - step)
    (cast_step ?s - step)
    (pack_step ?s - step)
    (regulations_researched)
    (license_renewed)
    (bait_purchased)
    (gear_packed)
    (line_cast)
  )

  (:durative-action research_regulations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (research_step ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (regulations_researched))
    )
  )

  (:durative-action renew_fishing_license
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (renew_step ?s))
      (at start (regulations_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (license_renewed))
    )
  )

  (:durative-action purchase_live_bait
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (bait_step ?s))
      (at start (license_renewed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bait_purchased))
    )
  )

  (:durative-action pack_cooler_and_load_gear
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (pack_step ?s))
      (at start (license_renewed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gear_packed))
    )
  )

  (:durative-action cast_line
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (cast_step ?s))
      (at start (license_renewed))
      (at start (gear_packed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (line_cast))
    )
  )
)