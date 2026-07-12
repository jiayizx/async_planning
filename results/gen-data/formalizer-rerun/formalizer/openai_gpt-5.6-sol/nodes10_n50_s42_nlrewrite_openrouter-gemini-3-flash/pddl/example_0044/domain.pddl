(define (domain pico-de-gallo)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (tomatoes_diced)
    (produce_washed)
    (onion_minced)
    (mixture_chilled)
    (lime_juiced)
    (mixture_seasoned)
    (cilantro_chopped)
    (jalapeno_minced)
    (lime_and_vegetables_combined)
    (tomatoes_and_onions_tossed)
  )

  (:durative-action dice_tomatoes
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (produce_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_diced)))
  )

  (:durative-action wash_produce
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (produce_washed)))
  )

  (:durative-action mince_onion
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (tomatoes_diced))
      (at start (produce_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onion_minced)))
  )

  (:durative-action chill_mixture
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (jalapeno_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_chilled)))
  )

  (:durative-action juice_lime
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lime_juiced)))
  )

  (:durative-action season_mixture
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (lime_and_vegetables_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_seasoned)))
  )

  (:durative-action chop_cilantro
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (tomatoes_and_onions_tossed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cilantro_chopped)))
  )

  (:durative-action mince_jalapeno
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (cilantro_chopped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jalapeno_minced)))
  )

  (:durative-action combine_lime_and_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (lime_juiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lime_and_vegetables_combined)))
  )

  (:durative-action toss_tomatoes_and_onions
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (onion_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_and_onions_tossed)))
  )
)