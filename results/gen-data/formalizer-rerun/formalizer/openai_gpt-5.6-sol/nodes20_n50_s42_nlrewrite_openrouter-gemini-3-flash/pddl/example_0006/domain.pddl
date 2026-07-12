(define (domain season-filet-mignon)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (designated-step1 ?s - step)
    (designated-step2 ?s - step)
    (designated-step3 ?s - step)
    (designated-step4 ?s - step)
    (designated-step5 ?s - step)
    (designated-step6 ?s - step)
    (designated-step7 ?s - step)
    (designated-step8 ?s - step)
    (designated-step9 ?s - step)
    (designated-step10 ?s - step)
    (designated-step11 ?s - step)
    (designated-step12 ?s - step)
    (designated-step13 ?s - step)
    (designated-step14 ?s - step)
    (designated-step15 ?s - step)
    (designated-step16 ?s - step)
    (designated-step17 ?s - step)
    (designated-step18 ?s - step)
    (designated-step19 ?s - step)
    (designated-step20 ?s - step)
    (steak-removed)
    (spices-gathered)
    (counter-cleaned)
    (meat-placed)
    (steak-dried)
    (knife-sharpened)
    (pepper-ground)
    (pepper-rubbed)
    (salt-measured)
    (salt-sprinkled)
    (meat-rested)
    (garlic-minced)
    (rosemary-chopped)
    (salt-mixed)
    (silver-skin-trimmed)
    (herbs-pressed)
    (oil-prepared)
    (meat-oiled)
    (hands-washed)
    (garlic-rubbed)
  )

  (:durative-action take-steak-out
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step1 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (steak-removed)))
  )

  (:durative-action gather-spices
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step2 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (spices-gathered)))
  )

  (:durative-action clean-counter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step3 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (counter-cleaned)))
  )

  (:durative-action place-meat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step4 ?s))
      (at start (spices-gathered))
      (at start (counter-cleaned)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (meat-placed)))
  )

  (:durative-action pat-steak-dry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step5 ?s))
      (at start (spices-gathered)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (steak-dried)))
  )

  (:durative-action sharpen-knife
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step6 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (knife-sharpened)))
  )

  (:durative-action grind-pepper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step7 ?s))
      (at start (spices-gathered)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (pepper-ground)))
  )

  (:durative-action rub-pepper
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step8 ?s))
      (at start (pepper-ground))
      (at start (meat-oiled)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (pepper-rubbed)))
  )

  (:durative-action measure-salt
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step9 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (salt-measured)))
  )

  (:durative-action sprinkle-salt
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step10 ?s))
      (at start (pepper-ground))
      (at start (rosemary-chopped)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (salt-sprinkled)))
  )

  (:durative-action rest-meat
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step11 ?s))
      (at start (oil-prepared)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (meat-rested)))
  )

  (:durative-action mince-garlic
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step12 ?s)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (garlic-minced)))
  )

  (:durative-action chop-rosemary
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step13 ?s))
      (at start (hands-washed)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (rosemary-chopped)))
  )

  (:durative-action mix-salt
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step14 ?s))
      (at start (salt-measured)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (salt-mixed)))
  )

  (:durative-action trim-silver-skin
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step15 ?s))
      (at start (steak-removed))
      (at start (knife-sharpened)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (silver-skin-trimmed)))
  )

  (:durative-action press-herbs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step16 ?s))
      (at start (pepper-ground))
      (at start (rosemary-chopped)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (herbs-pressed)))
  )

  (:durative-action prepare-oil
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step17 ?s))
      (at start (salt-measured)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (oil-prepared)))
  )

  (:durative-action brush-with-oil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step18 ?s))
      (at start (meat-placed)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (meat-oiled)))
  )

  (:durative-action wash-hands
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step19 ?s))
      (at start (steak-dried)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (hands-washed)))
  )

  (:durative-action rub-garlic
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (designated-step20 ?s))
      (at start (salt-measured))
      (at start (garlic-minced)))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (garlic-rubbed)))
  )
)