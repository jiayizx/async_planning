(define (domain grab-paper)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step)
    (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step)
    (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (ream_loaded)
    (at_supply_closet_door)
    (paper_weight_found)
    (supply_closet_unlocked)
    (withdrawal_logged)
    (secondary_storage_identified)
    (paper_stack_pulled)
    (printer_empty_confirmed)
    (working_pen_found)
    (office_manager_located)
    (alignment_page_printed)
    (paper_type_determined)
    (department_code_written)
    (supply_key_signed_out)
    (possible_stockout_realized)
    (acid_free_verified)
    (spare_closet_location_known)
    (at_secondary_storage)
    (digital_inventory_checked)
    (printer_powered)
  )

  (:durative-action load_ream
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (printer_empty_confirmed))
      (at start (supply_key_signed_out)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ream_loaded))))

  (:durative-action walk_to_supply_closet
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (at_supply_closet_door))))

  (:durative-action search_top_shelf
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (supply_closet_unlocked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paper_weight_found))))

  (:durative-action unlock_supply_closet
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (at_supply_closet_door))
      (at start (paper_type_determined))
      (at start (spare_closet_location_known)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (supply_closet_unlocked))))

  (:durative-action log_withdrawal
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (working_pen_found))
      (at start (department_code_written)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (withdrawal_logged))))

  (:durative-action check_office_map
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (possible_stockout_realized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (secondary_storage_identified))))

  (:durative-action pull_paper_stack
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (paper_weight_found))
      (at start (at_secondary_storage)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paper_stack_pulled))))

  (:durative-action confirm_printer_empty
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (printer_empty_confirmed))))

  (:durative-action find_working_pen
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (working_pen_found))))

  (:durative-action locate_office_manager
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (office_manager_located))))

  (:durative-action print_alignment_page
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (acid_free_verified))
      (at start (printer_powered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (alignment_page_printed))))

  (:durative-action determine_paper_type
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paper_type_determined))))

  (:durative-action write_department_code
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (department_code_written))))

  (:durative-action sign_out_supply_key
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (office_manager_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (supply_key_signed_out))))

  (:durative-action realize_possible_stockout
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (possible_stockout_realized))))

  (:durative-action verify_acid_free
    :parameters (?s - step)
    :duration (= ?duration 40)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (paper_weight_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (acid_free_verified))))

  (:durative-action ask_custodian
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (possible_stockout_realized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spare_closet_location_known))))

  (:durative-action walk_to_secondary_storage
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (secondary_storage_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (at_secondary_storage))))

  (:durative-action check_digital_inventory
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (paper_type_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (digital_inventory_checked))))

  (:durative-action turn_on_printer
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (printer_powered))))
)