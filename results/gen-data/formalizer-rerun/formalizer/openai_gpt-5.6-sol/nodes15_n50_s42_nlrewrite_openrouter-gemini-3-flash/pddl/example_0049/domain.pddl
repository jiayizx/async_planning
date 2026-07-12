(define (domain new-sofa-planning)
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
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (delivery_installation_scheduled)
    (room_measured)
    (credit_card_approved)
    (fabric_catalogs_browsed)
    (area_cleared)
    (payment_processed)
    (family_preferences_discussed)
    (cushion_firmness_tested)
    (throw_pillows_ordered)
    (sofa_manufactured)
    (cleaning_supplies_purchased)
    (model_and_finish_selected)
    (official_order_placed)
    (upholstery_researched)
    (sofa_at_local_warehouse)
  )

  (:durative-action schedule_delivery_installation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (credit_card_approved))
      (at start (payment_processed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (delivery_installation_scheduled)))
  )

  (:durative-action measure_room_and_doorways
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (room_measured)))
  )

  (:durative-action apply_for_credit_card
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (credit_card_approved)))
  )

  (:durative-action browse_fabric_catalogs
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (family_preferences_discussed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fabric_catalogs_browsed)))
  )

  (:durative-action clear_and_vacuum_area
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (model_and_finish_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (area_cleared)))
  )

  (:durative-action finalize_purchase_payment
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (sofa_at_local_warehouse)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (payment_processed)))
  )

  (:durative-action discuss_budget_and_colors
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (family_preferences_discussed)))
  )

  (:durative-action test_cushion_firmness
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (room_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cushion_firmness_tested)))
  )

  (:durative-action order_custom_throw_pillows
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (fabric_catalogs_browsed))
      (at start (upholstery_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (throw_pillows_ordered)))
  )

  (:durative-action manufacture_and_pack_sofa
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (official_order_placed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sofa_manufactured)))
  )

  (:durative-action purchase_cleaning_supplies
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (credit_card_approved))
      (at start (upholstery_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cleaning_supplies_purchased)))
  )

  (:durative-action select_model_and_wood_finish
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (room_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (model_and_finish_selected)))
  )

  (:durative-action place_official_order
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (cushion_firmness_tested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (official_order_placed)))
  )

  (:durative-action research_upholstery_materials
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (room_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (upholstery_researched)))
  )

  (:durative-action wait_for_warehouse_arrival
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (sofa_manufactured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sofa_at_local_warehouse)))
  )
)