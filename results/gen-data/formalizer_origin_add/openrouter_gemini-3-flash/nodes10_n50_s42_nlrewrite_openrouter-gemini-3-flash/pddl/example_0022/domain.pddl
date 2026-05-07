(define (domain car_decoration)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sketch_done)
    (cobwebs_done)
    (legs_done)
    (inverter_bought)
    (lights_programmed)
    (fog_synced)
    (cleaned)
    (pumpkins_mounted)
    (adhesive_peeled)
    (decals_applied)
  )

  (:durative-action step10_sketch_design
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sketch_done)))
  )

  (:durative-action step2_drape_cobwebs
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (sketch_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cobwebs_done)))
  )

  (:durative-action step1_attach_legs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (cobwebs_done)) (at start (sketch_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (legs_done)))
  )

  (:durative-action step5_buy_inverter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inverter_bought)))
  )

  (:durative-action step3_program_lights
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (inverter_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lights_programmed)))
  )

  (:durative-action step7_sync_fog
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (lights_programmed)) (at start (inverter_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fog_synced)))
  )

  (:durative-action step6_clean_car
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaned)))
  )

  (:durative-action step9_mount_pumpkins
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (inverter_bought)) (at start (cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pumpkins_mounted)))
  )

  (:durative-action step8_peel_adhesive
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pumpkins_mounted)) (at start (inverter_bought)) (at start (cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adhesive_peeled)))
  )

  (:durative-action step4_apply_decals
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (adhesive_peeled)) (at start (pumpkins_mounted)) (at start (inverter_bought)) (at start (cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decals_applied)))
  )
)