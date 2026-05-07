(define (domain cook-mushrooms)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (heat_done)
    (prep_mush_done)
    (beat_egg_done)
    (add_batter_done)
    (coat_done)
    (fry_done)
    (drain_done)
  )

  ;; Step 1: Heat oil in a large, heavy stockpot. (300 seconds)
  (:durative-action heat_oil
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (heat_done))
            )
  )

  ;; Step 2: Prepare the mushrooms. (600 seconds)
  (:durative-action prepare_mushrooms
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (prep_mush_done))
            )
  )

  ;; Step 3: Beat the egg. (120 seconds)
  (:durative-action beat_egg
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (beat_egg_done))
            )
  )

  ;; Step 4: Add the remaining batter ingredients. (300 seconds)
  ;; Requires Step 3 (beat egg) to have finished
  (:durative-action add_batter
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (beat_egg_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (add_batter_done))
            )
  )

  ;; Step 5: Coat the mushrooms. (300 seconds)
  ;; Requires Step 2 (prepare mushrooms) and Step 4 (add batter) to have finished
  (:durative-action coat_mushrooms
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (prep_mush_done)) (at start (add_batter_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (coat_done))
            )
  )

  ;; Step 6: Deep-fry the mushrooms. (900 seconds)
  ;; Requires Step 1 (heat oil) and Step 5 (coat) to have finished
  (:durative-action deep_fry
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (heat_done)) (at start (coat_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (fry_done))
            )
  )

  ;; Step 7: Drain and serve. (120 seconds)
  ;; Requires Step 6 (fry) to have finished
  (:durative-action drain_and_serve
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (fry_done)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (drain_done))
            )
  )
)
