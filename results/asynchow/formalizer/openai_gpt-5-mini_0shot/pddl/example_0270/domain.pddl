(define (domain caramel_frosting)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each step action
    (placed_pan_done)
    (added_sugar_done)
    (boiled_poured_done)
    (cooled_done)
    (powdered_done)
    (water_filled_done)
  )

  ; Step 1: Place a 2-quart sized saucepan over medium heat. (3 minutes = 180 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (placed_pan_done))
            )
  )

  ; Step 2: Add the brown sugar into the pan and stir. (5 minutes = 300 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (placed_pan_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (added_sugar_done))
            )
  )

  ; Step 3: Let the mixture boil for 2 minutes, then pour and stir in the milk. (2 minutes = 120 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (added_sugar_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (boiled_poured_done))
            )
  )

  ; Step 4: Set the saucepan on the side until it's cooled down. (15 minutes = 900 seconds)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (boiled_poured_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cooled_done))
            )
  )

  ; Step 5: Pour, a little at a time, the powdered sugar; stir as you pour. (5 minutes = 300 seconds)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cooled_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (powdered_done))
            )
  )

  ; Step 6: Fill a bowl with cold water. (1 minute = 60 seconds)
  ; Independent step (no ordering constraints with main chain)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (water_filled_done))
            )
  )
)
