(define (domain salad_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (chickpeas_soaked)
    (vegetables_diced)
    (dressing_whisked)
    (dressing_chilled)
    (chickpeas_beans_combined)
    (parsley_garnished)
    (garlic_added)
    (chickpeas_boiled)
    (salad_tossed)
    (parsley_washed)
  )

  (:durative-action soak_chickpeas
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_soaked)))
  )

  (:durative-action dice_vegetables
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_diced)))
  )

  (:durative-action whisk_dressing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressing_whisked)))
  )

  (:durative-action chill_dressing
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (dressing_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressing_chilled)))
  )

  (:durative-action boil_chickpeas
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (chickpeas_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_boiled)))
  )

  (:durative-action combine_legumes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (chickpeas_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chickpeas_beans_combined)))
  )

  (:durative-action add_garlic
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (dressing_chilled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_added)))
  )

  (:durative-action wash_parsley
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_washed)))
  )

  (:durative-action toss_salad
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_diced)) (at start (dressing_whisked)) (at start (garlic_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salad_tossed)))
  )

  (:durative-action garnish_parsley
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (parsley_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_garnished)))
  )
)