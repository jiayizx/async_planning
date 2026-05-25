(define (problem dispose_xray_film_instance)
  (:domain dispose_xray_film)
  
  (:init
    (cut_info_pending)
    (donate_pending)
    (craft_pending)
  )

  (:goal (and
    (cut_info_done)
    (donate_done)
    (craft_done)
  ))
)