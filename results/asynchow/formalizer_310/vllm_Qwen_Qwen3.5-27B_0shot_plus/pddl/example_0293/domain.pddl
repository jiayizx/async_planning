(define (domain kurt_cobain_costume)
  (:requirements :durative-actions)
  
  (:predicates
    (get_hair_pending)
    (get_hair_done)
    (buy_clothes_pending)
    (buy_clothes_done)
    (rip_jeans_pending)
    (rip_jeans_done)
    (rip_flannel_pending)
    (rip_flannel_done)
    (wear_socks_pending)
    (wear_socks_done)
    (get_shoes_pending)
    (get_shoes_done)
    (get_sunglasses_pending)
    (get_sunglasses_done)
  )

  (:durative-action get_hair
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (get_hair_pending)))
    :effect (and (at start (not (get_hair_pending))) (at end (get_hair_done)))
  )

  (:durative-action buy_clothes
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_clothes_pending)))
    :effect (and (at start (not (buy_clothes_pending))) (at end (buy_clothes_done)))
  )

  (:durative-action rip_jeans
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (rip_jeans_pending)) (at start (buy_clothes_done)))
    :effect (and (at start (not (rip_jeans_pending))) (at end (rip_jeans_done)))
  )

  (:durative-action rip_flannel
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (rip_flannel_pending)) (at start (buy_clothes_done)))
    :effect (and (at start (not (rip_flannel_pending))) (at end (rip_flannel_done)))
  )

  (:durative-action wear_socks
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (wear_socks_pending)))
    :effect (and (at start (not (wear_socks_pending))) (at end (wear_socks_done)))
  )

  (:durative-action get_shoes
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (get_shoes_pending)))
    :effect (and (at start (not (get_shoes_pending))) (at end (get_shoes_done)))
  )

  (:durative-action get_sunglasses
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (get_sunglasses_pending)))
    :effect (and (at start (not (get_sunglasses_pending))) (at end (get_sunglasses_done)))
  )
)