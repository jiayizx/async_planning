(define (domain batter_asynchronous)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending step)
    (step_done step)
    (clean_done)
    (butter_melted)
    (batter_stirred)
    (dry_sifted)
    (tools_gathered)
    (griddle_preheated)
    (liquids_poured)
    (eggs_whisked)
    (flour_measured)
    (mixture_resting)
    (milk_measured)
    (powder_measured)
    (date_checked)
    (folded)
    (countertop_sanitized)
    (bowls_laid)
    (vanilla_added)
    (butter_whisked_in)
    (whites_separated)
    (utensils_cleaned))

  (:durative-action do_step1 :duration 600
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (clean_done))))

  (:durative-action do_step2 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (eggs_whisked)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (butter_melted))))

  (:durative-action do_step3 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (butter_whisked_in)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (batter_stirred))))

  (:durative-action do_step4 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (tools_gathered)) 
                    (at start (countertop_sanitized)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (dry_sifted))))

  (:durative-action do_step5 :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (tools_gathered))))

  (:durative-action do_step6 :duration 480
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (mixture_resting)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (griddle_preheated))))

  (:durative-action do_step7 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (milk_measured)) 
                    (at start (powder_measured)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (liquids_poured))))

  (:durative-action do_step8 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (flour_measured)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (eggs_whisked))))

  (:durative-action do_step9 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (dry_sifted)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (flour_measured))))

  (:durative-action do_step10 :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (vanilla_added)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (mixture_resting))))

  (:durative-action do_step11 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (date_checked)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (milk_measured))))

  (:durative-action do_step12 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (dry_sifted)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (powder_measured))))

  (:durative-action do_step13 :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (date_checked))))

  (:durative-action do_step14 :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (liquids_poured)) 
                    (at start (bowls_laid)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (folded))))

  (:durative-action do_step15 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (milk_measured)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (countertop_sanitized))))

  (:durative-action do_step16 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (clean_done)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (bowls_laid))))

  (:durative-action do_step17 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (butter_melted)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (vanilla_added))))

  (:durative-action do_step18 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (butter_melted)) 
                    (at start (folded)) 
                    (at start (whites_separated)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (butter_whisked_in))))

  (:durative-action do_step19 :duration 180
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (whites_separated))))

  (:durative-action do_step20 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) 
                    (at start (butter_melted)) 
                    (at start (mixture_resting)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (utensils_cleaned))))
)