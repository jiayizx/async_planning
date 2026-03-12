(define (problem teach-cat-to-talk-problem)
  (:domain teach-cat-to-talk)
  (:init
    (recognize_meow_pending)
    (understand_meow_pending)
    (pay_attention_pending)
  )
  (:goal (and
    (recognize_meow_done)
    (understand_meow_done)
    (pay_attention_done)
  ))
)
