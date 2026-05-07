(define (domain metal_symphony)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (guitar_plugged)
    (paper_obtained)
    (pen_obtained)
    (amp_on)
    (riff_created)
    (riff_penned)
    (composition_perfected)
  )

  (:durative-action plug_guitar
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guitar_plugged)))
  )

  (:durative-action pick_up_paper
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_obtained)))
  )

  (:durative-action pick_up_pen
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pen_obtained)))
  )

  (:durative-action turn_on_amp
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (guitar_plugged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (amp_on)))
  )

  (:durative-action create_riff
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (amp_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (riff_created)))
  )

  (:durative-action pen_riff
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (paper_obtained)) (at start (pen_obtained)) (at start (riff_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (riff_penned)))
  )

  (:durative-action revise_composition
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (riff_penned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (composition_perfected)))
  )
)