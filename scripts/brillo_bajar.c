int main(int argc, char *argv[]){

	char cmd[]  = "echo $((#-1)) | tee /sys/class/backlight/acpi_video0/brightness";
	cmd[8] = argv[1][0];
	system(cmd);
}
