(define (domain measure-countertops)
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
    (surfaces_cleared)
    (sink_cutout_checked)
    (floor_plan_finalized)
    (outlets_marked)
    (laser_calibrated)
    (slab_measured)
    (perimeter_sketched)
    (edge_profile_noted)
    (wall_distance_measured)
    (measuring_tape_purchased)
    (surfaces_wiped)
    (notepad_found)
    (layout_photographed)
    (suppliers_researched)
    (square_footage_calculated)
    (backsplash_verified)
    (slab_availability_checked)
    (overhang_determined)
    (template_printed)
    (dimensions_emailed)
  )

  (:durative-action clear_surfaces
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (measuring_tape_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surfaces_cleared)))
  )

  (:durative-action check_sink_cutout
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (backsplash_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sink_cutout_checked)))
  )

  (:durative-action finalize_floor_plan
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (outlets_marked)) (at start (layout_photographed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (floor_plan_finalized)))
  )

  (:durative-action mark_outlets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (overhang_determined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outlets_marked)))
  )

  (:durative-action calibrate_laser
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laser_calibrated)))
  )

  (:durative-action measure_main_slab
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (laser_calibrated)) (at start (surfaces_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slab_measured)))
  )

  (:durative-action sketch_perimeter
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (wall_distance_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (perimeter_sketched)))
  )

  (:durative-action note_edge_profile
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (layout_photographed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edge_profile_noted)))
  )

  (:durative-action measure_wall_distance
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (notepad_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wall_distance_measured)))
  )

  (:durative-action purchase_measuring_tape
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (template_printed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measuring_tape_purchased)))
  )

  (:durative-action wipe_surfaces
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (surfaces_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surfaces_wiped)))
  )

  (:durative-action find_notepad
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (notepad_found)))
  )

  (:durative-action photograph_layout
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (template_printed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_photographed)))
  )

  (:durative-action research_suppliers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (suppliers_researched)))
  )

  (:durative-action calculate_square_footage
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (sink_cutout_checked)) (at start (slab_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (square_footage_calculated)))
  )

  (:durative-action verify_backsplash
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (perimeter_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backsplash_verified)))
  )

  (:durative-action check_slab_availability
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (suppliers_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slab_availability_checked)))
  )

  (:durative-action determine_overhang
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (edge_profile_noted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (overhang_determined)))
  )

  (:durative-action print_template
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (template_printed)))
  )

  (:durative-action email_dimensions
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (square_footage_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_emailed)))
  )
)