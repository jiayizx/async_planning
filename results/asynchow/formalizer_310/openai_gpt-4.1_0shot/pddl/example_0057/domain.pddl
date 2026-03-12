(define (domain movie_making)
  (:requirements :durative-actions)
  (:predicates
    (write_script_pending)
    (write_script_done)
    (plan_backdrop_pending)
    (plan_backdrop_done)
    (hire_cast_pending)
    (hire_cast_done)
    (learn_lines_pending)
    (learn_lines_done)
    (shoot_film_pending)
    (shoot_film_done)
  )

  (:durative-action write_script
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (write_script_pending))
    :effect (and (at start (not (write_script_pending))) (at end (write_script_done)))
  )

  (:durative-action plan_backdrop
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (plan_backdrop_pending)) (at start (write_script_done)))
    :effect (and (at start (not (plan_backdrop_pending))) (at end (plan_backdrop_done)))
  )

  (:durative-action hire_cast
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (hire_cast_pending)) (at start (plan_backdrop_done)))
    :effect (and (at start (not (hire_cast_pending))) (at end (hire_cast_done)))
  )

  (:durative-action learn_lines
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (learn_lines_pending)) (at start (plan_backdrop_done)))
    :effect (and (at start (not (learn_lines_pending))) (at end (learn_lines_done)))
  )

  (:durative-action shoot_film
    :parameters ()
    :duration (= ?duration 25920000)
    :condition (and (at start (shoot_film_pending)) (at start (hire_cast_done)) (at start (learn_lines_done)))
    :effect (and (at start (not (shoot_film_pending))) (at end (shoot_film_done)))
  )
)
