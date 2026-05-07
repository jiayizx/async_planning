(define (domain alcohol_breath_cure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (water_drunk)
    (teeth_brushed)
    (mouth_rinsed)
    (meal_eaten)
    (gum_chewed)
  )

  (:durative-action drink_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_drunk)))
  )

  (:durative-action brush_teeth
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (water_drunk)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed)))
  )

  (:durative-action rinse_mouthwash
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mouth_rinsed)))
  )

  (:durative-action eat_meal
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_eaten)))
  )

  (:durative-action chew_gum
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (meal_eaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gum_chewed)))
  )
)