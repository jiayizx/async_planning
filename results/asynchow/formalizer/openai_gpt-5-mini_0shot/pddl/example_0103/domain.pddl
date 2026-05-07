(define (domain find_restaurant)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
  )

  ;; Step 1: pick up phone or tablet
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  ;; Step 2: search for restaurants nearby (after step1)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  ;; Step 3: narrow down options by kind of food (after step2)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )

  ;; Step 4: look at menus (after step3)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_done))
    )
  )

  ;; Step 5: look at restaurant ratings (after step3)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_done))
    )
  )

  ;; Step 6: look at pricing (after step4 and step5)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s6_done))
    )
  )
)
