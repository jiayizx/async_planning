(define (domain cinnamon_french_toast)
  (:requirements :durative-actions)
  (:predicates
    (choose_bread_pending)
    (choose_bread_done)
    (create_custard_pending)
    (create_custard_done)
    (preheat_skillet_pending)
    (preheat_skillet_done)
    (dip_bread_pending)
    (dip_bread_done)
    (cook_toast_pending)
    (cook_toast_done)
    (set_aside_pending)
    (set_aside_done)
    (combine_syrup_pending)
    (combine_syrup_done)
    (boil_mixture_pending)
    (boil_mixture_done)
    (lower_heat_pending)
    (lower_heat_done)
    (cool_syrup_pending)
    (cool_syrup_done)
    (serve_traditional_pending)
    (serve_traditional_done)
    (make_sandwich_pending)
    (make_sandwich_done)
    (serve_ice_cream_pending)
    (serve_ice_cream_done)
  )

  (:durative-action choose_bread
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (choose_bread_pending))
    :effect (and (at start (not (choose_bread_pending))) (at end (choose_bread_done)))
  )

  (:durative-action create_custard
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (create_custard_pending))
    :effect (and (at start (not (create_custard_pending))) (at end (create_custard_done)))
  )

  (:durative-action preheat_skillet
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_skillet_pending))
    :effect (and (at start (not (preheat_skillet_pending))) (at end (preheat_skillet_done)))
  )

  (:durative-action dip_bread
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (dip_bread_pending)) (at start (choose_bread_done)) (at start (create_custard_done)))
    :effect (and (at start (not (dip_bread_pending))) (at end (dip_bread_done)))
  )

  (:durative-action cook_toast
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (cook_toast_pending)) (at start (preheat_skillet_done)) (at start (dip_bread_done)))
    :effect (and (at start (not (cook_toast_pending))) (at end (cook_toast_done)))
  )

  (:durative-action set_aside
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (set_aside_pending)) (at start (cook_toast_done)))
    :effect (and (at start (not (set_aside_pending))) (at end (set_aside_done)))
  )

  (:durative-action combine_syrup
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (combine_syrup_pending)) (at start (set_aside_done)))
    :effect (and (at start (not (combine_syrup_pending))) (at end (combine_syrup_done)))
  )

  (:durative-action boil_mixture
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (boil_mixture_pending)) (at start (combine_syrup_done)))
    :effect (and (at start (not (boil_mixture_pending))) (at end (boil_mixture_done)))
  )

  (:durative-action lower_heat
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (lower_heat_pending)) (at start (boil_mixture_done)))
    :effect (and (at start (not (lower_heat_pending))) (at end (lower_heat_done)))
  )

  (:durative-action cool_syrup
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cool_syrup_pending)) (at start (lower_heat_done)))
    :effect (and (at start (not (cool_syrup_pending))) (at end (cool_syrup_done)))
  )

  (:durative-action make_sandwich
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (make_sandwich_pending)) (at start (cool_syrup_done)))
    :effect (and (at start (not (make_sandwich_pending))) (at end (make_sandwich_done)))
  )

  (:durative-action serve_traditional
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (serve_traditional_pending)) (at start (make_sandwich_done)))
    :effect (and (at start (not (serve_traditional_pending))) (at end (serve_traditional_done)))
  )

  (:durative-action serve_ice_cream
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (serve_ice_cream_pending)) (at start (make_sandwich_done)))
    :effect (and (at start (not (serve_ice_cream_pending))) (at end (serve_ice_cream_done)))
  )
)
