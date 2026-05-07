(define (problem react_to_bump)
  (:domain flight_bump_reaction)
  
  (:init
    (speak_pending)
    (confirm_pending)
    (reimburse_pending)
    (vouchers_pending)
  )

  (:goal (and
    (speak_done)
    (confirm_done)
    (reimburse_done)
    (vouchers_done)
  ))
)
