(define (domain cure_alcohol_breath)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rinse_done)
    (drink_done)
    (brush_done)
    (gum_done)
    (meal_done)
  )

  ; Step 1: Rinse with an alcohol-free mouthwash
  (:durative-action do_step1_rinse
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (brush_done)) (at start (drink_done)))
    :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (rinse_done))
            )
  )

  ; Step 2: Drink a large glass of water to hydrate
  (:durative-action do_step2_drink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (drink_done))
            )
  )

  ; Step 3: Thoroughly brush teeth and tongue
  (:durative-action do_step3_brush
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (drink_done)))
    :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (brush_done))
            )
  )

  ; Step 4: Chew menthol gum
  (:durative-action do_step4_gum
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (meal_done)))
    :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (gum_done))
            )
  )

  ; Step 5: Eat a meal containing parsley/garlic-neutralizing foods
  (:durative-action do_step5_meal
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (meal_done))
            )
  )
)
