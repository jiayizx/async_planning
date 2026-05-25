(define (domain combat_boot_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (laces_removed)
    (conditioner_applied)
    (outsoles_scrubbed)
    (leather_buffed)
    (trees_inserted)
    (wax_applied)
    (workstation_ready)
    (dust_removed)
    (leather_wiped)
    (eyelets_cleaned)
    (laces_soaked)
    (supplies_gathered)
    (wax_cured)
    (mud_rinsed)
    (protector_applied)
    (polish_worked)
    (stones_removed)
    (edge_dressed)
    (boots_inspected)
    (bucket_filled)
    (boots_air_dried)
    (mud_shaken)
    (sponge_dipped)
    (tongue_cleaned)
    (saddle_soap_applied)
    (edge_dried)
    (welt_brushed)
    (lining_scrubbed)
    (tool_threaded)
    (boots_relaced)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laces_removed)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (leather_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conditioner_applied)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (sponge_dipped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outsoles_scrubbed)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (welt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leather_buffed)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trees_inserted)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (dust_removed)) (at start (stones_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wax_applied)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workstation_ready)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (mud_shaken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dust_removed)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (lining_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leather_wiped)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (mud_shaken)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eyelets_cleaned)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (laces_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laces_soaked)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (workstation_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (polish_worked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wax_cured)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (outsoles_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mud_rinsed)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (boots_relaced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protector_applied)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (wax_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (polish_worked)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (welt_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stones_removed)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dust_removed)) (at start (saddle_soap_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edge_dressed)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (workstation_ready)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_inspected)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bucket_filled)))
  )

  (:durative-action step21
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (tongue_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_air_dried)))
  )

  (:durative-action step22
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (workstation_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mud_shaken)))
  )

  (:durative-action step23
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (bucket_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sponge_dipped)))
  )

  (:durative-action step24
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (tool_threaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tongue_cleaned)))
  )

  (:durative-action step25
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (leather_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saddle_soap_applied)))
  )

  (:durative-action step26
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (edge_dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edge_dried)))
  )

  (:durative-action step27
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (welt_brushed)))
  )

  (:durative-action step28
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (bucket_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lining_scrubbed)))
  )

  (:durative-action step29
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (laces_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tool_threaded)))
  )

  (:durative-action step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (trees_inserted)) (at start (edge_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_relaced)))
  )
)