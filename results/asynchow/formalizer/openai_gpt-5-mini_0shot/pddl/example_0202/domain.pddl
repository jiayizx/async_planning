(define (domain cone-volume)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (radius_found)
    (base_area_found)
    (height_found)
    (product_computed)
    (volume_computed)
  )

  ;; Step 1: Find the radius (120 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (radius_found))
    )
  )

  ;; Step 2: Use radius to find base area (60 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (radius_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (base_area_found))
    )
  )

  ;; Step 3: Find the height (120 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (height_found))
    )
  )

  ;; Step 4: Multiply base area by height (60 seconds)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (base_area_found)) (at start (height_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (product_computed))
    )
  )

  ;; Step 5: Divide the product by three (60 seconds)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (product_computed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (volume_computed))
    )
  )
)
