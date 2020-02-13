///scr_answers_list()
ds_list_clear(answers_list);
for(var a=0; a<array_length_2d(answers, asked_question_id); a++){
answers_list[|a] = answers[asked_question_id, a];

}
return answers_list;