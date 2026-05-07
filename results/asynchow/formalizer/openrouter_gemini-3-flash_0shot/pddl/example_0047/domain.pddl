(define (domain hairstyle_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (opinions_asked)
    (styles_browsed)
    (snapshot_taken)
    (appointment_made)
    (arrived_at_salon)
    (discussion_finished)
  )

  (:durative-action ask_opinions
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (opinions_asked)))
  )

  (:durative-action browse_styles
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (styles_browsed)))
  )

  (:durative-action get_snapshot
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (opinions_asked)) (at start (styles_browsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snapshot_taken)))
  )

  (:durative-action make_appointment
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (snapshot_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (appointment_made)))
  )

  (:durative-action drive_to_salon
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (appointment_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_salon)))
  )

  (:durative-action discuss_with_designer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (arrived_at_salon)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (discussion_finished)))
  )
)