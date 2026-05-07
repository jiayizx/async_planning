(define (domain chicken_curry_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (spices_ground)
    (chicken_thawed)
    (chicken_marinated)
    (onions_sauted)
    (curry_simmered)
  )

  (:durative-action grind_spices
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spices_ground)))
  )

  (:durative-action thaw_chicken
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_thawed)))
  )

  (:durative-action marinate_chicken
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (chicken_thawed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_marinated)))
  )

  (:durative-action saute_aromatics
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (spices_ground)) (at start (chicken_thawed)) (at start (chicken_marinated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_sauted)))
  )

  (:durative-action simmer_curry
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (onions_sauted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (curry_simmered)))
  )
)