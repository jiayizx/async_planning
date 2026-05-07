(define (domain fresh_milk_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_cabinet)
    (glass_held)
    (at_fridge)
    (milk_held)
    (items_on_counter)
    (milk_poured)
    (milk_drunk)
  )

  (:durative-action step1_walk_to_cabinet
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_cabinet)))
  )

  (:durative-action step2_grab_glass
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (at_cabinet)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (glass_held)))
  )

  (:durative-action step5_walk_to_fridge
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_fridge)))
  )

  (:durative-action step6_grab_milk
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (at_fridge)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_held)))
  )

  (:durative-action step3_place_on_counter
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (glass_held)) (at start (milk_held)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (items_on_counter)))
  )

  (:durative-action step4_pour_milk
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (items_on_counter)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_poured)))
  )

  (:durative-action step7_drink_milk
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (milk_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_drunk)))
  )
)