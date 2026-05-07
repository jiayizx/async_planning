(define (domain cabinet_makeover)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (paper_chosen)
    (dimensions_measured)
    (paper_cut)
    (paper_placed)
    (paper_trimmed)
    (decoration_added)
  )

  (:durative-action choose_paper
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_chosen)))
  )

  (:durative-action measure_drawer
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_measured)))
  )

  (:durative-action cut_paper
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (paper_chosen)) (at start (dimensions_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_cut)))
  )

  (:durative-action place_paper
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (paper_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_placed)))
  )

  (:durative-action trim_excess
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (paper_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_trimmed)))
  )

  (:durative-action add_decoration
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (paper_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decoration_added)))
  )
)