(define (domain fundraising)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (sweets_baked)
               (fundraiser_setup)
               (page_sent)
               (money_collected)
               (repeat_done)
               (table_setup)
               (goods_offered))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration 18000
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sweets_baked))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (fundraiser_setup))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (fundraiser_setup)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (page_sent))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s))
                    (at start (page_sent))
                    (at start (goods_offered)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (money_collected))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration 1728000
    :condition (and (at start (step_pending ?s))
                    (at start (money_collected)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (repeat_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s))
                    (at start (sweets_baked)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (table_setup))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s))
                    (at start (table_setup)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (goods_offered))))
)