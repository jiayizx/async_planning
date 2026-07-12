(define (domain powder-makeup)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (moisturizer_applied)
    (primer_set)
    (powder_buffed)
    (foundation_blended)
    (finishing_mist_sprayed)
  )

  (:durative-action apply_hydrating_moisturizer
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (moisturizer_applied))
    )
  )

  (:durative-action let_primer_set
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (moisturizer_applied))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (primer_set))
    )
  )

  (:durative-action buff_setting_powder
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (foundation_blended))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (powder_buffed))
    )
  )

  (:durative-action blend_liquid_foundation
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (foundation_blended))
    )
  )

  (:durative-action spray_finishing_mist
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (powder_buffed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finishing_mist_sprayed))
    )
  )
)