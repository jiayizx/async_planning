(define (domain learn-basketball)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hired)
    (bought)
    (found)
    (dribbled)
    (shot)
  )

  ;; Step 1: hire a basketball coach
  (:durative-action do_hire
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hired))
            )
  )

  ;; Step 2: buy a basketball
  (:durative-action do_buy
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bought))
            )
  )

  ;; Step 3: find a basketball court (requires buy)
  (:durative-action do_find
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (bought)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (found))
            )
  )

  ;; Step 4: practice dribbling (requires hire and find)
  (:durative-action do_dribble
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (hired) (found)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (dribbled))
            )
  )

  ;; Step 5: practice shooting (requires hire and find)
  (:durative-action do_shoot
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (hired) (found)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (shot))
            )
  )
)
