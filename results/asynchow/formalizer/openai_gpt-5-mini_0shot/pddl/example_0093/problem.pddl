(define (problem go-to-party-prob)
  (:domain go-to-party)

  (:init
    ;; initialize all pending predicates as true (rule 7)
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7)
  )

  (:goal (and
    ;; require every step's completion
    (done1) (done2) (done3) (done4) (done5) (done6) (done7)
    ;; require final semantic predicate to enforce full causal chain
    (entered_done)
  ))
)
