(define (domain overcome_fear_reading)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (reading_practiced)
    (calmness_achieved)
    (mistakes_moved_past)
  )

  (:durative-action practice_reading
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (reading_practiced)))
  )

  (:durative-action work_on_calmness
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (calmness_achieved)))
  )

  (:durative-action move_past_mistakes
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) 
                    (at start (reading_practiced)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (mistakes_moved_past)))
  )
)