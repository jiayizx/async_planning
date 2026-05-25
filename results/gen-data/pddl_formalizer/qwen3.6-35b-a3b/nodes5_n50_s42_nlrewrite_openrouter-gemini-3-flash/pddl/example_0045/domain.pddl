(define (domain makeup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (moisturizer_applied)
               (primer_set)
               (foundation_blended)
               (powder_buffed)
               (mist_sprayed))
  (:durative-action apply_moisturizer
    :parameters ()
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (moisturizer_applied))))
  (:durative-action set_primer
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (moisturizer_applied)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (primer_set))))
  (:durative-action blend_foundation
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (primer_set)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (foundation_blended))))
  (:durative-action buff_powder
    :parameters ()
    :duration 240
    :condition (and (at start (step_pending ?s)) (at start (foundation_blended)) (at start (primer_set)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (powder_buffed))))
  (:durative-action spray_mist
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (powder_buffed)) (at start (foundation_blended)) (at start (primer_set)) (at start (moisturizer_applied)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mist_sprayed))))
)