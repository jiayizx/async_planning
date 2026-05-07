(define (problem make-teabag-enrichment)
  (:domain teabag-enrichment)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step
  )

  (:init
    ;; All "pending" predicates must start true (per requirement)
    (pending_s1) (pending_s2) (pending_s3) (pending_s4) (pending_s5)
    (pending_s6) (pending_s7) (pending_s8) (pending_s9) (pending_s10)
    (pending_s11) (pending_s12) (pending_s13) (pending_s14) (pending_s15)
    (pending_s16) (pending_s17) (pending_s18) (pending_s19) (pending_s20)
    (pending_s21) (pending_s22) (pending_s23) (pending_s24) (pending_s25)
    (pending_s26) (pending_s27) (pending_s28) (pending_s29) (pending_s30)
    (pending_s31) (pending_s32) (pending_s33) (pending_s34) (pending_s35)
    (pending_s36) (pending_s37) (pending_s38) (pending_s39) (pending_s40)
  )

  (:goal (and
    ;; All steps must be completed, and the final semantic predicate enforces
    ;; that the causal chain leading to application (step31) actually occurs.
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6) (done_s7) (done_s8)
    (done_s9) (done_s10) (done_s11) (done_s12) (done_s13) (done_s14) (done_s15) (done_s16)
    (done_s17) (done_s18) (done_s19) (done_s20) (done_s21) (done_s22) (done_s23) (done_s24)
    (done_s25) (done_s26) (done_s27) (done_s28) (done_s29) (done_s30) (done_s31) (done_s32)
    (done_s33) (done_s34) (done_s35) (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (enrichment_finished)
  ))
)
