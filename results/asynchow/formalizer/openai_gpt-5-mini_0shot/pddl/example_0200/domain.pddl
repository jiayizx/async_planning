(define (domain eat-gouda)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheat_done)
    (boil_done)
    (sauce_done)
    (add_gouda_done)
    (bake_done)
  )

  ;; Step 1: Preheat oven and prepare dish (5 min = 300s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (preheat_done)) )
  )

  ;; Step 2: Boil macaroni (10 min = 600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (boil_done)) )
  )

  ;; Step 3: Prepare cheese sauce (5 min = 300s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (sauce_done)) )
  )

  ;; Step 4: Turn off stovetop and add gouda (2 min = 120s)
  ;; Requires completion of step 3 (sauce_done)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (sauce_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (add_gouda_done)) )
  )

  ;; Step 5: Combine and bake (15 min = 900s)
  ;; Requires completion of steps 1,2,4 (preheat_done, boil_done, add_gouda_done)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (preheat_done) (boil_done) (add_gouda_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bake_done)) )
  )
)
