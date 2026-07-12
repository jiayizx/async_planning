(define (domain halloween-car-decoration)
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
    (spider_legs_attached)
    (cobwebs_draped)
    (light_show_programmed)
    (window_decals_applied)
    (power_inverter_bought)
    (exterior_cleaned)
    (fog_machine_synchronized)
    (sticker_backing_peeled)
    (glowing_pumpkins_mounted)
    (design_sketched)
  )

  (:durative-action attach_spider_legs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (cobwebs_draped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spider_legs_attached))
    )
  )

  (:durative-action drape_fake_cobwebs
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (design_sketched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cobwebs_draped))
    )
  )

  (:durative-action program_internal_light_show
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (power_inverter_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (light_show_programmed))
    )
  )

  (:durative-action apply_window_decals
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (sticker_backing_peeled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (window_decals_applied))
    )
  )

  (:durative-action buy_power_inverter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (power_inverter_bought))
    )
  )

  (:durative-action clean_exterior_surface
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (exterior_cleaned))
    )
  )

  (:durative-action synchronize_fog_machine
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (light_show_programmed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fog_machine_synchronized))
    )
  )

  (:durative-action peel_sticker_backing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (glowing_pumpkins_mounted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sticker_backing_peeled))
    )
  )

  (:durative-action mount_glowing_pumpkins
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (power_inverter_bought))
      (at start (exterior_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (glowing_pumpkins_mounted))
    )
  )

  (:durative-action sketch_design
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (design_sketched))
    )
  )
)