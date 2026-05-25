(define (domain pico_de_gallo)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (washed_produce)
    (tomatoes_diced)
    (onion_minced)
    (tomatoes_onions_tossed)
    (cilantro_chopped)
    (jalapeno_minced)
    (lime_juiced)
    (vegetables_combined)
    (seasoned)
    (chilled)
  )

  (:durative-action wash_produce
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed_produce)))
  )

  (:durative-action dice_tomatoes
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (washed_produce)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_diced)))
  )

  (:durative-action mince_onion
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (washed_produce)) (at start (tomatoes_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onion_minced)))
  )

  (:durative-action toss_tomatoes_onions
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (onion_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_onions_tossed)))
  )

  (:durative-action chop_cilantro
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (tomatoes_onions_tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cilantro_chopped)))
  )

  (:durative-action mince_jalapeno
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (cilantro_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jalapeno_minced)))
  )

  (:durative-action juice_lime
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lime_juiced)))
  )

  (:durative-action combine_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (lime_juiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_combined)))
  )

  (:durative-action season
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoned)))
  )

  (:durative-action chill_mixture
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (jalapeno_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chilled)))
  )
)