(define (domain new-camera)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (models_researched)
    (funds_transferred)
    (floor_models_handled)
    (camera_ordered)
    (transfer_cleared)
    (accessories_purchased)
    (prices_compared)
    (package_delivered)
    (equipment_tested)
    (battery_charged)
  )

  (:durative-action research_camera_models
    :parameters (?s - step1_type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (models_researched))
    )
  )

  (:durative-action transfer_funds
    :parameters (?s - step2_type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (floor_models_handled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (funds_transferred))
    )
  )

  (:durative-action visit_photography_shop
    :parameters (?s - step3_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (models_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (floor_models_handled))
    )
  )

  (:durative-action order_camera_and_lens
    :parameters (?s - step4_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (prices_compared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_ordered))
    )
  )

  (:durative-action wait_for_transfer_clearance
    :parameters (?s - step5_type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (funds_transferred))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (transfer_cleared))
    )
  )

  (:durative-action purchase_card_and_case
    :parameters (?s - step6_type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accessories_purchased))
    )
  )

  (:durative-action compare_retailer_prices
    :parameters (?s - step7_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (floor_models_handled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prices_compared))
    )
  )

  (:durative-action wait_for_delivery
    :parameters (?s - step8_type)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (camera_ordered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (package_delivered))
    )
  )

  (:durative-action unbox_and_test_equipment
    :parameters (?s - step9_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (accessories_purchased))
      (at start (package_delivered))
      (at start (battery_charged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_tested))
    )
  )

  (:durative-action charge_battery
    :parameters (?s - step10_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (package_delivered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (battery_charged))
    )
  )
)