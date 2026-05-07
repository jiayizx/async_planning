(define (domain finish-maple)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (stirred)
    (coat1_applied)
    (finish_maple)
    (sanded)
    (coat2_applied)
  )

  ;; Step 1: Stir the polyurethane clear coat with a stir stick. (120s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stirred))
    )
  )

  ;; Step 2: Paint a thin layer of polyurethane onto your maple. (600s)
  ;; Requires Step1 and Step5
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (stirred)) (at start (coat2_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coat1_applied))
    )
  )

  ;; Step 3: Let the polyurethane dry for at least 4 hours. (14400s)
  ;; Requires Step2
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (coat1_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finish_maple))
    )
  )

  ;; Step 4: Sand the finish with 220-grit sandpaper. (1200s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sanded))
    )
  )

  ;; Step 5: Apply a second coat of your finish and let it dry. (14400s)
  ;; Requires Step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (sanded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coat2_applied))
    )
  )
)
