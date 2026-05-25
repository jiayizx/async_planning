(define (domain job_interview)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (resume_printed)
    (outfit_ready)
    (briefcase_packed)
    (alarm_set)
    (route_mapped)
    (shoes_out)
    (phone_charged)
    (dressed)
    (breakfast_eaten)
    (weather_checked)
    (time_confirmed)
    (deodorant_applied)
    (id_checked)
    (wallet_keys_located)
    (linkedin_reviewed)
    (mirror_checked)
    (shoes_shined)
    (teeth_brushed)
    (task_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (briefcase_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resume_printed))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_ready))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ready)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (briefcase_packed))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alarm_set))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (time_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (route_mapped))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_out))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_charged))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (shoes_shined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_eaten))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (linkedin_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (time_confirmed))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deodorant_applied))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (wallet_keys_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (id_checked))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_keys_located))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (linkedin_reviewed))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (id_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_checked))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shoes_out)) (at start (time_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_shined))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ready)) (at start (phone_charged)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (task_done))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (breakfast_eaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed))))
)