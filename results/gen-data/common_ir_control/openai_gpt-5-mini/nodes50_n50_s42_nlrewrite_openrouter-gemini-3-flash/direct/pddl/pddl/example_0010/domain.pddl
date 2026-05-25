(define (domain invest-silver)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; unique semantic predicates for each step
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6) (done_s7) (done_s8) (done_s9) (done_s10)
    (done_s11) (done_s12) (done_s13) (done_s14) (done_s15) (done_s16) (done_s17) (done_s18) (done_s19) (done_s20)
    (done_s21) (done_s22) (done_s23) (done_s24) (done_s25) (done_s26) (done_s27) (done_s28) (done_s29) (done_s30)
    (done_s31) (done_s32) (done_s33) (done_s34) (done_s35) (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (done_s41) (done_s42) (done_s43) (done_s44) (done_s45) (done_s46) (done_s47) (done_s48) (done_s49) (done_s50)
  )

  ; One durative-action per step
  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (done_s14)) (at start (done_s24)) (at start (done_s45)) (at start (done_s19)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (done_s5)) (at start (done_s15)) (at start (done_s50)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step5)) (at start (done_s7)) (at start (done_s17)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step6)) (at start (done_s19)) (at start (done_s32)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step8)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done_s17)) (at start (done_s19)) (at start (done_s20)) (at start (done_s46)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (done_s5)) (at start (done_s19)) (at start (done_s25)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (at start (step_pending step11))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done_s11))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done_s15)) (at start (done_s21)) (at start (done_s30)) (at start (done_s33)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done_s12))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 14400)
    :condition (at start (step_pending step13))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done_s13))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step14)) (at start (done_s18)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done_s14))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step15)) (at start (done_s2)) (at start (done_s21)) (at start (done_s22)) (at start (done_s26)) (at start (done_s40)) (at start (done_s35)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done_s15))
    )
  )

  (:durative-action do_step16
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step16)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done_s16))
    )
  )

  (:durative-action do_step17
    :duration (= ?duration 604800)
    :condition (at start (step_pending step17))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done_s17))
    )
  )

  (:durative-action do_step18
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step18)) (at start (done_s12)) (at start (done_s46)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done_s18))
    )
  )

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (at start (step_pending step19))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done_s19))
    )
  )

  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step20)) (at start (done_s25)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done_s20))
    )
  )

  (:durative-action do_step21
    :duration (= ?duration 2700)
    :condition (at start (step_pending step21))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (done_s21))
    )
  )

  (:durative-action do_step22
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step22)) (at start (done_s13)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (done_s22))
    )
  )

  (:durative-action do_step23
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step23)) (at start (done_s4)) (at start (done_s26)) (at start (done_s27)) (at start (done_s48)) (at start (done_s44)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (done_s23))
    )
  )

  (:durative-action do_step24
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step24)) (at start (done_s11)) (at start (done_s17)) (at start (done_s39)) (at start (done_s14)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (done_s24))
    )
  )

  (:durative-action do_step25
    :duration (= ?duration 7200)
    :condition (at start (step_pending step25))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (done_s25))
    )
  )

  (:durative-action do_step26
    :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (done_s26))
    )
  )

  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (at start (step_pending step27))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (done_s27))
    )
  )

  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (done_s18)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (done_s28))
    )
  )

  (:durative-action do_step29
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (done_s12)) (at start (done_s33)) (at start (done_s37)) (at start (done_s48)) (at start (done_s50)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (done_s29))
    )
  )

  (:durative-action do_step30
    :duration (= ?duration 5400)
    :condition (at start (step_pending step30))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (done_s30))
    )
  )

  (:durative-action do_step31
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (done_s15)) (at start (done_s35)))
    :effect (and
      (at start (not (step_pending step31)))
      (at end (step_done step31))
      (at end (done_s31))
    )
  )

  (:durative-action do_step32
    :duration (= ?duration 1800)
    :condition (at start (step_pending step32))
    :effect (and
      (at start (not (step_pending step32)))
      (at end (step_done step32))
      (at end (done_s32))
    )
  )

  (:durative-action do_step33
    :duration (= ?duration 3600)
    :condition (at start (step_pending step33))
    :effect (and
      (at start (not (step_pending step33)))
      (at end (step_done step33))
      (at end (done_s33))
    )
  )

  (:durative-action do_step34
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step34)) (at start (done_s15)) (at start (done_s17)) (at start (done_s32)) (at start (done_s35)))
    :effect (and
      (at start (not (step_pending step34)))
      (at end (step_done step34))
      (at end (done_s34))
    )
  )

  (:durative-action do_step35
    :duration (= ?duration 10800)
    :condition (at start (step_pending step35))
    :effect (and
      (at start (not (step_pending step35)))
      (at end (step_done step35))
      (at end (done_s35))
    )
  )

  (:durative-action do_step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (done_s2)) (at start (done_s16)) (at start (done_s30)) (at start (done_s40)))
    :effect (and
      (at start (not (step_pending step36)))
      (at end (step_done step36))
      (at end (done_s36))
    )
  )

  (:durative-action do_step37
    :duration (= ?duration 10800)
    :condition (at start (step_pending step37))
    :effect (and
      (at start (not (step_pending step37)))
      (at end (step_done step37))
      (at end (done_s37))
    )
  )

  (:durative-action do_step38
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (done_s44)))
    :effect (and
      (at start (not (step_pending step38)))
      (at end (step_done step38))
      (at end (done_s38))
    )
  )

  (:durative-action do_step39
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (done_s11)) (at start (done_s30)))
    :effect (and
      (at start (not (step_pending step39)))
      (at end (step_done step39))
      (at end (done_s39))
    )
  )

  (:durative-action do_step40
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step40)) (at start (done_s13)))
    :effect (and
      (at start (not (step_pending step40)))
      (at end (step_done step40))
      (at end (done_s40))
    )
  )

  (:durative-action do_step41
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)) (at start (done_s10)) (at start (done_s23)))
    :effect (and
      (at start (not (step_pending step41)))
      (at end (step_done step41))
      (at end (done_s41))
    )
  )

  (:durative-action do_step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (done_s15)) (at start (done_s25)) (at start (done_s28)))
    :effect (and
      (at start (not (step_pending step42)))
      (at end (step_done step42))
      (at end (done_s42))
    )
  )

  (:durative-action do_step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (done_s36)) (at start (done_s30)) (at start (done_s40)))
    :effect (and
      (at start (not (step_pending step43)))
      (at end (step_done step43))
      (at end (done_s43))
    )
  )

  (:durative-action do_step44
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step44)) (at start (done_s47)))
    :effect (and
      (at start (not (step_pending step44)))
      (at end (step_done step44))
      (at end (done_s44))
    )
  )

  (:durative-action do_step45
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step45)) (at start (done_s33)) (at start (done_s44)) (at start (done_s50)))
    :effect (and
      (at start (not (step_pending step45)))
      (at end (step_done step45))
      (at end (done_s45))
    )
  )

  (:durative-action do_step46
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step46)) (at start (done_s48)))
    :effect (and
      (at start (not (step_pending step46)))
      (at end (step_done step46))
      (at end (done_s46))
    )
  )

  (:durative-action do_step47
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step47)) (at start (done_s25)))
    :effect (and
      (at start (not (step_pending step47)))
      (at end (step_done step47))
      (at end (done_s47))
    )
  )

  (:durative-action do_step48
    :duration (= ?duration 18000)
    :condition (at start (step_pending step48))
    :effect (and
      (at start (not (step_pending step48)))
      (at end (step_done step48))
      (at end (done_s48))
    )
  )

  (:durative-action do_step49
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step49)) (at start (done_s27)) (at start (done_s44)) (at start (done_s48)))
    :effect (and
      (at start (not (step_pending step49)))
      (at end (step_done step49))
      (at end (done_s49))
    )
  )

  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (at start (step_pending step50))
    :effect (and
      (at start (not (step_pending step50)))
      (at end (step_done step50))
      (at end (done_s50))
    )
  )
)
