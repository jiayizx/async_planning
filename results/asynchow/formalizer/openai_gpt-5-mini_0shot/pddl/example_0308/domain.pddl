(define (domain bake_blueberry_pie)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheated)
    (pastry_prepared)
    (mixture_mixed)
    (poured)
    (topped)
    (crimped)
    (slits_cut)
    (baked)
    (finished)
  )

  ; Step 1: Preheat oven to 400 °F (204 °C). 5 min -> 300 seconds
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (preheated))
    )
  )

  ; Step 2: Prepare favorite double crust pie pastry. 15 min -> 900 seconds
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pastry_prepared))
    )
  )

  ; Step 3: Mix blueberries lightly with other ingredients. 10 min -> 600 seconds
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_mixed))
    )
  )

  ; Step 4: Pour blueberry mixture into prepared pie crust. 5 min -> 300 seconds
  ; Requires pastry_prepared AND mixture_mixed
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pastry_prepared)) (at start (mixture_mixed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (poured))
    )
  )

  ; Step 5: Top with remaining pie crust. 2 min -> 120 seconds
  ; Requires poured
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (poured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (topped))
    )
  )

  ; Step 6: Crimp and seal. 3 min -> 180 seconds
  ; Requires topped
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (topped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (crimped))
    )
  )

  ; Step 7: Cut slits in top of pie crust. 2 min -> 120 seconds
  ; Requires topped
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (topped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (slits_cut))
    )
  )

  ; Step 8: Bake about 50 to 60 minutes. 60 min -> 3600 seconds
  ; Requires preheated, crimped, and slits_cut (predecessors: 1,6,7)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (preheated)) (at start (crimped)) (at start (slits_cut)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baked))
    )
  )

  ; Step 9: Finished. 0 min -> 0 seconds
  ; Requires baked (predecessor: 8)
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 0)
    :condition (and (at start (step_pending ?s)) (at start (baked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finished))
    )
  )
)
