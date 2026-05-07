(define (domain take_garcinia)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (learn_done)
    (pill_done)
    (liquid_done)
  )

  ;; Step 1: Learn the correct dose (86400s)
  (:durative-action do_step1_learn_dose
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (learn_done))
    )
  )

  ;; Step 2: Take garcinia as a pill (120s) — requires step1
  (:durative-action do_step2_take_pill
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (learn_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pill_done))
    )
  )

  ;; Step 3: Consider liquid garcinia (300s) — requires step1
  (:durative-action do_step3_consider_liquid
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (learn_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (liquid_done))
    )
  )
)
