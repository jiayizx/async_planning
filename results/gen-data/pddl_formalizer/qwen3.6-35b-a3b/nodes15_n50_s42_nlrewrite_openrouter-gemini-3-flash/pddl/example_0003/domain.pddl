(define (domain sandwich_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (sourdough_sliced)
    (lettuce_washed)
    (mayo_spread)
    (meat_layered)
    (pickles_sliced)
    (ingredients_out)
    (tools_ready)
    (tomatoes_seasoned)
    (tomatoes_rinsed)
    (sandwiches_closed)
    (tomatoes_sliced)
    (bread_toasted)
    (lettuce_placed)
    (onions_sliced)
    (cheese_added))

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start tools_ready))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end sourdough_sliced)))

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end lettuce_washed)))

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start bread_toasted))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end mayo_spread)))

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start cheese_added))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end meat_layered)))

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start ingredients_out) (at start tools_ready))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end pickles_sliced)))

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end ingredients_out)))

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end tools_ready)))

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start onions_sliced))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end tomatoes_seasoned)))

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start ingredients_out))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end tomatoes_rinsed)))

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start meat_layered) (at start tomatoes_sliced))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end sandwiches_closed)))

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start tomatoes_rinsed) (at start tools_ready))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end tomatoes_sliced)))

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start sourdough_sliced))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end bread_toasted)))

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start lettuce_washed) (at start mayo_spread))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end lettuce_placed)))

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (and (at start (step_pending ?s)) (at start ingredients_out) (at start tools_ready))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end onions_sliced)))

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start mayo_spread))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end cheese_added)))
)