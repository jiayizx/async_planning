(define (domain lollipop-making)
  (:requirements :durative-actions)
  
  (:predicates
    (find_recipes_pending)
    (find_recipes_done)
    (buy_molds_pending)
    (buy_molds_done)
    (make_mixture_pending)
    (make_mixture_done)
    (pour_mixture_pending)
    (pour_mixture_done)
    (buy_ingredients_pending)
    (buy_ingredients_done)
    (harden_cool_pending)
    (harden_cool_done)
  )

  (:durative-action find_recipes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (find_recipes_pending)))
    :effect (and (at start (not (find_recipes_pending))) (at end (find_recipes_done)))
  )

  (:durative-action buy_molds
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_molds_pending)) (at start (find_recipes_done)))
    :effect (and (at start (not (buy_molds_pending))) (at end (buy_molds_done)))
  )

  (:durative-action make_mixture
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (make_mixture_pending)) (at start (buy_molds_done)) (at start (buy_ingredients_done)))
    :effect (and (at start (not (make_mixture_pending))) (at end (make_mixture_done)))
  )

  (:durative-action pour_mixture
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pour_mixture_pending)) (at start (make_mixture_done)))
    :effect (and (at start (not (pour_mixture_pending))) (at end (pour_mixture_done)))
  )

  (:durative-action buy_ingredients
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_ingredients_pending)) (at start (find_recipes_done)))
    :effect (and (at start (not (buy_ingredients_pending))) (at end (buy_ingredients_done)))
  )

  (:durative-action harden_cool
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (harden_cool_pending)) (at start (pour_mixture_done)))
    :effect (and (at start (not (harden_cool_pending))) (at end (harden_cool_done)))
  )
)
