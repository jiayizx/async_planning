(define (domain leather_repair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (patch_chosen)
    (patch_cut)
    (paper_placed)
    (patch_attached)
    (repair_complete)
  )

  (:durative-action choose_patch
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patch_chosen)))
  )

  (:durative-action cut_patch
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (patch_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patch_cut)))
  )

  (:durative-action place_paper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_placed)))
  )

  (:durative-action attach_patch
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (patch_cut)) (at start (paper_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patch_attached)))
  )

  (:durative-action dry_adhesive
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (patch_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (repair_complete)))
  )
)