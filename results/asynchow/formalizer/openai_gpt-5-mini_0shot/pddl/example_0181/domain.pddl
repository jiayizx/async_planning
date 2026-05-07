(define (domain recycle-wood-domain)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (searched)
    (screws_removed)
    (cut_done)
    (transported)
  )

  ;; Step 1: Search for a place near you that accepts wood for recycling. (1800s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (searched))
            )
  )

  ;; Step 2: Remove any screws or nails left on the wood. (900s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (screws_removed))
            )
  )

  ;; Step 3: Cut down large pieces of wood to submit for recycling. (7200s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cut_done))
            )
  )

  ;; Step 4: Transport the wood or have it picked up by a recycler. (3600s)
  ;; This step requires steps 1,2,3 to have produced their semantic predicates.
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (searched)) (at start (screws_removed)) (at start (cut_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (transported))
            )
  )
)
