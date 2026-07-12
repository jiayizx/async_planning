(define (domain combat-boot-cleaning)
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
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (laces_removed) (conditioner_applied) (outsoles_scrubbed)
    (leather_buffed) (boot_trees_inserted) (wax_applied)
    (workstation_ready) (surface_dusted) (leather_wiped)
    (eyelets_cleaned) (laces_soaked) (supplies_gathered)
    (wax_cured) (soles_rinsed) (boots_protected)
    (polish_worked_in) (stones_removed) (edge_dressing_applied)
    (boots_inspected) (soapy_water_ready) (boots_air_dried)
    (mud_shaken_off) (sponge_dipped) (tongue_cleaned)
    (saddle_soap_applied) (edge_dressing_dried) (seams_brushed)
    (lining_scrubbed) (pull_through_threaded) (boots_relaced)
  )

  (:durative-action remove_laces
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laces_removed))))

  (:durative-action apply_conditioner
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (leather_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conditioner_applied))))

  (:durative-action scrub_outsoles
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (sponge_dipped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outsoles_scrubbed))))

  (:durative-action buff_leather
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (seams_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leather_buffed))))

  (:durative-action insert_boot_trees
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boot_trees_inserted))))

  (:durative-action apply_wax
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (surface_dusted)) (at start (stones_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wax_applied))))

  (:durative-action set_up_workstation
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workstation_ready))))

  (:durative-action remove_surface_dust
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (mud_shaken_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surface_dusted))))

  (:durative-action wipe_leather
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (lining_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leather_wiped))))

  (:durative-action clean_eyelets
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (mud_shaken_off)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eyelets_cleaned))))

  (:durative-action soak_laces
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (laces_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laces_soaked))))

  (:durative-action gather_supplies
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (workstation_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered))))

  (:durative-action cure_wax
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (polish_worked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wax_cured))))

  (:durative-action rinse_soles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (outsoles_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soles_rinsed))))

  (:durative-action apply_protector
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (boots_relaced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_protected))))

  (:durative-action work_in_polish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (wax_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (polish_worked_in))))

  (:durative-action remove_stones
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (seams_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stones_removed))))

  (:durative-action apply_edge_dressing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (surface_dusted)) (at start (saddle_soap_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edge_dressing_applied))))

  (:durative-action inspect_boots
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (workstation_ready)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_inspected))))

  (:durative-action prepare_soapy_water
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soapy_water_ready))))

  (:durative-action air_dry_boots
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_air_dried))))

  (:durative-action shake_off_mud
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (workstation_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mud_shaken_off))))

  (:durative-action dip_sponge
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (soapy_water_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sponge_dipped))))

  (:durative-action clean_tongue
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (pull_through_threaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_cleaned))))

  (:durative-action apply_saddle_soap
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (leather_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saddle_soap_applied))))

  (:durative-action dry_edge_dressing
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (edge_dressing_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edge_dressing_dried))))

  (:durative-action brush_seams
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seams_brushed))))

  (:durative-action scrub_lining
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (soapy_water_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lining_scrubbed))))

  (:durative-action thread_pull_through
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (laces_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pull_through_threaded))))

  (:durative-action relace_boots
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (boot_trees_inserted)) (at start (edge_dressing_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_relaced))))
)