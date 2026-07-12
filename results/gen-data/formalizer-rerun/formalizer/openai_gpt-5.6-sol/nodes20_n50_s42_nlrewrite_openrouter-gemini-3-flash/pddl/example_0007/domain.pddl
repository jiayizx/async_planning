(define (domain hardwood-guitar-controller)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type
    step16type step17type step18type step19type step20type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cad_layout_designed)
    (neck_blanks_cut)
    (neck_wood_prepared)
    (motherboard_cavity_milled)
    (button_switches_soldered)
    (polyurethane_finish_applied)
    (neck_body_assembled)
    (firmware_flashed)
    (fret_slots_carved)
    (strum_tension_tested)
    (microcontroller_obtained)
    (controls_3d_printed)
    (buttons_wired)
    (body_cnc_machined)
    (hardwood_purchased)
    (final_hardware_installed)
    (cavity_shielded)
    (ergonomic_concepts_sketched)
    (machinery_calibrated)
    (backplate_laser_cut)
  )

  (:durative-action design_cad_layout
    :parameters (?s - step1type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (ergonomic_concepts_sketched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cad_layout_designed))
    )
  )

  (:durative-action cut_neck_blanks
    :parameters (?s - step2type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (hardwood_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neck_blanks_cut))
    )
  )

  (:durative-action prepare_neck_wood
    :parameters (?s - step3type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (neck_blanks_cut))
      (at start (machinery_calibrated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neck_wood_prepared))
    )
  )

  (:durative-action mill_motherboard_cavity
    :parameters (?s - step4type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (body_cnc_machined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (motherboard_cavity_milled))
    )
  )

  (:durative-action solder_button_switches
    :parameters (?s - step5type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (firmware_flashed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (button_switches_soldered))
    )
  )

  (:durative-action apply_polyurethane_finish
    :parameters (?s - step6type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (neck_body_assembled))
      (at start (fret_slots_carved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (polyurethane_finish_applied))
    )
  )

  (:durative-action assemble_neck_and_body
    :parameters (?s - step7type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (controls_3d_printed))
      (at start (buttons_wired))
      (at start (body_cnc_machined))
      (at start (backplate_laser_cut))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neck_body_assembled))
    )
  )

  (:durative-action flash_firmware
    :parameters (?s - step8type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (microcontroller_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (firmware_flashed))
    )
  )

  (:durative-action carve_fret_slots
    :parameters (?s - step9type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (neck_wood_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fret_slots_carved))
    )
  )

  (:durative-action test_strum_tension
    :parameters (?s - step10type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (backplate_laser_cut))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strum_tension_tested))
    )
  )

  (:durative-action order_microcontroller
    :parameters (?s - step11type)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (microcontroller_obtained))
    )
  )

  (:durative-action print_strum_bar_and_buttons
    :parameters (?s - step12type)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (controls_3d_printed))
    )
  )

  (:durative-action wire_buttons
    :parameters (?s - step13type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (button_switches_soldered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buttons_wired))
    )
  )

  (:durative-action cnc_machine_body
    :parameters (?s - step14type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (cad_layout_designed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (body_cnc_machined))
    )
  )

  (:durative-action purchase_hardwood
    :parameters (?s - step15type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (machinery_calibrated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hardwood_purchased))
    )
  )

  (:durative-action install_final_hardware
    :parameters (?s - step16type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (polyurethane_finish_applied))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_hardware_installed))
    )
  )

  (:durative-action shield_internal_cavity
    :parameters (?s - step17type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (motherboard_cavity_milled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cavity_shielded))
    )
  )

  (:durative-action sketch_ergonomic_concepts
    :parameters (?s - step18type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ergonomic_concepts_sketched))
    )
  )

  (:durative-action calibrate_shop_machinery
    :parameters (?s - step19type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (machinery_calibrated))
    )
  )

  (:durative-action laser_cut_backplate
    :parameters (?s - step20type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (backplate_laser_cut))
    )
  )
)