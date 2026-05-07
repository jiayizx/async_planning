(define (domain get-rabbit)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (drove_done)
    (looked_done)
    (picked_done)
    (food_done)
    (supplies_done)
    (waited_done)
    (purchased_done)
  )

  (:durative-action do_step1_drive_to_pet_shop
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drove_done))
    )
  )

  (:durative-action do_step2_look_at_rabbits
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (drove_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (looked_done))
    )
  )

  (:durative-action do_step3_pick_out_rabbit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (looked_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (picked_done))
    )
  )

  (:durative-action do_step4_shop_for_pet_food
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (picked_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (food_done))
    )
  )

  (:durative-action do_step5_shop_for_pet_supplies
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (picked_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (supplies_done))
    )
  )

  (:durative-action do_step6_wait_in_line
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (food_done)) (at start (supplies_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (waited_done))
    )
  )

  (:durative-action do_step7_make_the_purchase
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (waited_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (purchased_done))
    )
  )
)
