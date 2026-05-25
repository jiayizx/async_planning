(define (domain powder_makeup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hydrating_done)
    (primer_done)
    (buffing_done)
    (blend_done)
    (mist_done)
  )

  ;; Step 1: Apply a hydrating facial moisturizer (120s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hydrating_done))
            )
  )

  ;; Step 2: Let the primer set on the skin (180s)
  ;; Ordering constraint: Step 1 must precede Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (hydrating_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (primer_done))
            )
  )

  ;; Step 3: Buff the setting powder onto the face (240s)
  ;; Ordering constraints: Step 4 must precede Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (blend_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (buffing_done))
            )
  )

  ;; Step 4: Blend the liquid foundation (300s)
  ;; No predecessors mandated by the original ordering constraints
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (blend_done))
            )
  )

  ;; Step 5: Spray a finishing mist to lock the look (30s)
  ;; Ordering constraint: Step 3 must precede Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (buffing_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (mist_done))
            )
  )
)
