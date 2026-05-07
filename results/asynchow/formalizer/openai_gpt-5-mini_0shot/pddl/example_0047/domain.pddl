(define (domain try_hairstyle)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates produced by each action
    (ask_done)
    (browse_done)
    (snapshot_done)
    (appoint_done)
    (drive_done)
    (show_done)

    ;; per-step identity predicates to bind one action to exactly one step object
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
  )

  ;; Action 1: ask others for opinions (1800s)
  (:durative-action do_ask
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ask_done))
    )
  )

  ;; Action 2: browse style (7200s)
  (:durative-action do_browse
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (browse_done))
    )
  )

  ;; Action 3: get snapshot (300s) requires step1 and step2
  (:durative-action do_snapshot
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (ask_done)) (at start (browse_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (snapshot_done))
    )
  )

  ;; Action 4: make appointment (300s) requires snapshot_done
  (:durative-action do_appoint
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (snapshot_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (appoint_done))
    )
  )

  ;; Action 5: drive to salon (600s) requires appoint_done
  (:durative-action do_drive
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (appoint_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drive_done))
    )
  )

  ;; Action 6: show picture and discuss (600s) requires drive_done
  (:durative-action do_show
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (drive_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (show_done))
    )
  )
)
