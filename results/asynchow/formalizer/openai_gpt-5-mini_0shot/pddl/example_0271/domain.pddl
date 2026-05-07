(define (domain wake_up_dream)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates (one unique outcome per step)
    (realize_done)
    (wear_watch_done)
    (mild_done)
    (prevent_done)
    (light_done)
    (combine_done)
  )

  ;; Step 1: Try to realize that you are dreaming (30s)
  (:durative-action do_step1_try_realize
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (realize_done))
    )
  )

  ;; Step 2: Wear something like a watch (600s = 10min)
  (:durative-action do_step2_wear_watch
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wear_watch_done))
    )
  )

  ;; Step 3: Try the MILD technique (1800s = 30min)
  (:durative-action do_step3_mild
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mild_done))
    )
  )

  ;; Step 4: Prevent uncomfortable dreams (300s = 5min)
  (:durative-action do_step4_prevent
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prevent_done))
    )
  )

  ;; Step 5: Try light stimulus (120s = 2min)
  (:durative-action do_step5_light
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (light_done))
    )
  )

  ;; Step 6: Combine different techniques (900s = 15min)
  ;; Requires Step 3 and Step 5 to have completed (both semantic preds)
  (:durative-action do_step6_combine
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (mild_done)) (at start (light_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (combine_done))
    )
  )
)
