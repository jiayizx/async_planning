(define (domain hurricane-window-protection)
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
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (frames_measured)
    (workspace_cleaned)
    (adhesive_applied)
    (edges_sealed)
    (hardware_kit_located)
    (supplies_purchased)
    (pilot_holes_drilled)
    (patio_cleared)
    (plywood_cut)
    (tools_inspected)
    (boards_labeled)
    (plywood_sanded)
    (shutters_positioned)
    (weather_checked)
    (water_repellent_applied)
    (hardware_sorted)
    (boards_painted)
    (safety_equipment_organized)
    (batteries_charged)
    (boards_secured)
  )

  (:durative-action measure_frames
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (supplies_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frames_measured))))

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (hardware_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned))))

  (:durative-action apply_adhesive
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (boards_painted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adhesive_applied))))

  (:durative-action seal_edges
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (safety_equipment_organized)) (at start (boards_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edges_sealed))))

  (:durative-action locate_hardware_kit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_kit_located))))

  (:durative-action purchase_supplies
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (tools_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_purchased))))

  (:durative-action drill_pilot_holes
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (batteries_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pilot_holes_drilled))))

  (:durative-action clear_patio
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patio_cleared))))

  (:durative-action cut_plywood
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (frames_measured)) (at start (patio_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plywood_cut))))

  (:durative-action inspect_tools
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (hardware_kit_located)) (at start (pilot_holes_drilled)) (at start (patio_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_inspected))))

  (:durative-action label_boards
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (plywood_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boards_labeled))))

  (:durative-action sand_plywood
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (supplies_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plywood_sanded))))

  (:durative-action position_shutters
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (water_repellent_applied)) (at start (safety_equipment_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shutters_positioned))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))

  (:durative-action apply_water_repellent
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (adhesive_applied)) (at start (pilot_holes_drilled)) (at start (plywood_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_repellent_applied))))

  (:durative-action sort_hardware
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (safety_equipment_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_sorted))))

  (:durative-action paint_boards
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (plywood_sanded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boards_painted))))

  (:durative-action organize_safety_equipment
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_equipment_organized))))

  (:durative-action charge_batteries
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batteries_charged))))

  (:durative-action secure_boards
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (shutters_positioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boards_secured))))
)