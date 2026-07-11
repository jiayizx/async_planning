(define (problem make_snowball)
  (:domain snowball-making)
  
  (:init
    (find_snow_pending)
    (form_core_pending)
    (add_layer_pending)
    (reinforce_pending)
    (refine_pending)
    (find_target_pending)
  )

  (:goal (and
    (find_snow_done)
    (form_core_done)
    (add_layer_done)
    (reinforce_done)
    (refine_done)
    (find_target_done)
  ))
)
