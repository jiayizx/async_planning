(define (problem cosplay_garnet_problem)
  (:domain cosplay_garnet)
  
  (:init
    (get_wig_pending)
    (prepare_to_sew_pending)
    (get_leggings_pending)
    (recreate_shirt_pending)
    (get_gloves_pending)
    (get_shoes_pending)
    (get_shades_pending)
  )

  (:goal (and
    (get_wig_done)
    (prepare_to_sew_done)
    (get_leggings_done)
    (recreate_shirt_done)
    (get_gloves_done)
    (get_shoes_done)
    (get_shades_done)
  ))
)