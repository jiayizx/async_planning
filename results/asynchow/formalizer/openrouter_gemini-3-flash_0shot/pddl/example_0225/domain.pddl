(define (domain ironing_avoidance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (steamer_bought)
    (steamer_ready)
    (item_on_hanger)
    (steaming_complete)
    (clothes_in_shower)
  )

  (:durative-action buy_steamer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steamer_bought)))
  )

  (:durative-action fill_and_turn_on
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (steamer_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steamer_ready)))
  )

  (:durative-action put_on_hanger
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (item_on_hanger)))
  )

  (:durative-action steam_wrinkles
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (steamer_ready)) (at start (item_on_hanger)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steaming_complete)))
  )

  (:durative-action hang_in_shower
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_in_shower)))
  )
)