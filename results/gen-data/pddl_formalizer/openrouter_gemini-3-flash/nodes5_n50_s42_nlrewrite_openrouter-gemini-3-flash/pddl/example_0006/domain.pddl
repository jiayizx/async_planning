(define (domain beef_stroganoff)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (beef_sliced)
    (veg_chopped)
    (beef_seared)
    (veg_sauted)
    (stroganoff_simmered)
  )

  (:durative-action slice_beef
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_sliced)))
  )

  (:durative-action chop_veg
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (veg_chopped)))
  )

  (:durative-action sear_beef
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (beef_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_seared)))
  )

  (:durative-action saute_veg
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (veg_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (veg_sauted)))
  )

  (:durative-action simmer_sauce
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (beef_seared)) (at start (veg_sauted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stroganoff_simmered)))
  )
)