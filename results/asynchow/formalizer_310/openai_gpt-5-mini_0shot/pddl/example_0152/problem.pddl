(define (problem teach_cat_to_talk_problem)
  (:domain teach_cat_to_talk)
  (:init
    (recognize_meow_pending)
    (understand_meow_pending)
    (pay_attention_nonverbal_pending)
  )
  (:goal (and
    (recognize_meow_done)
    (understand_meow_done)
    (pay_attention_nonverbal_done)
  ))
)
