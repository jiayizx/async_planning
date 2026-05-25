(define (problem get_dressed_problem)
  (:domain get_dressed)
  
  (:init
    (put_on_shirt_pending)
    (put_on_underwear_pending)
    (put_on_pants_pending)
    (check_appearance_pending)
    (put_on_socks_pending)
    (put_on_shoes_pending)
  )

  (:goal (and
    (put_on_shirt_done)
    (put_on_underwear_done)
    (put_on_pants_done)
    (check_appearance_done)
    (put_on_socks_done)
    (put_on_shoes_done)
  ))
)
