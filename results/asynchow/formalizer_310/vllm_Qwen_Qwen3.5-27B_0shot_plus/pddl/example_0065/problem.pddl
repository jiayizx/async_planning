(define (problem dressing_task)
  (:domain clothing_dressing)
  
  (:init
    (underwear_pending)
    (pants_pending)
    (shirt_pending)
    (socks_pending)
    (shoes_pending)
  )

  (:goal (and
    (underwear_done)
    (pants_done)
    (shirt_done)
    (socks_done)
    (shoes_done)
  ))
)
