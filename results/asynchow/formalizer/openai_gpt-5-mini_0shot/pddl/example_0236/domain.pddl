(define (domain cook_flounder)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (heat_done)
    (cut_done)
    (rub_done)
    (grill_done)
    (rest_done)
  )

  ;; Step 1: Heat a grill to medium-high and oil the grates. (10 minutes = 600 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (heat_done))
            )
  )

  ;; Step 2: Cut 3 slits on each side and set out for 20 minutes. (20 minutes = 1200 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cut_done))
            )
  )

  ;; Step 3: Rub the fish with oil and season it. (5 minutes = 300 seconds)
  ;; Requires step2 (cut_done) to have finished
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cut_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (rub_done))
            )
  )

  ;; Step 4: Grill the whole flounder for 18-20 minutes. Use 20 minutes = 1200 seconds
  ;; Requires step1 (heat_done) and step3 (rub_done) to have finished
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (heat_done)) (at start (rub_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (grill_done))
            )
  )

  ;; Step 5: Remove the fish and let it rest for 10 minutes. (10 minutes = 600 seconds)
  ;; Requires step4 (grill_done) to have finished
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (grill_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (rest_done))
            )
  )
)
