(define (domain freeze_watermelon)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (syrup_boiled)
    (syrup_chilled)
    (watermelon_combined)
    (watermelon_covered)
    (watermelon_frozen)
  )

  (:durative-action boil_syrup
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_boiled)))
  )

  (:durative-action chill_syrup
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (syrup_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_chilled)))
  )

  (:durative-action cover_watermelon
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watermelon_covered)))
  )

  (:durative-action combine_watermelon_syrup
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (syrup_chilled)) (at start (watermelon_covered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watermelon_combined)))
  )

  (:durative-action freeze_fruit
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (watermelon_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watermelon_frozen)))
  )
)