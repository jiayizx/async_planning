(define (domain protect-vegetable-garden)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wire_mesh_purchased)
    (wildlife_patterns_researched)
    (netting_attached)
    (perimeter_measured)
    (repellent_mixed)
    (repellent_concentrates_purchased)
    (property_perimeter_sprayed)
    (gate_latch_tested)
    (trench_dug)
    (post_locations_mapped)
    (sharp_gravel_spread)
    (wire_mesh_installed)
    (ultrasonic_deterrents_installed)
    (support_stakes_installed)
    (trench_backfilled)
  )

  (:durative-action purchase-wire-mesh
    :parameters (?s - step1_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (perimeter_measured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wire_mesh_purchased))
    )
  )

  (:durative-action research-wildlife-patterns
    :parameters (?s - step2_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wildlife_patterns_researched))
    )
  )

  (:durative-action attach-protective-netting
    :parameters (?s - step3_type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (support_stakes_installed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (netting_attached))
    )
  )

  (:durative-action measure-garden-perimeter
    :parameters (?s - step4_type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (perimeter_measured))
    )
  )

  (:durative-action mix-organic-repellent
    :parameters (?s - step5_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (repellent_concentrates_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (repellent_mixed))
    )
  )

  (:durative-action purchase-repellent-concentrates
    :parameters (?s - step6_type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (repellent_concentrates_purchased))
    )
  )

  (:durative-action spray-property-perimeter
    :parameters (?s - step7_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (repellent_concentrates_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (property_perimeter_sprayed))
    )
  )

  (:durative-action test-gate-latch
    :parameters (?s - step8_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (netting_attached))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gate_latch_tested))
    )
  )

  (:durative-action dig-fence-trench
    :parameters (?s - step9_type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (wire_mesh_purchased))
      (at start (perimeter_measured))
      (at start (post_locations_mapped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trench_dug))
    )
  )

  (:durative-action map-fence-post-locations
    :parameters (?s - step10_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (wildlife_patterns_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (post_locations_mapped))
    )
  )

  (:durative-action spread-sharp-gravel
    :parameters (?s - step11_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (trench_backfilled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sharp_gravel_spread))
    )
  )

  (:durative-action install-wire-mesh
    :parameters (?s - step12_type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (perimeter_measured))
      (at start (trench_dug))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wire_mesh_installed))
    )
  )

  (:durative-action install-ultrasonic-deterrents
    :parameters (?s - step13_type)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (support_stakes_installed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ultrasonic_deterrents_installed))
    )
  )

  (:durative-action install-support-stakes
    :parameters (?s - step14_type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (property_perimeter_sprayed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (support_stakes_installed))
    )
  )

  (:durative-action backfill-trench
    :parameters (?s - step15_type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (wire_mesh_installed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trench_backfilled))
    )
  )
)