(define (domain put_on_left_sock)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates (unique per action)
    (grabbed_sock)
    (sat_down)
    (foot_raised)
    (opening_pulled)
    (sock_fully_on)
  )

  ;; Action for Step 1: Grab sock with both hands. (1s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grabbed_sock))
    )
  )

  ;; Action for Step 2: Sit down on the nearest comfortable surface. (5s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sat_down))
    )
  )

  ;; Action for Step 3: Raise left foot slightly upwards. (1s)
  ;; Requires Step1 and Step2 semantic predicates
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (and (step_pending ?s) (grabbed_sock) (sat_down)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (foot_raised))
    )
  )

  ;; Action for Step 4: Pull opening of the sock over toes. (1s)
  ;; Requires Step3 semantic predicate
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (and (step_pending ?s) (foot_raised)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (opening_pulled))
    )
  )

  ;; Action for Step 5: Pull backwards until sock covers left foot. (1s)
  ;; Requires Step4 semantic predicate
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (and (step_pending ?s) (opening_pulled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sock_fully_on))
    )
  )
)
