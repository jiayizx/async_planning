(define (domain teach-cat-to-talk)
  (:requirements :durative-actions)
  (:predicates
    (recognize_meow_pending)
    (recognize_meow_done)
    (understand_meow_pending)
    (understand_meow_done)
    (pay_attention_pending)
    (pay_attention_done)
  )

  (:durative-action recognize_meow
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (recognize_meow_pending))
    :effect (and
      (at start (not (recognize_meow_pending)))
      (at end (recognize_meow_done))
    )
  )

  (:durative-action understand_meow
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (understand_meow_pending))
      (at start (recognize_meow_done))
    )
    :effect (and
      (at start (not (understand_meow_pending)))
      (at end (understand_meow_done))
    )
  )

  (:durative-action pay_attention
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (at start (pay_attention_pending))
    :effect (and
      (at start (not (pay_attention_pending)))
      (at end (pay_attention_done))
    )
  )
)
