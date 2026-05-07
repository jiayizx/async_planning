(define (problem make_kurt_cobain_costume)
  (:domain kurt_cobain_costume)
  
  (:init
    (get_hair_pending)
    (buy_clothes_pending)
    (rip_jeans_pending)
    (rip_flannel_pending)
    (wear_socks_pending)
    (get_shoes_pending)
    (get_sunglasses_pending)
  )
  
  (:goal (and
    (get_hair_done)
    (buy_clothes_done)
    (rip_jeans_done)
    (rip_flannel_done)
    (wear_socks_done)
    (get_shoes_done)
    (get_sunglasses_done)
  ))
)