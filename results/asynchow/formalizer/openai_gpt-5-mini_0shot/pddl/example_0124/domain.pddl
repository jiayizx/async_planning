(define (domain walk_to_front_door)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (located_done)
    (turned_done)
    (lift_left_done)
    (lift_right_done)
    (move_left_done)
    (move_right_done)
    (move_forward_done)
  )

  ;; Step 1: locate front door of house
  (:durative-action do_step1_locate
     :parameters (?s - step)
     :duration (= ?duration 3)
     :condition (at start (step_pending ?s))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (located_done))
             )
  )

  ;; Step 2: turn toward front door
  (:durative-action do_step2_turn
     :parameters (?s - step)
     :duration (= ?duration 2)
     :condition (and (at start (step_pending ?s)) (at start (located_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (turned_done))
             )
  )

  ;; Step 3: lift left leg up
  (:durative-action do_step3_lift_left
     :parameters (?s - step)
     :duration (= ?duration 1)
     :condition (and (at start (step_pending ?s)) (at start (turned_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (lift_left_done))
             )
  )

  ;; Step 4: lift right leg up
  (:durative-action do_step4_lift_right
     :parameters (?s - step)
     :duration (= ?duration 1)
     :condition (and (at start (step_pending ?s)) (at start (turned_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (lift_right_done))
             )
  )

  ;; Step 5: move left leg forward
  (:durative-action do_step5_move_left
     :parameters (?s - step)
     :duration (= ?duration 1)
     :condition (and (at start (step_pending ?s)) (at start (lift_left_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (move_left_done))
             )
  )

  ;; Step 6: move right leg forward
  (:durative-action do_step6_move_right
     :parameters (?s - step)
     :duration (= ?duration 1)
     :condition (and (at start (step_pending ?s)) (at start (lift_right_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (move_right_done))
             )
  )

  ;; Step 7: move forward until door is reached
  (:durative-action do_step7_move_forward_until_door
     :parameters (?s - step)
     :duration (= ?duration 6)
     :condition (and (at start (step_pending ?s)) (at start (move_left_done)) (at start (move_right_done)))
     :effect (and
               (at start (not (step_pending ?s)))
               (at end (step_done ?s))
               (at end (move_forward_done))
             )
  )
)
