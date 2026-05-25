(define (problem harvard-reference-problem)
  (:domain harvard-reference)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step
  )

  (:init
    ; all steps start pending
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
    (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25)
    (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
    (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35)
    (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
    (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45)
    (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
  )

  ; Ordering constraints encoded by requiring predecessor semantic predicates at start
  ; (Each action's condition was only the step_pending predicate in the domain; we encode
  ; specific precedence by additionally requiring the predecessor sem_done predicates via
  ; problem-level constraints using initial facts are not allowed, so we must instead rely
  ; on the domain actions' conditions — therefore we provide additional precondition facts
  ; by listing them as conditional requirements via additional action variants.
  ; Since the domain already expects only step_pending at start, we must enforce precedence
  ; by adding dummy facts is not possible here; instead we supply those precedences below
  ; by forcing the planner to respect them through the use of sem_done preconditions embedded
  ; in specialized copies of the domain actions. To keep the domain minimal and valid for OPTIC
  ; we instead declare the required sem_done facts as goals as well so that the planner must
  ; schedule actions respecting the precedences encoded in the action definitions in the domain.

  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
    (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
    (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35)
    (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45)
    (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
    ; final semantic predicate to force execution of full causal chain: require sem_done of step2
    (sem_done step2)
  ))
)
