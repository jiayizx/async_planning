(define (domain season-tilapia)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (melted_done)
    (lemon_done)
    (whisk_done)
    (poured_done)
    (baked_done)
  )

  ;; Step 1: Melt butter (2 min = 120s)
  (:durative-action do_step1_melt_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (melted_done)))
  )

  ;; Step 2: Zest and squeeze lemon (2 min = 120s)
  (:durative-action do_step2_lemon
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (lemon_done)))
  )

  ;; Step 3: Whisk butter, lemon, zest, garlic (3 min = 180s)
  ;; Requires Step1 (melted_done) and Step2 (lemon_done)
  (:durative-action do_step3_whisk
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (melted_done)) (at start (lemon_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (whisk_done)))
  )

  ;; Step 4: Pour the sauce over the tilapia (1 min = 60s)
  ;; Requires Step3 (whisk_done)
  (:durative-action do_step4_pour_sauce
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (whisk_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (poured_done)))
  )

  ;; Step 5: Bake the fish (12 min = 720s)
  ;; Requires Step4 (poured_done)
  (:durative-action do_step5_bake
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (poured_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (baked_done)))
  )
)
