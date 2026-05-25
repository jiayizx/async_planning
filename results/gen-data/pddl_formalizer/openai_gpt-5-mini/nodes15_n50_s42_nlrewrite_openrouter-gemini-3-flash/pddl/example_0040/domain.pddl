(define (domain pico_de_gallo)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
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
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (done9)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (done5)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (done1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (done1)) (at start (done3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (done2)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (done3)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
)
