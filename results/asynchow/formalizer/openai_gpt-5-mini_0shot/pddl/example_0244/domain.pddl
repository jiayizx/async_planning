(define (domain dress-metal-girls)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
  )

  ; Step 1: Cover your jacket, clothing, and bag with pins and buttons. (10 min = 600 s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (done4)) (at start (done5)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (done1))
            )
  )

  ; Step 2: Accessorize your wrists with leather, studded, or chain bracelets. (5 min = 300 s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (done2))
            )
  )

  ; Step 3: Pick thick metal necklaces or chokers to accessorize your neck. (3 min = 180 s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (done3))
            )
  )

  ; Step 4: Wear a studded leather belt at your waist or hips. (2 min = 120 s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (done4))
            )
  )

  ; Step 5: Carry a black leather, studded or personalized bag. (5 min = 300 s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (done5))
            )
  )
)
