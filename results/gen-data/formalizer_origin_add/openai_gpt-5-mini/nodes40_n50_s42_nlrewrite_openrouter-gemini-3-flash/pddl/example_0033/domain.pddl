(define (domain teabag-enrichment)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending_s1) (done_s1)
    (pending_s2) (done_s2)
    (pending_s3) (done_s3)
    (pending_s4) (done_s4)
    (pending_s5) (done_s5)
    (pending_s6) (done_s6)
    (pending_s7) (done_s7)
    (pending_s8) (done_s8)
    (pending_s9) (done_s9)
    (pending_s10) (done_s10)
    (pending_s11) (done_s11)
    (pending_s12) (done_s12)
    (pending_s13) (done_s13)
    (pending_s14) (done_s14)
    (pending_s15) (done_s15)
    (pending_s16) (done_s16)
    (pending_s17) (done_s17)
    (pending_s18) (done_s18)
    (pending_s19) (done_s19)
    (pending_s20) (done_s20)
    (pending_s21) (done_s21)
    (pending_s22) (done_s22)
    (pending_s23) (done_s23)
    (pending_s24) (done_s24)
    (pending_s25) (done_s25)
    (pending_s26) (done_s26)
    (pending_s27) (done_s27)
    (pending_s28) (done_s28)
    (pending_s29) (done_s29)
    (pending_s30) (done_s30)
    (pending_s31) (done_s31)
    (pending_s32) (done_s32)
    (pending_s33) (done_s33)
    (pending_s34) (done_s34)
    (pending_s35) (done_s35)
    (pending_s36) (done_s36)
    (pending_s37) (done_s37)
    (pending_s38) (done_s38)
    (pending_s39) (done_s39)
    (pending_s40) (done_s40)
    (enrichment_finished)
  )

  ;; NOTE: Each durative action corresponds to one step. Preconditions reflect the
  ;; dependency relations. Some incorrect / cyclic prerequisites in the supplied
  ;; precomputed dependency set were corrected (see problem file comment).

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (pending_s1))
    :effect (and (at start (not (pending_s1))) (at end (done_s1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending_s2)) (at start (done_s3)) (at start (done_s22)) (at start (done_s1)) (at start (done_s32)))
    :effect (and (at start (not (pending_s2))) (at end (done_s2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s3)) (at start (done_s1)) (at start (done_s32)))
    :effect (and (at start (not (pending_s3))) (at end (done_s3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s4)) (at start (done_s32)))
    :effect (and (at start (not (pending_s4))) (at end (done_s4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending_s5)) (at start (done_s27)))
    :effect (and (at start (not (pending_s5))) (at end (done_s5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    ;; Fixed: removed an incorrect prerequisite on done_s9 that created a cycle.
    :condition (and (at start (pending_s6)) (at start (done_s18)) (at start (done_s1)))
    :effect (and (at start (not (pending_s6))) (at end (done_s6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending_s7)) (at start (done_s1)) (at start (done_s18)))
    :effect (and (at start (not (pending_s7))) (at end (done_s7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending_s8)) (at start (done_s9)))
    :effect (and (at start (not (pending_s8))) (at end (done_s8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    ;; Fixed: removed an incorrect prerequisite on done_s18 (which produced a cycle).
    ;; Kept done_s39 as per original ordering (Step39 must precede Step9).
    :condition (and (at start (pending_s9)) (at start (done_s39)) (at start (done_s1)))
    :effect (and (at start (not (pending_s9))) (at end (done_s9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s10)) (at start (done_s16)) (at start (done_s32)))
    :effect (and (at start (not (pending_s10))) (at end (done_s10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending_s11)) (at start (done_s25)) (at start (done_s9)) (at start (done_s12)))
    :effect (and (at start (not (pending_s11))) (at end (done_s11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (pending_s12)) (at start (done_s9)) (at start (done_s1)))
    :effect (and (at start (not (pending_s12))) (at end (done_s12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s13)) (at start (done_s2)) (at start (done_s8)))
    :effect (and (at start (not (pending_s13))) (at end (done_s13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending_s14)) (at start (done_s17)) (at start (done_s18)) (at start (done_s24)))
    :effect (and (at start (not (pending_s14))) (at end (done_s14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending_s15)) (at start (done_s9)))
    :effect (and (at start (not (pending_s15))) (at end (done_s15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending_s16)) (at start (done_s6)) (at start (done_s11)) (at start (done_s25)) (at start (done_s32)))
    :effect (and (at start (not (pending_s16))) (at end (done_s16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending_s17)) (at start (done_s4)))
    :effect (and (at start (not (pending_s17))) (at end (done_s17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending_s18)) (at start (done_s23)) (at start (done_s1)) (at start (done_s32)))
    :effect (and (at start (not (pending_s18))) (at end (done_s18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending_s19)) (at start (done_s24)))
    :effect (and (at start (not (pending_s19))) (at end (done_s19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s20)) (at start (done_s6)) (at start (done_s30)))
    :effect (and (at start (not (pending_s20))) (at end (done_s20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (pending_s21)) (at start (done_s1)))
    :effect (and (at start (not (pending_s21))) (at end (done_s21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending_s22)) (at start (done_s32)))
    :effect (and (at start (not (pending_s22))) (at end (done_s22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s23)) (at start (done_s40)) (at start (done_s8)) (at start (done_s1)))
    :effect (and (at start (not (pending_s23))) (at end (done_s23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (pending_s24))
    :effect (and (at start (not (pending_s24))) (at end (done_s24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending_s25))
    :effect (and (at start (not (pending_s25))) (at end (done_s25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending_s26)) (at start (done_s3)) (at start (done_s12)) (at start (done_s28)))
    :effect (and (at start (not (pending_s26))) (at end (done_s26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending_s27))
    :effect (and (at start (not (pending_s27))) (at end (done_s27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_s28))
    :effect (and (at start (not (pending_s28))) (at end (done_s28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending_s29)) (at start (done_s7)))
    :effect (and (at start (not (pending_s29))) (at end (done_s29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s30)) (at start (done_s2)) (at start (done_s14)))
    :effect (and (at start (not (pending_s30))) (at end (done_s30)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s31)) (at start (done_s1)) (at start (done_s30)) (at start (done_s38)))
    :effect (and (at start (not (pending_s31))) (at end (done_s31)) (at end (enrichment_finished)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending_s32))
    :effect (and (at start (not (pending_s32))) (at end (done_s32)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending_s33)) (at start (done_s35)) (at start (done_s36)) (at start (done_s23)))
    :effect (and (at start (not (pending_s33))) (at end (done_s33)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (pending_s34)) (at start (done_s21)) (at start (done_s25)))
    :effect (and (at start (not (pending_s34))) (at end (done_s34)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s35)) (at start (done_s36)))
    :effect (and (at start (not (pending_s35))) (at end (done_s35)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending_s36)) (at start (done_s34)))
    :effect (and (at start (not (pending_s36))) (at end (done_s36)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending_s37)) (at start (done_s39)) (at start (done_s14)))
    :effect (and (at start (not (pending_s37))) (at end (done_s37)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending_s38)) (at start (done_s32)))
    :effect (and (at start (not (pending_s38))) (at end (done_s38)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (pending_s39))
    :effect (and (at start (not (pending_s39))) (at end (done_s39)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending_s40))
    :effect (and (at start (not (pending_s40))) (at end (done_s40)))
  )
)
