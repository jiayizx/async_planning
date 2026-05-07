(define (domain starfish_acclimation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step3_done)
    (step1_done)
    (step4_done)
    (step2_done)
    (step5_done)
  )

  (:durative-action prepare_bucket_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step3_done))
    )
  )

  (:durative-action float_bag_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (step3_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step1_done))
    )
  )

  (:durative-action transfer_starfish_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (step1_done))
      (at start (step3_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step4_done))
    )
  )

  (:durative-action drip_acclimate_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (step3_done))
      (at start (step4_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step2_done))
    )
  )

  (:durative-action net_starfish_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (step2_done))
      (at start (step3_done))
      (at start (step4_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step5_done))
    )
  )
)