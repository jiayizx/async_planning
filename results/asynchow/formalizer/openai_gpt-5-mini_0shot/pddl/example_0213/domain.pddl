(define (domain make_cookies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheated)
    (flour_combined)
    (sugars_blended)
    (mixture_blended)
    (dough_placed)
  )

  ;; Step 1: Preheat the oven
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

  ;; Step 2: Combine flour, baking soda and salt
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_combined))
    )
  )

  ;; Step 3: Blend brown and white sugar with mixer
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sugars_blended))
    )
  )

  ;; Step 4: Add flour mixture, chocolate chips and peanut butter, blend
  ;; Requires step2 (flour_combined) and step3 (sugars_blended)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (flour_combined)) (at start (sugars_blended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_blended))
    )
  )

  ;; Step 5: Place spoonfuls of dough on greased cookie sheet
  ;; Requires step4 (mixture_blended)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (mixture_blended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dough_placed))
    )
  )
)
