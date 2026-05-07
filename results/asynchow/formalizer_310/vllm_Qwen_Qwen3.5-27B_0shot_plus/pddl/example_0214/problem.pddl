(define (problem make_caramelized_toast)
  (:domain caramelized-toast)
  
  (:init
    (scoop_margarine_pending)
    (mash_ingredients_pending)
    (spread_mixture_pending)
    (toast_bread_pending)
    (enjoy_toast_pending)
  )

  (:goal (and
    (scoop_margarine_done)
    (mash_ingredients_done)
    (spread_mixture_done)
    (toast_bread_done)
    (enjoy_toast_done)
  ))
)