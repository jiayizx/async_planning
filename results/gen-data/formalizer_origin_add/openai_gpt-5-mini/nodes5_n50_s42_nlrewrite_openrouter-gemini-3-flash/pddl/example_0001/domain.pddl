(define (domain introduce_friends)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (introductions_done)
  )

  ;; Step 1: Send out a group calendar invite (600s)
  (:durative-action do_step1_send_calendar_invite
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s3_done))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_done))
            )
  )

  ;; Step 2: Research a lively local restaurant (1800s)
  (:durative-action do_step2_research_restaurant
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_done))
            )
  )

  ;; Step 3: Create a group chat for the initial introductions (300s)
  (:durative-action do_step3_create_group_chat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_done))
            )
  )

  ;; Step 4: Call the restaurant to make a reservation (900s)
  (:durative-action do_step4_call_restaurant
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s2_done))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_done))
            )
  )

  ;; Step 5: Host the dinner party and facilitate introductions (10800s)
  (:durative-action do_step5_host_dinner
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s1_done))
                 (at start (s2_done))
                 (at start (s3_done))
                 (at start (s4_done))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (introductions_done))
            )
  )
)
