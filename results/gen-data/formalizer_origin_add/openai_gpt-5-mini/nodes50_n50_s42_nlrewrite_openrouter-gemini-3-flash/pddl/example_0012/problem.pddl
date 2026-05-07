(define (problem treat_panic)
  (:domain panic_treatment)
  (:objects)

  (:init
    ;; All pending predicates initialized true as required
    (pending_s1) (pending_s2) (pending_s3) (pending_s4) (pending_s5)
    (pending_s6) (pending_s7) (pending_s8) (pending_s9) (pending_s10)
    (pending_s11) (pending_s12) (pending_s13) (pending_s14) (pending_s15)
    (pending_s16) (pending_s17) (pending_s18) (pending_s19) (pending_s20)
    (pending_s21) (pending_s22) (pending_s23) (pending_s24) (pending_s25)
    (pending_s26) (pending_s27) (pending_s28) (pending_s29) (pending_s30)
    (pending_s31) (pending_s32) (pending_s33) (pending_s34) (pending_s35)
    (pending_s36) (pending_s37) (pending_s38) (pending_s39) (pending_s40)
    (pending_s41) (pending_s42) (pending_s43) (pending_s44) (pending_s45)
    (pending_s46) (pending_s47) (pending_s48) (pending_s49) (pending_s50)
  )

  (:goal (and
    ;; require every step be done
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5)
    (done_s6) (done_s7) (done_s8) (done_s9) (done_s10)
    (done_s11) (done_s12) (done_s13) (done_s14) (done_s15)
    (done_s16) (done_s17) (done_s18) (done_s19) (done_s20)
    (done_s21) (done_s22) (done_s23) (done_s24) (done_s25)
    (done_s26) (done_s27) (done_s28) (done_s29) (done_s30)
    (done_s31) (done_s32) (done_s33) (done_s34) (done_s35)
    (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (done_s41) (done_s42) (done_s43) (done_s44) (done_s45)
    (done_s46) (done_s47) (done_s48) (done_s49) (done_s50)
    ;; final semantic predicate to enforce full causal chain
    (done_s48)
  ))
)
