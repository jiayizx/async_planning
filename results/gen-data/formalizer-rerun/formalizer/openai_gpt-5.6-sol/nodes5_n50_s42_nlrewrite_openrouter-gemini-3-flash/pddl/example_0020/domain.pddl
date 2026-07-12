(define (domain chicken-curry)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (spices_ground)
    (chicken_thawed)
    (chicken_marinated)
    (aromatics_sauteed)
    (curry_simmered)
  )

  (:durative-action saute-aromatics
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (spices_ground))
      (at start (chicken_thawed))
      (at start (chicken_marinated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (aromatics_sauteed))
    )
  )

  (:durative-action simmer-chicken
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (aromatics_sauteed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (curry_simmered))
    )
  )

  (:durative-action grind-spices
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spices_ground))
    )
  )

  (:durative-action thaw-chicken
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chicken_thawed))
    )
  )

  (:durative-action marinate-chicken
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (chicken_thawed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chicken_marinated))
    )
  )
)