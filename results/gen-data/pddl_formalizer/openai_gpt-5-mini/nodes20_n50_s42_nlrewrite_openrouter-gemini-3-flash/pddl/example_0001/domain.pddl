(define (domain space_mission)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each step action
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
    (s16_complete)
    (s17_complete)
    (s18_complete)
    (s19_complete)
    (s20_complete)

    ; predicates to bind actions to their corresponding step objects
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
  )

  ; One durative-action per step. Each action removes the pending flag at start,
  ; requires all predecessor semantic predicates (as given in dependency analysis)
  ; and produces step_done and its unique semantic predicate at end.

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (s8_complete))
      (at start (s13_complete))
      (at start (s10_complete))
      (at start (s2_complete))
      (at start (s6_complete))
      (at start (s17_complete))
      (at start (s16_complete))
      (at start (s20_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_complete))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (s6_complete))
      (at start (s17_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_complete))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (s2_complete))
      (at start (s4_complete))
      (at start (s6_complete))
      (at start (s17_complete))
      (at start (s15_complete))
      (at start (s13_complete))
      (at start (s16_complete))
      (at start (s20_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_complete))
    )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (s15_complete))
      (at start (s13_complete))
      (at start (s16_complete))
      (at start (s20_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_complete))
    )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_complete))
    )
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s6_complete))
    )
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (s14_complete))
      (at start (s18_complete))
      (at start (s16_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s7_complete))
    )
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (s10_complete))
      (at start (s2_complete))
      (at start (s6_complete))
      (at start (s17_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s8_complete))
    )
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s9_complete))
    )
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (s2_complete))
      (at start (s6_complete))
      (at start (s17_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s10_complete))
    )
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (s7_complete))
      (at start (s12_complete))
      (at start (s14_complete))
      (at start (s18_complete))
      (at start (s16_complete))
      (at start (s5_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s11_complete))
    )
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s12_complete))
    )
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (s16_complete))
      (at start (s20_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s13_complete))
    )
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (s18_complete))
      (at start (s16_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s14_complete))
    )
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (s13_complete))
      (at start (s16_complete))
      (at start (s20_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s15_complete))
    )
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s16_complete))
    )
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s17_complete))
    )
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (s16_complete))
      (at start (s5_complete))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s18_complete))
    )
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (s12_complete))
      (at start (s9_complete))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s19_complete))
    )
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s20_complete))
    )
  )
)
