(define (domain heartburn_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
    (done16)
    (done17)
    (done18)
    (done19)
    (done20)
    (done21)
    (done22)
    (done23)
    (done24)
    (done25)
    (done26)
    (done27)
    (done28)
    (done29)
    (done30)
  )

  ; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (done13)) (at start (done15)) (at start (done17)) (at start (done5)) (at start (done28)) (at start (done29)) (at start (done22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1)))
  )

  ; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  ; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  ; Step 4
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  ; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  ; Step 6
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  ; Step 7
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  ; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done19)) (at start (done21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  ; Step 9
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (done6)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  ; Step 10
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  ; Step 11
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (done14)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  ; Step 12
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (done3)) (at start (done8)) (at start (done19)) (at start (done21)) (at start (done23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  ; Step 13
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (done15)) (at start (done17)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  ; Step 14
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  ; Step 15
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (done17)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )

  ; Step 16
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (done10)) (at start (done23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16)))
  )

  ; Step 17
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17)))
  )

  ; Step 18
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18)))
  )

  ; Step 19
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19)))
  )

  ; Step 20
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (done11)) (at start (done14)) (at start (done5)) (at start (done28)) (at start (done29)) (at start (done27)) (at start (done23)) (at start (done13)) (at start (done1)) (at start (done3)) (at start (done4)) (at start (done11)) (at start (done12)) (at start (done15)) (at start (done16)) (at start (done17)) (at start (done22)) (at start (done24)) (at start (done25)) (at start (done26)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20)))
  )

  ; Step 21
  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done26)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21)))
  )

  ; Step 22
  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (done11)) (at start (done14)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22)))
  )

  ; Step 23
  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (done11)) (at start (done14)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23)))
  )

  ; Step 24
  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done13)) (at start (done15)) (at start (done17)) (at start (done5)) (at start (done28)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24)))
  )

  ; Step 25
  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done29)) (at start (done13)) (at start (done15)) (at start (done17)) (at start (done5)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25)))
  )

  ; Step 26
  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26)))
  )

  ; Step 27
  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27)))
  )

  ; Step 28
  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28)))
  )

  ; Step 29
  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29)))
  )

  ; Step 30
  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done1)) (at start (done2)) (at start (done23)) (at start (done28)) (at start (done13)) (at start (done15)) (at start (done17)) (at start (done5)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30)))
  )
)
