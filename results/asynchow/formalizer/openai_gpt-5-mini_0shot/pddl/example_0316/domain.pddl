(define (domain baked-chicken)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gather_done)
    (prepare_done)
    (bake_done)
    (serve_done)
    (gravy_done)
    (spiced_done)
    (garlic_wine_done)
    (herby_done)
    (honey_dijon_done)
    (garlic_lemon_done)
  )

  (:durative-action do_step1_gather_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (garlic_lemon_done)) (at start (gravy_done)) (at start (spiced_done)) (at start (garlic_wine_done)) (at start (herby_done)) (at start (honey_dijon_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gather_done)))
  )

  (:durative-action do_step2_prepare_chicken
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (gather_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prepare_done)))
  )

  (:durative-action do_step3_bake_chicken
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (prepare_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bake_done)))
  )

  (:durative-action do_step4_finish_and_serve
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bake_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (serve_done)))
  )

  (:durative-action do_step5_make_basic_gravy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gravy_done)))
  )

  (:durative-action do_step6_make_spiced_chicken
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spiced_done)))
  )

  (:durative-action do_step7_make_garlic_and_white_wine_baked_chicken
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_wine_done)))
  )

  (:durative-action do_step8_make_herby_baked_chicken
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herby_done)))
  )

  (:durative-action do_step9_make_honey_dijon_baked_chicken
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (honey_dijon_done)))
  )

  (:durative-action do_step10_make_garlic_and_lemon_baked_chicken
    :parameters (?s - step)
    :duration (= ?duration 3000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_lemon_done)))
  )
)
