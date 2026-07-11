(define (problem groom_labradoodle_instance)
  (:domain groom_labradoodle)
  
  (:init
    (bathe_pending)
    (tub_pending)
    (shampoo_pending)
    (rinse_pending)
    (dry_pending)
  )
  
  (:goal (and
    (bathe_done)
    (tub_done)
    (shampoo_done)
    (rinse_done)
    (dry_done)
  ))
)