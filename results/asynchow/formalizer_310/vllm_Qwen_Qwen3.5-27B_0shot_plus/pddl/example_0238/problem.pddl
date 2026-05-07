(define (problem fix_chip_instance)
  (:domain fix_quartz_chip)
  
  (:init
    (clean_pending)
    (tape_pending)
    (superglue_pending)
    (epoxy_pending)
    (file_pending)
  )

  (:goal (and
    (clean_done)
    (tape_done)
    (superglue_done)
    (epoxy_done)
    (file_done)
  ))
)
