(define (domain make-punch-domain)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each action
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (punch_ready)
  )

  ; Step 1: Wash and slice the fresh strawberries and oranges (600s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_finished))
            )
  )

  ; Step 2: Pour the chilled mixture into the large crystal punch bowl (120s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_finished)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_finished))
            )
  )

  ; Step 3: Combine the fruit juices and ginger ale in a large pitcher (300s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_finished))
            )
  )

  ; Step 4: Place the sliced fruit into the juice mixture to infuse (1800s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s1_finished)) (at start (s3_finished)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_finished))
            )
  )

  ; Step 5: Add decorative ice rings to the bowl just before serving (60s)
  ; This action produces the final semantic predicate 'punch_ready'
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s4_finished)) (at start (s2_finished)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (punch_ready))
            )
  )
)
