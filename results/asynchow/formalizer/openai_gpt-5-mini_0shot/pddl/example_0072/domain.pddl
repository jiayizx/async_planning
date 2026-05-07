(define (domain get_starting_weight)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (buy_scale_done)
    (place_scale_done)
    (begin_undress_done)
    (remove_shirt_done)
    (remove_pants_done)
    (stand_on_scale_done)
  )

  ;; Step 1: Buy a scale
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_scale_done))
    )
  )

  ;; Step 2: place the scale on a flat surface (requires step1)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (buy_scale_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (place_scale_done))
    )
  )

  ;; Step 3: begin to undress (requires step2)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (place_scale_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (begin_undress_done))
    )
  )

  ;; Step 4: remove the shirt (requires step3)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (begin_undress_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (remove_shirt_done))
    )
  )

  ;; Step 5: remove the pants (requires step3)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (begin_undress_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (remove_pants_done))
    )
  )

  ;; Step 6: stand on scale (requires step4 and step5)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (remove_shirt_done)) (at start (remove_pants_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stand_on_scale_done))
    )
  )
)
