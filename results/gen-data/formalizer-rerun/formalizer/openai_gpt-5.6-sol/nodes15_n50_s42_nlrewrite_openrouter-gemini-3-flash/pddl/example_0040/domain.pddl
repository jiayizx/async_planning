(define (domain pico-de-gallo)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tomatoes_diced)
    (onion_peeled)
    (cilantro_minced)
    (jalapenos_limes_washed)
    (tomato_seeds_removed)
    (jalapenos_sliced)
    (jalapenos_minced)
    (onion_diced)
    (produce_gathered)
    (tomatoes_cilantro_combined)
    (mixture_seasoned)
    (lime_juice_squeezed)
    (tools_cleaned)
    (onion_chopped)
    (pico_ready))

  (:durative-action dice-tomatoes
    :parameters (?s - step1_type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (produce_gathered))
      (at start (tools_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_diced))))

  (:durative-action peel-onion
    :parameters (?s - step2_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onion_peeled))))

  (:durative-action mince-cilantro
    :parameters (?s - step3_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomato_seeds_removed))
      (at start (onion_chopped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cilantro_minced))))

  (:durative-action wash-jalapenos-limes
    :parameters (?s - step4_type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jalapenos_limes_washed))))

  (:durative-action remove-tomato-seeds
    :parameters (?s - step5_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomatoes_diced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomato_seeds_removed))))

  (:durative-action slice-jalapenos
    :parameters (?s - step6_type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (jalapenos_limes_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jalapenos_sliced))))

  (:durative-action mince-jalapenos
    :parameters (?s - step7_type)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (jalapenos_sliced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jalapenos_minced))))

  (:durative-action dice-onion
    :parameters (?s - step8_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (onion_peeled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onion_diced))))

  (:durative-action gather-produce
    :parameters (?s - step9_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (produce_gathered))))

  (:durative-action combine-tomatoes-cilantro
    :parameters (?s - step10_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomatoes_diced))
      (at start (cilantro_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomatoes_cilantro_combined))))

  (:durative-action season-mixture
    :parameters (?s - step11_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomatoes_cilantro_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_seasoned))))

  (:durative-action squeeze-limes
    :parameters (?s - step12_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (jalapenos_limes_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lime_juice_squeezed))))

  (:durative-action clean-tools
    :parameters (?s - step13_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (jalapenos_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tools_cleaned))))

  (:durative-action chop-onion
    :parameters (?s - step14_type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (onion_peeled))
      (at start (jalapenos_limes_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onion_chopped))))

  (:durative-action final-mixing
    :parameters (?s - step15_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (cilantro_minced))
      (at start (tools_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pico_ready))))
)