(define (domain puzzle1)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (hint_seen)
    (policeman_got)
    (chef_got)
    (doctor_got)
    (fireman_got)
    (object_dragged)
    (level_completed))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (hint_seen))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_seen)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (policeman_got))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_seen)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (chef_got))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_seen)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (doctor_got))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_seen)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (fireman_got))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s))
                    (at start (policeman_got))
                    (at start (chef_got))
                    (at start (doctor_got))
                    (at start (fireman_got)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (object_dragged))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (object_dragged)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (level_completed))))
)