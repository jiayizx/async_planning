(define (domain grab_paper)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (paper_loaded ?s - step)
    (walked_to_door ?s - step)
    (searched_shelf ?s - step)
    (closet_unlocked ?s - step)
    (logged_withdrawal ?s - step)
    (checked_map ?s - step)
    (paper_pulled ?s - step)
    (printer_empty ?s - step)
    (pen_found ?s - step)
    (manager_located ?s - step)
    (test_printed ?s - step)
    (paper_type_determined ?s - step)
    (dept_code_written ?s - step)
    (key_signed_out ?s - step)
    (stock_doubted ?s - step)
    (acid_free_verified ?s - step)
    (custodian_asked ?s - step)
    (walked_to_storage ?s - step)
    (inventory_checked ?s - step)
    (printer_on ?s - step))
  (:durative-action do_step1 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (printer_empty ?s)) (at start (key_signed_out ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_loaded ?s))))
  (:durative-action do_step2 :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walked_to_door ?s))))
  (:durative-action do_step3 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (closet_unlocked ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (searched_shelf ?s))))
  (:durative-action do_step4 :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (walked_to_door ?s)) (at start (paper_type_determined ?s)) (at start (custodian_asked ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (closet_unlocked ?s))))
  (:durative-action do_step5 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (pen_found ?s)) (at start (dept_code_written ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logged_withdrawal ?s))))
  (:durative-action do_step6 :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (stock_doubted ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checked_map ?s))))
  (:durative-action do_step7 :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (searched_shelf ?s)) (at start (walked_to_storage ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_pulled ?s))))
  (:durative-action do_step8 :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printer_empty ?s))))
  (:durative-action do_step9 :duration 20
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pen_found ?s))))
  (:durative-action do_step10 :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manager_located ?s))))
  (:durative-action do_step11 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (acid_free_verified ?s)) (at start (printer_on ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (test_printed ?s))))
  (:durative-action do_step12 :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_type_determined ?s))))
  (:durative-action do_step13 :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dept_code_written ?s))))
  (:durative-action do_step14 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (manager_located ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (key_signed_out ?s))))
  (:durative-action do_step15 :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stock_doubted ?s))))
  (:durative-action do_step16 :duration 40
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (searched_shelf ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (acid_free_verified ?s))))
  (:durative-action do_step17 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (stock_doubted ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (custodian_asked ?s))))
  (:durative-action do_step18 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (checked_map ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walked_to_storage ?s))))
  (:durative-action do_step19 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (paper_type_determined ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inventory_checked ?s))))
  (:durative-action do_step20 :duration 2
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printer_on ?s))))
)