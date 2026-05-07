(define (domain guessing-box)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (found_box_done)
    (rect_cut_done)
    (circle_cut_done)
  )

  (:durative-action do_step1_find_box
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (found_box_done))
    )
  )

  (:durative-action do_step2_cut_rectangle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (found_box_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rect_cut_done))
    )
  )

  (:durative-action do_step3_cut_circle
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (found_box_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (circle_cut_done))
    )
  )
)
