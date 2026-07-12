(define (domain add-new-product)
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
    (marketing_campaign_launched)
    (prototype_created)
    (user_testing_completed)
    (design_specifications_finalized)
    (market_research_completed)
    (promotional_video_filmed)
    (funding_secured)
    (intellectual_property_filed)
    (initial_inventory_stocked)
    (raw_materials_ordered)
  )

  (:durative-action launch_marketing_campaign
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (promotional_video_filmed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marketing_campaign_launched))
    )
  )

  (:durative-action create_high_fidelity_prototype
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (funding_secured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prototype_created))
    )
  )

  (:durative-action conduct_user_testing
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (prototype_created))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (user_testing_completed))
    )
  )

  (:durative-action finalize_design_specifications
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (user_testing_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (design_specifications_finalized))
    )
  )

  (:durative-action perform_market_research
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (market_research_completed))
    )
  )

  (:durative-action film_promotional_video
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (design_specifications_finalized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (promotional_video_filmed))
    )
  )

  (:durative-action secure_funding
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (market_research_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (funding_secured))
    )
  )

  (:durative-action file_intellectual_property
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (prototype_created))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (intellectual_property_filed))
    )
  )

  (:durative-action stock_initial_inventory
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (market_research_completed))
      (at start (raw_materials_ordered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_inventory_stocked))
    )
  )

  (:durative-action order_raw_materials
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (market_research_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (raw_materials_ordered))
    )
  )
)