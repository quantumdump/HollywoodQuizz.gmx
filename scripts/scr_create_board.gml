///scr_create_board()
ds_list_shuffle(actors_list);
//Create objects
grid_width = GRID_WIDTH;
grid_height = ceil(array_height_2d(actors)/grid_width);
actor_count=0;
var start_point_x = START_POINT_X;
var start_point_y = START_POINT_Y;
var all_sprites_width = sprite_get_width(spr_actors);
var all_sprites_height = sprite_get_height(spr_actors);
for(var h=0; h<grid_height; h++){
for(var w=0; w<grid_width; w++){
if(actor_count>array_height_2d(actors)-1){
break;
}
new_actor[actors_list[|actor_count]] = instance_create(start_point_x+w*all_sprites_width, start_point_y+h*all_sprites_height, obj_actor);
new_actor[actors_list[|actor_count]].my_id = actors_list[|actor_count];
new_actor[actors_list[|actor_count]].my_sprite_id = actors[actors_list[|actor_count], 1];
new_actor[actors_list[|actor_count]].my_name = actors[actors_list[|actor_count], 0];
new_actor[actors_list[|actor_count]].visible = false;
actor_count+=1;
}
}