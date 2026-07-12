(define (domain pill-bottle-reuse)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (decorative_labels_applied)
    (item_lists_printed)
    (supplies_sorted)
    (cap_glue_dried)
    (figurines_attached)
    (bottles_soaked)
    (bottles_stored)
    (original_labels_removed)
    (interiors_rinsed)
    (bottles_gathered)
    (sticky_residue_scrubbed)
    (old_labels_recycled)
    (caps_removed)
    (supplies_inventoried)
    (bottles_air_dried)
    (bottles_sanitized)
    (bottles_checked_empty)
    (custom_labels_designed)
    (bottles_wiped)
    (dishwasher_cycle_completed)
  )

  (:durative-action apply_decorative_labels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (sticky_residue_scrubbed)) (at start (bottles_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decorative_labels_applied))))

  (:durative-action print_item_lists
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (custom_labels_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (item_lists_printed))))

  (:durative-action sort_supplies
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (original_labels_removed)) (at start (interiors_rinsed)) (at start (bottles_air_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_sorted))))

  (:durative-action dry_cap_glue
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (figurines_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cap_glue_dried))))

  (:durative-action attach_figurines
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (figurines_attached))))

  (:durative-action soak_bottles
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (caps_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_soaked))))

  (:durative-action store_bottles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (bottles_air_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_stored))))

  (:durative-action remove_original_labels
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (original_labels_removed))))

  (:durative-action rinse_interiors
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interiors_rinsed))))

  (:durative-action gather_bottles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_gathered))))

  (:durative-action scrub_sticky_residue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (bottles_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sticky_residue_scrubbed))))

  (:durative-action recycle_old_labels
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (original_labels_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (old_labels_recycled))))

  (:durative-action remove_caps
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (caps_removed))))

  (:durative-action inventory_supplies
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (custom_labels_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_inventoried))))

  (:durative-action air_dry_bottles
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (dishwasher_cycle_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_air_dried))))

  (:durative-action sanitize_bottles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (original_labels_removed)) (at start (bottles_air_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_sanitized))))

  (:durative-action check_bottles_empty
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (bottles_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_checked_empty))))

  (:durative-action design_custom_labels
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (custom_labels_designed))))

  (:durative-action wipe_bottles
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (interiors_rinsed)) (at start (dishwasher_cycle_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottles_wiped))))

  (:durative-action run_dishwasher_cycle
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (bottles_checked_empty)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dishwasher_cycle_completed))))
)