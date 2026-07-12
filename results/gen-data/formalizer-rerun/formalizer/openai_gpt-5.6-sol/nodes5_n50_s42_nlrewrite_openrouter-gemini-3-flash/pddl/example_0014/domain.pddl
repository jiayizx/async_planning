(define (domain cure-alcohol-breath)
  (:requirements :typing :durative-actions)

  (:types
    step
    step1-type step2-type step3-type step4-type step5-type - step
  )

  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (mouth-rinsed)
    (water-consumed)
    (teeth-and-tongue-brushed)
    (menthol-gum-chewed)
    (neutralizing-meal-eaten)
  )

  (:durative-action rinse-with-mouthwash
    :parameters (?s - step1-type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending ?s))
      (at start (teeth-and-tongue-brushed))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (mouth-rinsed))
    )
  )

  (:durative-action drink-water
    :parameters (?s - step2-type)
    :duration (= ?duration 120)
    :condition (at start (step-pending ?s))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (water-consumed))
    )
  )

  (:durative-action brush-teeth-and-tongue
    :parameters (?s - step3-type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step-pending ?s))
      (at start (water-consumed))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (teeth-and-tongue-brushed))
    )
  )

  (:durative-action chew-menthol-gum
    :parameters (?s - step4-type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step-pending ?s))
      (at start (neutralizing-meal-eaten))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (menthol-gum-chewed))
    )
  )

  (:durative-action eat-neutralizing-meal
    :parameters (?s - step5-type)
    :duration (= ?duration 1200)
    :condition (at start (step-pending ?s))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (neutralizing-meal-eaten))
    )
  )
)