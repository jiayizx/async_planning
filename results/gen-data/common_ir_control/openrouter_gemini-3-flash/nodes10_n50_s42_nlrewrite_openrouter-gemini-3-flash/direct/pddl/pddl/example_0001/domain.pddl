(define (domain product_launch)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (marketing_launched)
    (prototype_created)
    (user_testing_done)
    (design_finalized)
    (market_research_done)
    (video_filmed)
    (funding_secured)
    (legal_filed)
    (inventory_stocked)
    (orders_placed)
  )

  (:durative-action step5_market_research
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (market_research_done)))
  )

  (:durative-action step7_secure_funding
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (market_research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (funding_secured)))
  )

  (:durative-action step10_place_orders
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (market_research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orders_placed)))
  )

  (:durative-action step2_create_prototype
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (funding_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prototype_created)))
  )

  (:durative-action step3_user_testing
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (prototype_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (user_testing_done)))
  )

  (:durative-action step8_file_legal
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (prototype_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (legal_filed)))
  )

  (:durative-action step4_finalize_design
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (user_testing_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_finalized)))
  )

  (:durative-action step6_film_video
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (design_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_filmed)))
  )

  (:durative-action step1_launch_marketing
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (video_filmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marketing_launched)))
  )

  (:durative-action step9_stock_inventory
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (market_research_done)) (at start (orders_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inventory_stocked)))
  )
)