(define (domain book-report-brainstorm)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step)
    (is_step29 ?s - step) (is_step30 ?s - step) (is_step31 ?s - step) (is_step32 ?s - step)
    (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39)
    (brainstorm_topics_finalized)
  )

  (:durative-action identify_recurring_motifs
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (done3)) (at start (done6)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))
  (:durative-action select_primary_novel
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))
  (:durative-action draft_symbolic_objects
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))
  (:durative-action summarize_protagonist_growth
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (done16)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4))))
  (:durative-action research_historical_context
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))
  (:durative-action compare_themes_to_modern_issues
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (done17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))
  (:durative-action check_out_author_biography
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))
  (:durative-action interview_classmate
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (done19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))
  (:durative-action skim_introduction_foreword
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))
  (:durative-action analyze_climax
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (done2)) (at start (done35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))
  (:durative-action create_character_mind_map
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (done5)) (at start (done15)) (at start (done25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))
  (:durative-action list_major_settings
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12))))
  (:durative-action write_potential_titles
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (done36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))
  (:durative-action find_literary_critiques
    :parameters (?s - step) :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (done6)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14))))
  (:durative-action buy_sticky_notes
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
  (:durative-action compare_hero_villain
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16))))
  (:durative-action read_first_three_chapters
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17))))
  (:durative-action synthesize_rough_thesis
    :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (done10)) (at start (done20)) (at start (done21)) (at start (done34)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18))))
  (:durative-action watch_documentary
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19))))
  (:durative-action brainstorm_discussion_questions
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (done37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20))))
  (:durative-action define_vocabulary
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (done6)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21))))
  (:durative-action highlight_setting_quotes
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22))))
  (:durative-action search_book_podcast
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23))))
  (:durative-action read_jacket_notes
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24))))
  (:durative-action evaluate_middle_pacing
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25))))
  (:durative-action categorize_ideas
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (done1)) (at start (done11)) (at start (done21)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26))))
  (:durative-action record_voice_memo
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27))))
  (:durative-action transcribe_voice_memo
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (done27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28))))
  (:durative-action ask_teacher_about_rubric
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (done8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29))))
  (:durative-action organize_workspace
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (done39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30))))
  (:durative-action print_instructions
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (done12)) (at start (done24)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31))))
  (:durative-action select_final_three_ideas
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (done33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32))))
  (:durative-action review_brainstormed_concepts
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33))))
  (:durative-action outline_supporting_evidence
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (done21)) (at start (done26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34))))
  (:durative-action summarize_resolution
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (done19)) (at start (done20)) (at start (done23)) (at start (done24)) (at start (done26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35))))
  (:durative-action search_metaphors
    :parameters (?s - step) :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (done9)) (at start (done38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36))))
  (:durative-action borrow_book
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37))))
  (:durative-action reflect_on_ending
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38))))
  (:durative-action purchase_notebook
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39))))
  (:durative-action finalize_brainstormed_topics
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (done21)) (at start (done26)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brainstorm_topics_finalized))))
)