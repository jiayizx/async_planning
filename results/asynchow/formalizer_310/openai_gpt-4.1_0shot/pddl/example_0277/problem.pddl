(define (problem raise_road_bike_handlebars_problem)
  (:domain raise_road_bike_handlebars)
  (:init
    (position_handlebars_pending)
    (raise_handlebars_pending)
    (lower_handlebars_pending)
  )
  (:goal (and
    (position_handlebars_done)
    (raise_handlebars_done)
    (lower_handlebars_done)
  ))
)
