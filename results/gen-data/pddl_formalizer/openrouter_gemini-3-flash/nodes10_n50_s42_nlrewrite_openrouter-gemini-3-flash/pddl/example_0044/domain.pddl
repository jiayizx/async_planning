(define (domain pico_de_gallo_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tomatoes_diced)
    (produce_washed)
    (onion_minced)
    (mixture_chilled)
    (lime_juiced)
    (seasoned)
    (cilantro_chopped)
    (jalapeno_minced)
    (combined)
    (tossed)
  )

  (:durative-action wash_produce
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (produce_washed)))
  )

  (:durative-action dice_tomatoes
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (produce_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_diced)))
  )

  (:durative-action mince_onion
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onion_minced)))
  )

  (:durative-action toss_ingredients
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tossed)))
  )

  (:durative-action chop_cilantro
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)) (at start (tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cilantro_chopped)))
  )

  (:durative-action mince_jalapeno
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)) (at start (tossed)) (at start (cilantro_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jalapeno_minced)))
  )

  (:durative-action juice_lime
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lime_juiced)))
  )

  (:durative-action combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)) (at start (lime_juiced)) (at start (cilantro_chopped)) (at start (jalapeno_minced)) (at start (tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (combined)))
  )

  (:durative-action season_mixture
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)) (at start (lime_juiced)) (at start (combined)) (at start (tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoned)))
  )

  (:durative-action chill_mixture
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_diced)) (at start (produce_washed)) (at start (onion_minced)) (at start (cilantro_chopped)) (at start (jalapeno_minced)) (at start (tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_chilled)))
  )
)