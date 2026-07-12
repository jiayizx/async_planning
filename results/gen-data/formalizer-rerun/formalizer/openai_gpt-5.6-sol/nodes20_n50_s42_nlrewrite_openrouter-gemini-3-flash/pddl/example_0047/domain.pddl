(define (domain chicken-curry)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (chicken_sauteed)
    (onions_diced)
    (spice_blend_measured)
    (curry_base_simmered)
    (garnish_prepared)
    (rice_washed)
    (ginger_peeled)
    (cumin_toasted)
    (turmeric_bloomed)
    (spices_ground)
    (ingredients_bought)
    (rice_soaked)
    (curry_plated)
    (marinade_mixed)
    (knives_sharpened)
    (garlic_minced)
    (chicken_garnish_combined)
    (raita_prepared)
    (rice_boiled)
    (mortar_cleaned)
  )

  (:durative-action saute-chicken
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (marinade_mixed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chicken_sauteed))))

  (:durative-action dice-onions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
      (at start (ginger_peeled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onions_diced))))

  (:durative-action measure-spice-blend
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spice_blend_measured))))

  (:durative-action simmer-curry-base
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s))
      (at start (cumin_toasted))
      (at start (turmeric_bloomed))
      (at start (garlic_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (curry_base_simmered))))

  (:durative-action prepare-garnish
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garnish_prepared))))

  (:durative-action wash-rice
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (is_step6 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rice_washed))))

  (:durative-action peel-ginger
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step7 ?s))
      (at start (step_pending ?s))
      (at start (ingredients_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ginger_peeled))))

  (:durative-action toast-cumin
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (is_step8 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cumin_toasted))))

  (:durative-action bloom-turmeric
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (is_step9 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turmeric_bloomed))))

  (:durative-action grind-spices
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (is_step10 ?s))
      (at start (step_pending ?s))
      (at start (mortar_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spices_ground))))

  (:durative-action buy-ingredients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (is_step11 ?s))
      (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_bought))))

  (:durative-action soak-rice
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (is_step12 ?s))
      (at start (step_pending ?s))
      (at start (rice_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rice_soaked))))

  (:durative-action plate-curry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step13 ?s))
      (at start (step_pending ?s))
      (at start (rice_boiled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (curry_plated))))

  (:durative-action mix-marinade
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step14 ?s))
      (at start (step_pending ?s))
      (at start (spice_blend_measured))
      (at start (spices_ground)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marinade_mixed))))

  (:durative-action sharpen-knives
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (is_step15 ?s))
      (at start (step_pending ?s))
      (at start (ingredients_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (knives_sharpened))))

  (:durative-action mince-garlic
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (is_step16 ?s))
      (at start (step_pending ?s))
      (at start (knives_sharpened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garlic_minced))))

  (:durative-action combine-chicken-and-garnish
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step17 ?s))
      (at start (step_pending ?s))
      (at start (chicken_sauteed))
      (at start (garnish_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chicken_garnish_combined))))

  (:durative-action prepare-raita
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step18 ?s))
      (at start (step_pending ?s))
      (at start (turmeric_bloomed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (raita_prepared))))

  (:durative-action boil-rice
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step19 ?s))
      (at start (step_pending ?s))
      (at start (rice_soaked))
      (at start (mortar_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rice_boiled))))

  (:durative-action clean-mortar
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and
      (at start (is_step20 ?s))
      (at start (step_pending ?s))
      (at start (cumin_toasted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mortar_cleaned))))
)