(define (problem lollipop_task)
  (:domain lollipop-making)
  
  (:init
    (find_recipes_pending)
    (buy_molds_pending)
    (make_mixture_pending)
    (pour_mixture_pending)
    (buy_ingredients_pending)
    (harden_cool_pending)
  )

  (:goal (and
    (find_recipes_done)
    (buy_molds_done)
    (make_mixture_done)
    (pour_mixture_done)
    (buy_ingredients_done)
    (harden_cool_done)
  ))
)
