(define (domain beef-stroganoff)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (beef_sliced)
    (vegetables_chopped)
    (beef_seared)
    (stroganoff_simmered)
    (vegetables_sauteed)
  )

  (:durative-action slice_beef
    :parameters (?s - step1-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (beef_sliced))
    )
  )

  (:durative-action chop_onions_and_mushrooms
    :parameters (?s - step2-type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_chopped))
    )
  )

  (:durative-action sear_beef
    :parameters (?s - step3-type)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (beef_sliced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (beef_seared))
    )
  )

  (:durative-action simmer_in_cream_sauce
    :parameters (?s - step4-type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (beef_seared))
      (at start (vegetables_sauteed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stroganoff_simmered))
    )
  )

  (:durative-action saute_vegetables
    :parameters (?s - step5-type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (vegetables_chopped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_sauteed))
    )
  )
)