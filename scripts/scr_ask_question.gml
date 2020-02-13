///scr_ask_question()

asked_question_id = all_q_list[|ask_count];
answer=asked_question_id;////EXMPL
question_asked = true;
question_answered = false;
if(ask_count<array_length_1d(questions)){
ask_count++;
}else{
//Go to win room and save all data
room_goto(rm_game_over);

}
b_b_count=0;

