(define (problem make_movie)
  (:domain movie_production)
  
  (:init
    (write_script_pending)
    (plan_backdrop_pending)
    (hire_cast_pending)
    (learn_lines_pending)
    (shoot_film_pending)
  )

  (:goal (and
    (write_script_done)
    (plan_backdrop_done)
    (hire_cast_done)
    (learn_lines_done)
    (shoot_film_done)
  ))
)
