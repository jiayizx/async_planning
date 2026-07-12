(define (domain budget-kitchen-update)
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
    (hardware_installed)
    (primer_applied)
    (shelves_hung)
    (topcoat_applied)
    (cabinets_painted)
    (doors_cleaned_sanded)
    (backsplash_measured)
    (tiles_brackets_purchased)
    (materials_researched)
    (adhesive_grout_bought)
    (secondhand_supplies_browsed)
    (laminate_ordered)
    (power_sander_rented)
    (budget_set)
    (countertops_cleared)
    (rollers_brushes_picked_up)
    (cabinet_paint_cured)
    (tutorials_watched)
    (countertops_walls_cleaned)
    (shelves_styled)
  )

  (:durative-action install_hardware
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (tutorials_watched)) (at start (countertops_walls_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_installed))))

  (:durative-action apply_primer
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (doors_cleaned_sanded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (primer_applied))))

  (:durative-action hang_shelves
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (tiles_brackets_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shelves_hung))))

  (:durative-action apply_topcoat
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (tiles_brackets_purchased)) (at start (cabinet_paint_cured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (topcoat_applied))))

  (:durative-action paint_cabinets
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (primer_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cabinets_painted))))

  (:durative-action clean_sand_doors
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (laminate_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (doors_cleaned_sanded))))

  (:durative-action measure_backsplash
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (materials_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backsplash_measured))))

  (:durative-action purchase_tiles_brackets
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (materials_researched)) (at start (secondhand_supplies_browsed)) (at start (rollers_brushes_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tiles_brackets_purchased))))

  (:durative-action research_materials
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (budget_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_researched))))

  (:durative-action buy_adhesive_grout
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (backsplash_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adhesive_grout_bought))))

  (:durative-action browse_secondhand_supplies
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (budget_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (secondhand_supplies_browsed))))

  (:durative-action order_laminate
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (adhesive_grout_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laminate_ordered))))

  (:durative-action rent_power_sander
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (tutorials_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_sander_rented))))

  (:durative-action set_budget
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_set))))

  (:durative-action clear_countertops
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countertops_cleared))))

  (:durative-action pick_up_rollers_brushes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (secondhand_supplies_browsed)) (at start (power_sander_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rollers_brushes_picked_up))))

  (:durative-action cure_cabinet_paint
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (cabinets_painted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cabinet_paint_cured))))

  (:durative-action watch_tutorials
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (secondhand_supplies_browsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tutorials_watched))))

  (:durative-action deep_clean_surfaces
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (adhesive_grout_bought)) (at start (countertops_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countertops_walls_cleaned))))

  (:durative-action style_shelves
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (shelves_hung)) (at start (tutorials_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shelves_styled))))
)