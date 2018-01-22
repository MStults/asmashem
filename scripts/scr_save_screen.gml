if !directory_exists(working_directory + "\Screeens")
{
    directory_create(working_directory + "\Screeens")
}

var num;
num = 0;

var file = working_directory + "\Screeens\Screen_" + string(num) + ".png";

while file_exists(file)
{
    num += 1;
    file = working_directory + "\Screeens\Screen_" + string(num) + ".png";
}

screen_save(file);

return file;
