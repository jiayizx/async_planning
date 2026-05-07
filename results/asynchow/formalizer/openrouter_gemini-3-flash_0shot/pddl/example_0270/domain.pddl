(define (domain caramel_frosting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (saucepan_heated)
    (sugar_added)
    (milk_added)
    (mixture_cooled)
    (frosting_finished)
    (bowl_filled)
  )

  (:durative-action heat_saucepan
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saucepan_heated)))
  )

  (:durative-action add_sugar
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (saucepan_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_added)))
  )

  (:durative-action boil_and_milk
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sugar_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_added)))
  )

  (:durative-action cool_saucepan
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (milk_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_cooled)))
  )

  (:durative-action add_powdered_sugar
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mixture_cooled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (frosting_finished)))
  )

  (:durative-action fill_bowl
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_filled)))
  )
)