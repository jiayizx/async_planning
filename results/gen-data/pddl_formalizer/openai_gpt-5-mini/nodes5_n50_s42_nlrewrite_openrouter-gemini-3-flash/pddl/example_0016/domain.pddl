(define (domain go-fishing)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each action
    (renewed_license)
    (bought_bait)
    (researched_regs)
    (cast_line_done)
    (packed_cooler)
  )

  ; Step 1: Renew your annual fishing license (1800s)
  (:durative-action renew_license
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (researched_regs)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (renewed_license))
            )
  )

  ; Step 2: Purchase fresh live bait (900s)
  (:durative-action purchase_bait
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (renewed_license) (researched_regs)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bought_bait))
            )
  )

  ; Step 3: Research local fishing regulations (3600s)
  (:durative-action research_regulations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (researched_regs))
            )
  )

  ; Step 4: Cast your line into the water at the lake (14400s)
  (:durative-action cast_line
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (renewed_license) (bought_bait) (researched_regs) (packed_cooler)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cast_line_done))
            )
  )

  ; Step 5: Pack the cooler and load the gear into the truck (1200s)
  (:durative-action pack_cooler_action
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (renewed_license) (researched_regs)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (packed_cooler))
            )
  )
)
