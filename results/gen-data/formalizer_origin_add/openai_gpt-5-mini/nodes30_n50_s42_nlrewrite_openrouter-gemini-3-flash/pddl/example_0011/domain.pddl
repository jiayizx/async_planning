(define (domain make_pet_bed)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; binding predicates to identify which action applies to which step object
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)

    ; unique semantic predicates for each step (take a step as parameter)
    (done1 ?s - step) (done2 ?s - step) (done3 ?s - step) (done4 ?s - step) (done5 ?s - step)
    (done6 ?s - step) (done7 ?s - step) (done8 ?s - step) (done9 ?s - step) (done10 ?s - step)
    (done11 ?s - step) (done12 ?s - step) (done13 ?s - step) (done14 ?s - step) (done15 ?s - step)
    (done16 ?s - step) (done17 ?s - step) (done18 ?s - step) (done19 ?s - step) (done20 ?s - step)
    (done21 ?s - step) (done22 ?s - step) (done23 ?s - step) (done24 ?s - step) (done25 ?s - step)
    (done26 ?s - step) (done27 ?s - step) (done28 ?s - step) (done29 ?s - step) (done30 ?s - step)
  )

  ; one durative-action per step; each action is parameterized by a step object ?s

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)) (at start (done10 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1 ?s)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2 ?s)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)) (at start (done8 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3 ?s)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)) (at start (done3 ?s)) (at start (done6 ?s)) (at start (done8 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4 ?s)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)) (at start (done3 ?s)) (at start (done19 ?s)) (at start (done17 ?s)) (at start (done8 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5 ?s)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)) (at start (done8 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6 ?s)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (done15 ?s)) (at start (done24 ?s)) (at start (done29 ?s)) (at start (done6 ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done3 ?s)) (at start (done8 ?s)) (at start (done27 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7 ?s)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)) (at start (done10 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8 ?s)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)) (at start (done17 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9 ?s)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10 ?s)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)) (at start (done2 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11 ?s)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)) (at start (done16 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12 ?s)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s)) (at start (done7 ?s)) (at start (done28 ?s)) (at start (done23 ?s)) (at start (done20 ?s)) (at start (done27 ?s)) (at start (done29 ?s)) (at start (done6 ?s)) (at start (done8 ?s)) (at start (done15 ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done24 ?s)) (at start (done25 ?s)) (at start (done26 ?s)) (at start (done2 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13 ?s)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)) (at start (done21 ?s)) (at start (done7 ?s)) (at start (done24 ?s)) (at start (done15 ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done3 ?s)) (at start (done8 ?s)) (at start (done27 ?s)) (at start (done29 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14 ?s)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15 ?s)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16 ?s)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)) (at start (done8 ?s)) (at start (done10 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17 ?s)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)) (at start (done2 ?s)) (at start (done25 ?s)) (at start (done26 ?s)) (at start (done10 ?s)) (at start (done27 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18 ?s)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s)) (at start (done3 ?s)) (at start (done17 ?s)) (at start (done8 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19 ?s)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20 ?s)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s)) (at start (done2 ?s)) (at start (done3 ?s)) (at start (done7 ?s)) (at start (done8 ?s)) (at start (done10 ?s)) (at start (done27 ?s)) (at start (done29 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21 ?s)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22 ?s)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s)) (at start (done20 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23 ?s)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)) (at start (done15 ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24 ?s)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s)) (at start (done20 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25 ?s)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)) (at start (done2 ?s)) (at start (done6 ?s)) (at start (done14 ?s)) (at start (done21 ?s)) (at start (done7 ?s)) (at start (done24 ?s)) (at start (done12 ?s)) (at start (done16 ?s)) (at start (done29 ?s)) (at start (done8 ?s)) (at start (done10 ?s)) (at start (done27 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26 ?s)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27 ?s)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s)) (at start (done9 ?s)) (at start (done17 ?s)) (at start (done23 ?s)) (at start (done20 ?s)) (at start (done27 ?s)) (at start (done8 ?s)) (at start (done30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28 ?s)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s)) (at start (done10 ?s)) (at start (done27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29 ?s)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30 ?s)))
  )
)
